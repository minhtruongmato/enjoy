<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>homepage.css">
<style type="text/css">
    .error{
        color: red;
    }
</style>
<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <?php if ($this->session->flashdata('auth_message')): ?>
                    <div class="alert alert-success alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <h4><i class="icon fa fa-warning"></i> Alert!</h4>
                        <?php echo $this->session->flashdata('auth_message'); ?>
                    </div>
                <?php endif ?>
                <h1 style="text-align: center;">Register</h1>
                <?php echo form_open('', array('class' => 'form-horizontal')); ?>
                    <div class="form-group">
                        <?php echo form_label('First Name:','first_name').'<br />'; ?>
                        <?php echo form_error('first_name', '<div class="error">', '</div>'); ?>
                        <?php echo form_input('first_name',set_value('first_name'), 'class="form-control"').'<br />'; ?>
                    </div>
                    <div class="form-group">
                        <?php echo form_label('Last Name:','last_name').'<br />'; ?>
                        <?php echo form_error('last_name', '<div class="error">', '</div>'); ?>
                        <?php echo form_input('last_name',set_value('last_name'), 'class="form-control"').'<br />'; ?>
                    </div>
                    <div class="form-group">
                        <?php echo form_label('User Name:','username').'<br />'; ?>
                        <?php echo form_error('username', '<div class="error">', '</div>'); ?>
                        <?php echo form_input('username',set_value('username'), 'class="form-control"').'<br />'; ?>
                    </div>
                    <div class="form-group">
                        <?php echo form_label('Email:','email').'<br />'; ?>
                        <?php echo form_error('email', '<div class="error">', '</div>'); ?>
                        <?php echo form_input('email',set_value('email'), 'class="form-control"').'<br />'; ?>
                    </div>
                    <div class="form-group">
                        <?php echo form_label('Password:', 'password').'<br />'; ?>
                        <?php echo form_error('password', '<div class="error">', '</div>'); ?>
                        <?php echo form_password('password', '','class="form-control"').'<br />'; ?>
                    </div>
                    <div class="form-group">
                        <?php echo form_label('Confirm Password:', 'confirm_password').'<br />'; ?>
                        <?php echo form_error('confirm_password', '<div class="error">', '</div>'); ?>
                        <?php echo form_password('confirm_password', '','class="form-control"').'<br /><br />'; ?>
                    </div>
                    <?php echo form_submit('submit','Register', 'class="btn btn-primary btn-lg btn-block"').'<br /><br />'; ?>
                <?php echo form_close(); ?>
            </div>
        </div>
    </section>
</div>