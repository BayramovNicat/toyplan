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

/* @var $this yii\web\View */
/* @var $model frontend\models\Service */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="service-form">
    
    <?php $form = ActiveForm::begin(); ?>
    
    <div class="row">
    
        <div class="col-md-6">
            <?= $form->field($model, 'slug')->textInput(['maxlength' => true]) ?>
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
        </div>
        
        <div class="col-md-6">
            <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>
            <?= $form->field($model, 'phone')->textInput(['maxlength' => true]) ?>
            <?= $form->field($model, 'socials')->textarea(['rows' => 6]) ?>
        </div>
    
    </div>
    <div class="row">
        <div class="col-md-12">
            <?= FileInput::widget([
                'model' => $model,
                'attribute' => 'img',
                'name' => 'img',
                'language' => 'ru',
                'options' => ['multiple' => true],
                'pluginOptions' => [
                    'previewFileType' => 'image',
                    'overwriteInitial'=>false,
                    'uploadUrl' => Url::to(['/media/file-upload']),
                    'initialPreview'=>[
                        Html::img("/images/moon.jpg", ['class'=>'file-preview-image', 'alt'=>'The Moon', 'title'=>'The Moon']).'<div class="file-thumbnail-footer">
    <div class="file-footer-caption" title="novitec-torado-lamborghini-1276.jpg">novitec-torado-lamborghini-1276.jpg</div>
    <div class="file-thumb-progress hide"><div class="progress">
    <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:0%;">
        0%
     </div>
</div></div> <div class="file-actions">
    <div class="file-footer-buttons">
<button type="button" class="kv-file-remove btn btn-xs btn-default" title="Удалить файл"><i class="glyphicon glyphicon-trash text-danger"></i></button>
    </div>
    <div class="file-upload-indicator" title="Загруженный файл"><i class="glyphicon glyphicon-ok text-success"></i></div>
    <div class="clearfix"></div>
</div>
</div>',
                        Html::img("/images/earth.jpg",  ['class'=>'file-preview-image', 'alt'=>'The Earth', 'title'=>'The Earth']),
                    ],
                ]
            ]); ?>
        </div>
        <div class="col-md-12">
            <?= $form->field($model, 'description')->textarea(['rows' => 6 ,'class' => 'tinymce']) ?>
        </div>
    </div>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>