<?php


namespace app\models;

use yii\base\Model;
use yii\db\ActiveRecord;
use yii\db\mssql\PDO;

class CategoriesList extends ActiveRecord
{

    public static function tableName()
    {
        return 'products_categories';
    }

    public function rules() {
        return [
            ['categories', 'required']
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


//    I've been trying to do something like this but really struggled to figure it out.
//    public static function insertArray() {
//        foreach($model->categories as $category) {
//            Yii::$app->db->query(insert($category));
//        }
//    }
}
