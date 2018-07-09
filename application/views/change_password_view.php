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
                <h1 style="text-align: center;">Change Password</h1>
                <?php echo form_open('', array('class' => 'form-horizontal')); ?>
                <div class="form-group">
                    <?php echo form_label('Old Password: ', 'old_password'); ?>
                    <?php echo form_error('old_password', '<div class="error">', '</div>'); ?>
                    <?php echo form_password('old_password', '', 'class="form-control"'); ?>
                </div>
                <div class="form-group">
                    <?php echo form_label('New Password (At least 8 characters): ', 'new_password'); ?>
                    <?php echo form_error('new_password', '<div class="error">', '</div>'); ?>
                    <?php echo form_password('new_password', '', 'class="form-control"'); ?>
                </div>
                <div class="form-group">
                    <?php echo form_label('Confirm New Password: ', 'new_confirm'); ?>
                    <?php echo form_error('new_confirm', '<div class="error">', '</div>'); ?>
                    <?php echo form_password('new_confirm', '', 'class="form-control"'); ?>
                </div>
                <?php echo form_hidden('user_id', $user_id);?>
                <div class="form-group">
                    <?php echo form_submit('submit', 'Change Password', 'class="btn btn-primary btn-lg btn-block"'); ?>
                </div>

                <?php echo form_close(); ?>
            </div>
        </div>
    </section>
</div>
