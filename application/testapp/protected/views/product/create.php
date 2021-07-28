<h2>New Product</h2>

<div class="actionBar">
[<?php echo CHtml::link('Product List',array('list')); ?>]
[<?php echo CHtml::link('Manage Product',array('admin')); ?>]
</div>

<?php echo $this->renderPartial('_form', array(
	'model'=>$model,
	'update'=>false,
)); ?>