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
                <h1 style="text-align: center;">Login</h1>
                <?php echo form_open('', array('class' => 'form-horizontal')); ?>
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
                    <?php echo form_submit('submit','Login', 'class="btn btn-primary btn-lg btn-block"').'<br /><br />'; ?>
                <?php echo form_close(); ?>
            </div>
        </div>
    </section>
<!-- </div> -->
<!-- <style type="text/css">
.error{
    color: red;
}
* {
    box-sizing: border-box;
}
.client-body{
    background: #3A4366;
    font-family: 'Lato', sans-serif;
}
a {
    text-decoration: none;
    color: inherit;
}
.client-body li{
    list-style: none;
}
.panel {
    
    margin: auto;
}
.panel__menu {
    width: 100%;
    float: left;
    margin: 20px 0 30px;
}
.panel__menu.second-box hr {
    -webkit-transform: translateX(325%);
    transform: translateX(325%);
}
.panel__menu hr {

    top: 100%;
    width: 20%;
    -webkit-transform: translateX(75%);
    transform: translateX(75%);
    border: none;
    background: #C8DFED;
    height: 1px;
    margin: 0;
    transition: all 0.5s;
}
.panel__menu li {
    width: 50%;
    text-align: center;
    float: left;
    cursor: pointer;
}
.panel__menu li a {
    color: #fff;
    display: inline-block;
    padding: 17px 30px;
    text-transform: uppercase;
}
.panel__wrap {
    width: 100%;
    float: left;
    position: relative;
}
.panel__wrap .panel__box label {
    opacity: 0;
}
.panel__wrap .panel__box:first-child {
    left: 0;
    -webkit-transform: translateX(30%) scale(0.8);
    transform: translateX(30%) scale(0.8);
    -webkit-animation: box-1--out 0.5s;
    animation: box-1--out 0.5s;
    -webkit-transform-origin: center right;
    transform-origin: center right;
}
.panel__wrap .panel__box:first-child.active {
    -webkit-transform: translateX(35%);
    transform: translateX(35%);
    -webkit-animation: box-1 0.5s;
    animation: box-1 0.5s;
}
.panel__wrap .panel__box:last-child {
    right: 0;
    -webkit-transform: translateX(-30%) scale(0.8);
    transform: translateX(-30%) scale(0.8);
    -webkit-animation: box-2--out 0.5s;
    animation: box-2--out 0.5s;
    -webkit-transform-origin: center left;
    transform-origin: center left;
}
.panel__wrap .panel__box:last-child input[type="submit"] {
    background: none;
    border: 1px solid #A5E434;
    color: #A5E434;
}
.panel__wrap .panel__box:last-child.active {
    -webkit-animation: box-2 0.5s;
    animation: box-2 0.5s;
    -webkit-transform: translateX(-35%);
    transform: translateX(-35%);
}
.panel__box {
    width: 50%;
    float: left;
    z-index: 1;
    background: pink;
    position: absolute;
    padding: 20px;
    background: #C8DFED;
    border-radius: 4px;
    transition: all 0.5s;
}
.panel__box.active {
    background: #fff;
    z-index: 2;
}
.panel__box.active label, .panel__box.active input {
    opacity: 1;
}
.panel__box label {
    float: left;
    width: 100%;
    margin-bottom: 20px;
    color: #a1b4b4;
}
.panel__box input {
    outline: none;
    opacity: 0;
}
.panel__box input[type="text"], .panel__box input[type="password"] {
    margin-top: 10px;
    width: 100%;
    float: left;
    background: #EEF9FE;
    border: 1px solid #CDDBEF;
    border-radius: 3px;
    padding: 7px 10px;
}
.panel__box input[type="submit"] {
    float: right;
    cursor: pointer;
    border: none;
    padding: 11px 40px;
    background: #A5E434;
    border-radius: 30px;
    color: #fff;
}

@-webkit-keyframes box-1 {
    0% {
        -webkit-transform: translateX(30%) scale(0.8);
        transform: translateX(30%) scale(0.8);
        z-index: 1;
    }
    49% {
        -webkit-transform: translateX(0) scale(0.9);
        transform: translateX(0) scale(0.9);
        z-index: 1;
    }
    50% {
        -webkit-transform: translateX(0) scale(0.9);
        transform: translateX(0) scale(0.9);
        z-index: 2;
        label, input {
          opacity: 0;
      }
  }
  100% {
    -webkit-transform: translateX(35%) scale(1);
    transform: translateX(35%) scale(1);
    z-index: 2;
    label, input {
        opacity: 1;
    }
}
}

