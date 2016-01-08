<?php

namespace backend\controllers;

use Yii;
use frontend\models\Media;
use backend\models\MediaSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
/**
 * MediaController implements the CRUD actions for Media model.
 */
class MediaController extends Controller
{
    
    public $enableCsrfValidation = false;
    
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all Media models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new MediaSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Media model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Media model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Media();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Media model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }


    public function actionFileUpload()
    {
        $filename = 'file';
        $this->enableCsrfValidation = false;
        $model = new Media;
        $image = UploadedFile::getInstance($modell, 'img');
        print_r($image);
        // if ($model->load(Yii::$app->request->post())) {
        //     // get the uploaded file instance. for multiple file uploads
        //     // the following data will return an array
        //     $image = UploadedFile::getInstance($model, 'image');

        //     // store the source file name
        //     $model->filename = $image->name;
        //     $ext = end((explode(".", $image->name)));

        //     // generate a unique file name
        //     $model->avatar = Yii::$app->security->generateRandomString().".{$ext}";

        //     // the path to save file, you can set an uploadPath
        //     // in Yii::$app->params (as used in example below)
        //     $path = Yii::$app->params['uploadPath'] . $model->avatar;

        //     if($model->save()){
        //         $image->saveAs($path);
        //         return $this->redirect(['view', 'id'=>$model->_id]);
        //     } else {
        //         // error in saving model
        //     }
        // }
        
    }
    /**
     * Deletes an existing Media model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Media model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Media the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Media::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
