<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php echo $this->config->item('site_name');?> | </title>
  <link href="<?php echo $this->config->item('base_url');?>css/bootstrap.min.css" rel="stylesheet">
  <link href="<?php echo $this->config->item('base_url');?>fonts/css/font-awesome.min.css" rel="stylesheet">
  <link href="<?php echo $this->config->item('base_url');?>css/animate.min.css" rel="stylesheet">
  <link href="<?php echo $this->config->item('base_url');?>css/custom.css" rel="stylesheet">
  <link href="<?php echo $this->config->item('base_url');?>css/icheck/flat/green.css" rel="stylesheet">
  <script src="<?php echo $this->config->item('base_url');?>js/jquery.min.js"></script>
</head>
<body style="background:#F7F7F7;">

  <div class="">
    <a class="hiddenanchor" id="toregister"></a>
    <a class="hiddenanchor" id="tologin"></a>
    <div id="wrapper">
      <div id="login" class="animate form">
          <?php if ($this->session->userdata('alert')) { echo $this->session->userdata('alert'); }?>
        <section class="login_content">
            <form>
            <h1>Đăng Nhập</h1>
            <div>
              <input type="text" class="form-control" placeholder="Tên Người Dùng" required="" />
            </div>
            <div>
              <input type="password" class="form-control" placeholder="Mật Khẩu" required="" />
            </div>
            <div>
              <a class="btn btn-default submit" href="<?php echo $this->config->item('base_url');?>index.php/login/signin">Vào</a>
              <a class="reset_pass" href="#">Quên mật khẩu?</a>
            </div>
            <div class="clearfix"></div>
            <div class="separator">
              <div class="clearfix"></div>
              <div>
                <h1><i class="fa fa-plane" style="font-size: 26px;"></i> <?php echo $this->config->item('site_name');?>!</h1>
                <p><?php echo $this->config->item('license');?></p>
              </div>
            </div>
          </form>
        </section>
      </div>
    </div>
  </div>
</body>
</html>
