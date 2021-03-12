<?php


namespace app\models;

use yii\db\ActiveRecord;

class Categories extends ActiveRecord
{
    public static function tableName()
    {
        return 'categories';
    }

    public function rules() {
        return [
            [['category'], 'required'],
            [['category'], 'match', 'pattern' => '/^[A-Z][a-z]+$/']
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