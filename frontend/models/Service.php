<?php

namespace frontend\models;
use common\models\User;

use Yii;

/**
 * This is the model class for table "service".
 *
 * @property integer $id
 * @property integer $category_id
 * @property integer $owner
 * @property string $can_reserve
 * @property string $name
 * @property string $slug
 * @property string $phone
 * @property string $mobil
 * @property string $img
 * @property string $description
 * @property string $socials
 * @property string $adress
 * @property string $longlat
 * @property string $status
 */
class Service extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'service';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['category_id', 'owner', 'can_reserve', 'name', 'slug', 'phone', 'mobil', 'img', 'description', 'socials', 'adress', 'longlat'], 'required'],
            [['category_id', 'owner'], 'integer'],
            [['can_reserve', 'description', 'socials', 'status'], 'string'],
            [['name', 'slug', 'img'], 'string', 'max' => 100],
            [['phone', 'mobil', 'adress', 'longlat'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'category_id' => 'Category ID',
            'owner' => 'Owner',
            'can_reserve' => 'Can Reserve',
            'name' => 'Name',
            'slug' => 'Slug',
            'phone' => 'Phone',
            'mobil' => 'Mobil',
            'img' => 'Img',
            'description' => 'Description',
            'socials' => 'Socials',
            'adress' => 'Adress',
            'longlat' => 'Longlat',
            'status' => 'Status',
        ];
    }
    
    public function getCategory()
    {
        return Category::find()->where(['id'=>$this->category_id])->one();
    }
    
    public function getMedia()
    {
        return Media::find()->where(['service_id'=>$this->id])->all();
    }
    
    public function getOwnerUser()
    {
        return User::find()->where(['id'=>$this->owner])->one();
    }
}
