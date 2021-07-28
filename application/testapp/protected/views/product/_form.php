<div class="yiiForm">

<p>
Fields with <span class="required">*</span> are required.
</p>

<?php echo CHtml::beginForm(); ?>

<?php echo CHtml::errorSummary($model); ?>

<div class="simple">
<?php echo CHtml::activeLabelEx($model,'pname'); ?>
<?php echo CHtml::activeTextField($model,'pname',array('size'=>60,'maxlength'=>255)); ?>
</div>
<div class="simple">
<?php echo CHtml::activeLabelEx($model,'pquantity'); ?>
<?php echo CHtml::activeTextField($model,'pquantity'); ?>
</div>
<div class="simple">
<?php echo CHtml::activeLabelEx($model,'pdescription'); ?>
<?php echo CHtml::activeTextField($model,'pdescription',array('size'=>60,'maxlength'=>255)); ?>
</div>

<div class="action">
<?php echo CHtml::submitButton($update ? 'Save' : 'Create'); ?>
</div>

<?php echo CHtml::endForm(); ?>

</div><!-- yiiForm -->