@keyframes box-1 {
    0% {
        -webkit-transform: translateX(30%) scale(0.8);
        transform: translateX(30%) scale(0.8);
        z-index: 1;
    }
    49% {
        -webkit-transform: translateX(0) scale(0.9);
        transform: translateX(0) scale(0.9);
        z-index: 1;
    }
    50% {
        -webkit-transform: translateX(0) scale(0.9);
        transform: translateX(0) scale(0.9);
        z-index: 2;
        label, input {
          opacity: 0;
      }
  }
  100% {
    -webkit-transform: translateX(35%) scale(1);
    transform: translateX(35%) scale(1);
    z-index: 2;
    label, input {
        opacity: 1;
    }
}
}
@-webkit-keyframes box-1--out {
    0% {
        -webkit-transform: translateX(35%) scale(1);
        transform: translateX(35%) scale(1);
        z-index: 2;
        label {
          opacity: 1;
      }
  }
  49% {
    -webkit-transform: translateX(0) scale(0.9);
    transform: translateX(0) scale(0.9);
    z-index: 2;
}
50% {
    -webkit-transform: translateX(0) scale(0.9);
    transform: translateX(0) scale(0.9);
    z-index: 1;
    label, input {
        opacity: 1;
    }
}
100% {
    -webkit-transform: translateX(30%) scale(0.8);
    transform: translateX(30%) scale(0.8);
    z-index: 1;
    label, input {
        opacity: 0;
    }
}
}
@keyframes box-1--out {
    0% {
        -webkit-transform: translateX(35%) scale(1);
        transform: translateX(35%) scale(1);
        z-index: 2;
        label {
          opacity: 1;
      }
  }
  49% {
    -webkit-transform: translateX(0) scale(0.9);
    transform: translateX(0) scale(0.9);
    z-index: 2;
}
50% {
    -webkit-transform: translateX(0) scale(0.9);
    transform: translateX(0) scale(0.9);
    z-index: 1;
    label, input {
        opacity: 1;
    }
}
100% {
    -webkit-transform: translateX(30%) scale(0.8);
    transform: translateX(30%) scale(0.8);
    z-index: 1;
    label, input {
        opacity: 0;
    }
}
}
@-webkit-keyframes box-2 {
    0% {
        -webkit-transform: translateX(-30%) scale(0.8);
        transform: translateX(-30%) scale(0.8);
        z-index: 1;
    }
    49% {
        -webkit-transform: translateX(0) scale(0.9);
        transform: translateX(0) scale(0.9);
        z-index: 1;
    }
    50% {
        -webkit-transform: translateX(0) scale(0.9);
        transform: translateX(0) scale(0.9);
        z-index: 2;
        label, input {
          opacity: 0;
      }
  }
  100% {
    -webkit-transform: translateX(-35%) scale(1);
    transform: translateX(-35%) scale(1);
    z-index: 2;
    label, input {
        opacity: 1;
    }
}
}
@keyframes box-2 {
    0% {
        -webkit-transform: translateX(-30%) scale(0.8);
        transform: translateX(-30%) scale(0.8);
        z-index: 1;
    }
    49% {
        -webkit-transform: translateX(0) scale(0.9);
        transform: translateX(0) scale(0.9);
        z-index: 1;
    }
    50% {
        -webkit-transform: translateX(0) scale(0.9);
        transform: translateX(0) scale(0.9);
        z-index: 2;
        label, input {
          opacity: 0;
      }
  }
  100% {
    -webkit-transform: translateX(-35%) scale(1);
    transform: translateX(-35%) scale(1);
    z-index: 2;
    label, input {
        opacity: 1;
    }
}
}
@-webkit-keyframes box-2--out {
    0% {
        -webkit-transform: translateX(-35%) scale(1);
        transform: translateX(-35%) scale(1);
        z-index: 2;
    }
    49% {
        -webkit-transform: translateX(0) scale(0.9);
        transform: translateX(0) scale(0.9);
        z-index: 2;
    }
    50% {
        -webkit-transform: translateX(0) scale(0.9);
        transform: translateX(0) scale(0.9);
        z-index: 1;
        label, input {
          opacity: 1;
      }
  }
  100% {
    -webkit-transform: translateX(-30%) scale(0.8);
    transform: translateX(-30%) scale(0.8);
    z-index: 1;
    label, input {
        opacity: 0;
    }
}
}
@keyframes box-2--out {
    0% {
        -webkit-transform: translateX(-35%) scale(1);
        transform: translateX(-35%) scale(1);
        z-index: 2;
    }
    49% {
        -webkit-transform: translateX(0) scale(0.9);
        transform: translateX(0) scale(0.9);
        z-index: 2;
    }
    50% {
        -webkit-transform: translateX(0) scale(0.9);
        transform: translateX(0) scale(0.9);
        z-index: 1;
        label, input {
          opacity: 1;
      }
  }
  100% {
    -webkit-transform: translateX(-30%) scale(0.8);
    transform: translateX(-30%) scale(0.8);
    z-index: 1;
    label, input {
        opacity: 0;
    }
}
}
</style>

