<?php

use yii\helpers\Url;
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use app\models\Products;
use app\models\Categories;

$this->title = 'Add Products';

?>

<h1>Insert New Product</h1>

<?php

$model = new Products();
$items = Categories::find()->select(['category'])->indexBy('id')->column();
var_dump($items);
$form = ActiveForm::begin([
'id' => 'add-products-form',
'options' => ['class' => 'input-form'],
]) ?>
<?= $form->field($model, 'name') ?>
<?= $form->field($model, 'price') ?>
<?= $form->field($model, 'image') ?>
<?= $form->field($model, 'quantity') ?>
<?= $form->field($model, 'categories')->checkboxList($items) ?>

<div class="form-group">
    <div class="col-lg-offset-1 col-lg-11">
        <?= Html::submitButton('Add Product', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>
</div>

<?php ActiveForm::end() ?>

<br><br><br><br>
<h2>Add New Category</h2>

<?php

$model = new Categories();

$form = ActiveForm::begin([
'id' => 'add-category-form',
'options' => ['class' => 'input-form'],
]) ?>
<?= $form->field($model, 'category') ?>

<div class="form-group">
    <div class="col-lg-offset-1 col-lg-11">
        <?= Html::submitButton('Add Category', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>
</div>

<?php ActiveForm::end() ?>









