<!-- app/View/Users/add.ctp -->
<div class="users form">

<?php echo $this->Form->create('User');?>
    <fieldset>
        <legend><?php echo __('Register'); ?></legend>
        <?php echo $this->Form->input('username');
		echo $this->Form->input('email');
        echo $this->Form->input('password');
		echo $this->Form->input('password_confirm', array('label' => 'Confirm Password *', 'maxLength' => 255, 'title' => 'Confirm password', 'type'=>'password'));
        echo $this->Form->input('role', array(
            'options' => array( 'visitor'=>'Visitor','staff'=>'Staff')
        ));
		
		echo $this->Form->submit('Register Users', array('class' => 'form-submit',  'title' => 'Click here to add the user') ); 
?>
    </fieldset>
<?php echo $this->Form->end(); ?>
</div>

<?php 
if($this->Session->check('Auth.User')){
echo $this->Html->link( "Return to Dashboard",   array('action'=>'index') ); 
echo "<br>";
echo $this->Html->link( "Logout",   array('action'=>'logout') ); 
}else{
echo $this->Html->link( "Return to Login Screen",   array('action'=>'login') ); 
}
?> 