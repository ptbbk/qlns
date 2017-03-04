<div class="col-md-3 left_col">
    <div class="left_col scroll-view" style="overflow: hidden; cursor: grab;" tabindex="5000">
      <div class="navbar nav_title" style="border: 0;">
        <a href="<?php echo $this->config->item('base_url');?>" class="site_title"><i class="fa fa-plane"></i> <span><?php echo $this->config->item('site_name');?></span></a>
      </div>
        <div class="clearfix" style="background-color:#d9d9d9">&nbsp;</div>
      <br>
      <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
        <div class="menu_section">
          <ul class="nav side-menu">
            <?php
                foreach($menus as $menu){
                    if(is_array($menu[2])){
                        echo '<li><a><i class="fa fa-'.$menu[1].'"></i> '.$menu[0].' <span class="fa fa-chevron-down"></span></a>';
                        echo '<ul class="nav child_menu" style="display: none;">';
                        foreach($menu[2] as $item){
                            echo '<li><a href="'.$this->config->item('base_url').$item[1].'">'.$item[0].'</a></li>';
                        }
                        echo '</ul></li>';
                    }else{
                        echo '<li class="active"><a href="'.$this->config->item('base_url').$menu[2].'"><i class="fa fa-'.$menu[1].'"></i>'.$menu[0].'</a></li>';
                    }
                }
            ?>
          </ul>
        </div>
      </div>
      <div class="sidebar-footer hidden-small">
        <a data-toggle="tooltip" data-placement="top" title="" data-original-title="Settings">
          <span class="glyphicon glyphicon-cog" aria-hidden="true"></span></a>
        <a data-toggle="tooltip" data-placement="top" title="" data-original-title="FullScreen">
          <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span></a>
        <a data-toggle="tooltip" data-placement="top" title="" data-original-title="Lock">
          <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span></a>
        <a data-toggle="tooltip" data-placement="top" title="" data-original-title="Logout">
          <span class="glyphicon glyphicon-off" aria-hidden="true"></span></a>
      </div>
    </div>
</div>