<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "media".
 *
 * @property integer $id
 * @property integer $service_id
 * @property string $img
 * @property string $video
 * @property string $type
 * @property string $created_date
 * @property string $status
 */
class Media extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'media';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['service_id', 'img', 'type', 'status'], 'required'],
            [['service_id'], 'integer'],
            [['type', 'status'], 'string'],
            [['created_date'], 'safe'],
            [['img'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'service_id' => 'Service ID',
            'img' => 'Img',
            'video' => 'Video',
            'type' => 'Type',
            'created_date' => 'Created Date',
            'status' => 'Status',
        ];
    }
}
