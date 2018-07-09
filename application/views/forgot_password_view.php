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
                <p class="login-box-msg">Quên mật khẩu</p>

                <?php echo $this->session->flashdata('message'); ?>
                <?php echo form_open('', array('class' => 'form-horizontal')); ?>
                <div class="form-group">
                    <?php echo form_label('Email', 'email'); ?>
                    <?php echo form_error('email', '<div class="error">', '</div>'); ?>
                    <?php echo form_input('email', '', 'class="form-control"'); ?>
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
