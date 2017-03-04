<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php echo $title;?></title>
  <?php
  foreach($css as $file){
      echo '<link href="'.$this->config->item('base_url').$file.'" rel="stylesheet">'."\r\n";
  }?>
  <script src="<?php echo $this->config->item('base_url')?>js/jquery.min.js"></script>
</head>
<body class="nav-md">
  <div class="container body">
    <div class="main_container">
        <?php if($left) echo $left ;?>
        <?php if($topnav) echo $topnav ;?>
      <div class="right_col" role="main" style="min-height: 665px;">
        <?php if($middle) echo $middle ;?>
        <?php if($footer) echo $footer ;?>
      </div>
    </div>
  </div>
  <div id="custom_notifications" class="custom-notifications dsp_none">
    <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
    </ul>
    <div class="clearfix"></div>
    <div id="notif-group" class="tabbed_notifications"></div>
  </div>
          <?php
        foreach($js as $file){
            echo '<script src="'.$this->config->item('base_url').$file.'"></script>'."\r\n";
        }?>
        
</html>
