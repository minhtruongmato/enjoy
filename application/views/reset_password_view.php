<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>homepage.css">
<link rel="stylesheet" href="<?php echo site_url('assets/lib/') ?>iCheck/square/blue.css">
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
                <p class="login-box-msg">FORGOT PASSWORD</p>

                <?php echo $this->session->flashdata('message'); ?>
                <?php echo form_open('', array('class' => 'form-horizontal')); ?>
                <div class="form-group">
                    <?php echo form_label('New Password (at least 8 characters): ', 'password'); ?>
                    <?php echo form_error('password', '<div class="error">', '</div>'); ?>
                    <?php echo form_password('password', '', 'class="form-control"'); ?>
                </div>
                <div class="form-group">
                    <?php echo form_label('Confirm Password:', 'confirm_password').'<br />'; ?>
                    <?php echo form_error('confirm_password', '<div class="error">', '</div>'); ?>
                    <?php echo form_password('confirm_password', '','class="form-control"').'<br /><br />'; ?>
                </div>
                <div class="form-group">
                    <?php echo form_submit('submit', 'Xác Nhận', 'class="btn btn-primary btn-lg btn-block"'); ?>
                </div>

        <?php echo form_close(); ?>
            </div>
        </div>
    </section>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="<?php echo site_url('assets/lib/') ?>jquery/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo site_url('assets/lib/') ?>bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="<?php echo site_url('assets/lib/') ?>iCheck/js/icheck.min.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' /* optional */
        });
    });
</script>
