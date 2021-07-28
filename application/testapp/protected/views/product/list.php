<h2>Product List</h2>

<div class="actionBar">
[<?php echo CHtml::link('New Product',array('create')); ?>]
[<?php echo CHtml::link('Manage Product',array('admin')); ?>]
</div>

<?php $this->widget('CLinkPager',array('pages'=>$pages)); ?>

<?php foreach($models as $n=>$model): ?>
<div class="item">
<?php echo CHtml::encode($model->getAttributeLabel('id')); ?>:
<?php echo CHtml::link($model->id,array('show','id'=>$model->id)); ?>
<br/>
<?php echo CHtml::encode($model->getAttributeLabel('pname')); ?>:
<?php echo CHtml::encode($model->pname); ?>
<br/>
<?php echo CHtml::encode($model->getAttributeLabel('pquantity')); ?>:
<?php echo CHtml::encode($model->pquantity); ?>
<br/>
<?php echo CHtml::encode($model->getAttributeLabel('pdescription')); ?>:
<?php echo CHtml::encode($model->pdescription); ?>
<br/>

</div>
<?php endforeach; ?>
<br/>
<?php $this->widget('CLinkPager',array('pages'=>$pages)); ?>