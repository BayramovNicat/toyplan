<?php

use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;
use frontend\models\Category;
use common\models\User;
use kartik\widgets\Select2;
use kartik\widgets\SwitchInput;
use kartik\widgets\FileInput;
use yii\helpers\Url;
use yii\helpers\VarDumper;

/* @var $this yii\web\View */
/* @var $model frontend\models\Service */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="service-form">
    
    <?php $form = ActiveForm::begin([]); ?>
    
    <div class="row">
    
        <div class="col-md-6">
            <?= $form->field($model, 'category_id')->widget(Select2::classname(), [
                'language' => 'ru',
                'data' => ArrayHelper::map(Category::find()->all(), 'id', 'name'),
                'options' => ['placeholder' => 'Выберите состояние ...'],
                'pluginOptions' => [
                    'allowClear' => true
                ],
            ]); ?>
            
            <?= $form->field($model, 'owner')->widget(Select2::classname(), [
                'language' => 'ru',
                'data' => ArrayHelper::map(User::find()->all(), 'id', 'username'),
                'options' => ['placeholder' => 'Выберите состояние ...'],
                'pluginOptions' => [
                    'allowClear' => true
                ],
            ]); ?>
            <?= $form->field($model, 'can_reserve')->widget(SwitchInput::classname(), []); ?>
            <?= $form->field($model, 'status')->widget(SwitchInput::classname(), []); ?>
            <?= $form->field($model, 'longlat')->textInput(['maxlength' => true]) ?>
            <?= $form->field($model, 'img')->widget(Select2::classname(), [
                'language' => 'ru',
                'data' => ArrayHelper::map($media, 'img', 'img'),
                'options' => ['placeholder' => 'Выберите состояние ...'],
                'pluginOptions' => [
                    'allowClear' => true
                ],
            ]); ?>
        </div>
        
        <div class="col-md-6">
            <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>
            <?= $form->field($model, 'slug')->textInput(['maxlength' => true]) ?>
            <?= $form->field($model, 'phone')->textInput(['maxlength' => true]) ?>
            <?= $form->field($model, 'mobil')->textInput(['maxlength' => true]) ?>
            <?= $form->field($model, 'adress')->textInput(['maxlength' => true]) ?>
            <?= $form->field($model, 'socials')->textarea(['rows' => 4]) ?>
        </div>
    
    </div>
    <?php 
        $Galery = [];
        
        foreach ($media as $media_item) {
            $Galery[] = Html::img('/uploads/services/'.$media_item->img, ['class'=>'file-preview-image', 'alt'=>$media_item->img, 'title'=>$media_item->img]).'<div class="file-thumbnail-footer">
                <div class="file-footer-caption" title="'.$media_item->img.'">'.$media_item->img.'</div>
                <div class="file-thumb-progress hide"><div class="progress">
                <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%;">
                    0%
                 </div>
            </div></div> <div class="file-actions">
                <div class="file-footer-buttons">
            <button type="button" class="kv-file-remove btn btn-xs btn-default" data-id="'.$media_item->id.'" title="Удалить файл"><i class="glyphicon glyphicon-trash text-danger"></i></button>
                </div>
                <div class="file-upload-indicator" title="Загруженный файл"><i class="glyphicon glyphicon-ok-sign text-success"></i></div>
                <div class="clearfix"></div>
            </div>
            </div>';
        }
    ?>
    <div class="row">
        <div class="col-md-12">
            <?= FileInput::widget([
                'name' => 'service_img',
                'language' => 'ru',
                'options' => ['multiple' => true],
                'pluginOptions' => [
                    'previewFileType' => 'image',
                    'overwriteInitial'=>false,
                    'uploadUrl' => Url::to(['/media/file-upload']),
                    'initialPreview'=>$Galery,
                ]
            ]); ?>
        </div>
        <div class="col-md-12">
            <?= $form->field($model, 'description')->textarea(['rows' => 40 ,'class' => 'tinymce']) ?>
        </div>
    </div>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>