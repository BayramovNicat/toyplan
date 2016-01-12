<?php

namespace frontend\controllers;
use frontend\models\Service;

class ServiceController extends \yii\web\Controller
{
    public function actionIndex($catslug, $slug)
    {
        $service = Service::find()->where(['slug'=>$slug])->one();
        return $this->render('index',[
            'service' => $service
        ]);
    }

}
