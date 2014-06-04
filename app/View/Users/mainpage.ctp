<div class="users form">
<?php echo $this->Session->flash('auth'); ?>
<?php echo $this->Form->create('User'); ?>
<?php echo $this->Html->css('forms'); ?>

    <fieldset>
        <legend><?php echo __('Clinic in the Park'); ?></legend>
        <legend><?php echo __('Your visits, Personalized'); ?></legend>
   
    </fieldset>
    
<?php echo $this->Html->link(
    'Visitors', '/users/login',array('class' => 'button', 'target' => '_blank')); 
?>
    
	
<?php echo $this->Html->link(
    'Staff', '/users/login1',array('class' => 'button', 'target' => '_blank'));
?>


</div>
