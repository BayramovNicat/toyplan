<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "media".
 *
 * @property integer $id
 * @property string $service_slug
 * @property string $name
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
            [['service_slug', 'name', 'img', 'video', 'type', 'status'], 'required'],
            [['type', 'status'], 'string'],
            [['created_date'], 'safe'],
            [['service_slug', 'name', 'img', 'video'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'service_slug' => 'Service Slug',
            'name' => 'Name',
            'img' => 'Img',
            'video' => 'Video',
            'type' => 'Type',
            'created_date' => 'Created Date',
            'status' => 'Status',
        ];
    }
}
