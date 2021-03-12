<?php


namespace app\models;

use yii\db\ActiveRecord;

class Products extends ActiveRecord
{

    public static function tableName()
    {
        return 'products';
    }

    public function rules() {
        return [
            [['name', 'price', 'image', 'quantity', 'categories'], 'required'],
            [['name'], 'match', 'pattern' => '/^[A-Z][a-z]+$/'],
            [['image'], 'match', 'pattern' => '/^[a-z]+$/'],
            [['price'], 'double'],
            [['quantity'], 'integer'],
        ];
    }

    public function secure()
    {
        if ($this->validate()) {
            return $this->refresh();
        } else {
            $errors = $this->errors;
        }
    }

}