<div class="content-wrapper">
    <div class="content">
        <div class="row">
            <div class="client-body col-md-12">
                <div class="panel clo-md-12">
                    <ul class="panel__menu <?php echo ($this->uri->segment(2) == 'login')? '' : 'second-box' ?>" id="menu">
                        <hr/>
                        <li id="signIn"> <a href="#">Login</a></li>
                        <li id="signUp"><a href="#">Sign up</a></li>
                    </ul>
                    <div class="panel__wrap col-md-12" style="margin-bottom: 20px;">
                        
                        <div class="panel__box <?php echo ($this->uri->segment(2) == 'login')? 'active' : '' ?>" id="signInBox">
                            <?php echo form_open('client/login', array('class' => '')); ?>
                                <label>Email
                                    <?php echo form_input('email',set_value('email'), ''); ?>
                                    <?php echo form_error('email', '<p class="error">','</p>'); ?>
                                </label>
                                
                                <label>Password
                                    <?php echo form_password('password', '',''); ?>
                                    <?php echo form_error('password', '<p class="error">','</p>'); ?>
                                </label>
                                
                                <input type="submit"/>
                            <?php echo form_close(); ?>
                        </div>
                        
                        <div class="panel__box row <?php echo ($this->uri->segment(2) == 'register')? 'active' : '' ?>" id="signUpBox">
                            <?php echo form_open('client/register', array('class' => '')); ?>
                                <div class="col-md-6 col-xs-12">
                                    <label>First Name
                                        <?php echo form_input('first_name',set_value('first_name'), ''); ?>
                                        <?php echo form_error('first_name', '<p class="error">','</p>'); ?>
                                    </label>
                                </div>
                                <div class="col-md-6 col-xs-12">
                                    <label>Last Name
                                        <?php echo form_input('last_name',set_value('last_name'), ''); ?>
                                        <?php echo form_error('last_name', '<p class="error">','</p>'); ?>
                                    </label>
                                </div>
                                <div class="col-md-6 col-xs-12">
                                    <label>User Name
                                        <?php echo form_input('username',set_value('username'), ''); ?>
                                        <?php echo form_error('username', '<p class="error">','</p>'); ?>
                                    </label>
                                </div>
                                <div class="col-md-6 col-xs-12">
                                    <label>Email
                                        <?php echo form_input('email',set_value('email'), ''); ?>
                                        <?php echo form_error('email', '<p class="error">','</p>'); ?>
                                    </label>
                                </div>
                                <div class="col-md-6 col-xs-12">
                                <label>Password
                                    <?php echo form_password('password', '',''); ?>
                                    <?php echo form_error('password', '<p class="error">','</p>'); ?>
                                </label>
                                </div>
                                <div class="col-md-6 col-xs-12">
                                <label>Confirm password
                                    <?php echo form_password('confirm_password', '',''); ?>
                                    <?php echo form_error('confirm_password', '<p class="error">','</p>'); ?>
                                </label>
                                </div>
                                <input type="submit"/>
                            <?php echo form_close(); ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    var menu = document.getElementById('menu'),
    panelMenu = menu.querySelectorAll('li'),
    panelBoxes = document.querySelectorAll('.panel__box'),
    signUp = document.getElementById('signUp'),
    signIn = document.getElementById('signIn');

function removeSelection(){
    for(var i = 0, len = panelBoxes.length; i < len; i++){panelBoxes[i].classList.remove('active');
    }
}


signIn.onclick = function(e){
  e.preventDefault();
  removeSelection();
  panelBoxes[0].classList.add('active');
  menu.classList.remove('second-box');
}

signUp.onclick = function(e){
  e.preventDefault();
  removeSelection();
  panelBoxes[1].classList.add('active');
  menu.classList.add('second-box');
}


</script> -->