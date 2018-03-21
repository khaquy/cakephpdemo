<?php
/**
 * CakePHP(tm) : Rapid Development Framework (https://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 * @link          https://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       https://opensource.org/licenses/mit-license.php MIT License
 */

$cakeDescription = __d('cake_dev', 'CakePHP: the rapid development php framework');
$cakeVersion = __d('cake_dev', 'CakePHP %s', Configure::version())
?>
<!DOCTYPE html>
<html>
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo $cakeDescription ?>:
		<?php echo $this->fetch('title'); ?>
	</title>
	<?php
		echo $this->Html->meta('icon');

		echo $this->Html->css('cake.generic');//css cu 

		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');

 echo $this->Html->css('bootstrap.min'); 
 echo $this->Html->css('bootstrap-responsive.min'); 
 echo $this->Html->script('bootstrap.min'); 
	?>
</head>
<body>
	<div id="container">
		<div id="header">
			<h1><?php echo $this->Html->link($cakeDescription, 'https://cakephp.org'); ?></h1>
		</div>
		<div id="content">

			<?php echo $this->Flash->render(); ?>

			<?php echo $this->fetch('content'); ?>
		</div>
		<div id="footer">
			<?php echo $this->Html->link(
					$this->Html->image('cake.power.gif', array('alt' => $cakeDescription, 'border' => '0')),
					'https://cakephp.org/',
					array('target' => '_blank', 'escape' => false, 'id' => 'cake-powered')
				);
			?>
			<p>
				<?php echo $cakeVersion; ?>
			</p>
		</div>
	</div>
	<?php echo $this->element('sql_dump'); ?>


	<?php echo $this->Form->create('Sample', array('class' => 'form-horizontal')); ?>
	<fieldset>
		<legend>Extending form controls</legend>
		<?php echo $this->Form->input('field1', array(
			'label' => 'Prepended text',
			'type' => 'text',
			'class' => 'span2',
			'prepend' => '@',
			'helpBlock' => 'Here\'s some help text',
		)); ?>
		<?php echo $this->Form->input('field2', array(
			'label' => 'Appended text',
			'type' => 'text',
			'class' => 'span2',
			'append' => '.00',
			'helpInline' => 'Here\'s more help text',
		)); ?>
		<?php echo $this->Form->input('field3', array(
			'label' => 'Append and prepend',
			'type' => 'text',
			'class' => 'span2',
			'prepend' => '$',
			'append' => '.00',
		)); ?>
		<?php echo $this->Form->input('field4', array(
			'label' => 'Append with button',
			'type' => 'text',
			'class' => 'span2',
			'append' => array('Go!', array('wrap' => 'button', 'class' => 'btn')),
		)); ?>
		<?php echo $this->Form->input('field5', array(
			'label' => 'Inline checkboxes',
			'type' => 'select',
			'multiple' => 'checkbox inline',
			'options' => array('1', '2', '3'),
		)); ?>
		<?php echo $this->Form->input('field6', array(
			'label' => 'Checkboxes',
			'type' => 'select',
			'multiple' => 'checkbox',
			'options' => array(
				'1' => 'Option one is this and that¡ªbe sure to include why it\'s great',
				'2' => 'Option two can also be checked and included in form results',
				'3' => 'Option three can¡ªyes, you guessed it¡ªalso be checked and included in form results',
			),
			'helpBlock' => '<strong>Note:</strong> Labels surround all the options for much larger click areas and a more usable form.',
		)); ?>
		<?php echo $this->Form->input('field7', array(
			'label' => 'Radio buttons',
								'type' => 'radio',
			'options' => array(
				'1' => 'Option one is this and that¡ªbe sure to include why it\'s great',
				'2' => 'Option two can is something else and selecting it will deselect option one',
			),
		)); ?>
		<div class="form-actions">
			<?php echo $this->Form->submit('Save changes', array(
				'div' => false,
				'class' => 'btn btn-primary',
			)); ?>
			<button class="btn">Cancel</button>
		</div>
	</fieldset>
<?php echo $this->Form->end(); ?>
</body>
</html>
