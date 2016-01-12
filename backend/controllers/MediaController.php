<?php

namespace backend\controllers;

use Yii;
use frontend\models\Media;
use backend\models\MediaSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use yii\helpers\VarDumper;
use yii\imagine\Image;
use Imagine\Gd;
use Imagine\Image\Box;
use Imagine\Image\BoxInterface;
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
        session_start();
        $this->enableCsrfValidation = false;
        $uploaddir = Yii::getAlias('@frontend/web/uploads/services/');
        $tmp_image_name = $_FILES['service_img']['tmp_name'];
        $image_name = (substr(sha1(basename($_FILES['service_img']['name']).time().rand(1000, 9999)),0,7)).basename($_FILES['service_img']['name']);
        move_uploaded_file($tmp_image_name,$uploaddir.$image_name);
        Image::getImagine()->open(Yii::getAlias('@frontend/web/uploads/services/'.$image_name))->thumbnail(new Box(500, 500))->save(Yii::getAlias('@frontend/web/uploads/services/min/'.$image_name) , ['quality' => 90]);
        
        $model = new Media();
        $model->service_id = $_SESSION['Service']['id'];
        $model->img = $image_name;
        $model->type = 'img';
        $model->created_date = date('Y-m-d h:m:s');
        $model->status = '1';
        $model->save();
        
        return $model->getPrimaryKey();
    }
    
    public function actionFileDelete()
    {
        if($_POST['id']){
            $media = Media::find($_POST['id'])->one();
            $mediaName = $media->img;
            $media->delete();
            unlink(Yii::getAlias('@frontend/web/uploads/services/').$mediaName);
            unlink(Yii::getAlias('@frontend/web/uploads/services/min/').$mediaName);
        }
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
