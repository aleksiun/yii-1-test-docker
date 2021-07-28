<h2>View Product <?php echo $model->id; ?></h2>

<div class="actionBar">
[<?php echo CHtml::link('Product List',array('list')); ?>]
[<?php echo CHtml::link('New Product',array('create')); ?>]
[<?php echo CHtml::link('Update Product',array('update','id'=>$model->id)); ?>]
[<?php echo CHtml::linkButton('Delete Product',array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure?')); ?>
]
[<?php echo CHtml::link('Manage Product',array('admin')); ?>]
</div>

<table class="dataGrid">
<tr>
	<th class="label"><?php echo CHtml::encode($model->getAttributeLabel('pname')); ?>
</th>
    <td><?php echo CHtml::encode($model->pname); ?>
</td>
</tr>
<tr>
	<th class="label"><?php echo CHtml::encode($model->getAttributeLabel('pquantity')); ?>
</th>
    <td><?php echo CHtml::encode($model->pquantity); ?>
</td>
</tr>
<tr>
	<th class="label"><?php echo CHtml::encode($model->getAttributeLabel('pdescription')); ?>
</th>
    <td><?php echo CHtml::encode($model->pdescription); ?>
</td>
</tr>
</table>
