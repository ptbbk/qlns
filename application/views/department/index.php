
	

<div class="row">
	<div class="col-md-6 col-sm-6 col-xs-12">
	  <div class="x_panel">
		<div class="x_title">
		  <h2><?php echo $title;?></h2>
		  <ul class="nav navbar-right panel_toolbox">
			<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
			</li>
			<li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
			  <ul class="dropdown-menu" role="menu">
				<li><a href="#">Settings 1</a>
				</li>
				<li><a href="#">Settings 2</a>
				</li>
			  </ul>
			</li>
			<li><a class="close-link"><i class="fa fa-close"></i></a>
			</li>
		  </ul>
		  <div class="clearfix"></div>
		</div>
		<div class="x_content"> 
	<menu id="nestable-menu">
		<button type="button" data-action="expand-all" class="btn btn-primary">Mở Rộng</button>
		<button type="button" data-action="collapse-all" class="btn btn-primary">Thu Lại</button>
    </menu>
	
        <div class="dd" id="nestable3">
            <ol class="dd-list">
                <li class="dd-item dd3-item" data-id="13">
                    <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Phòng Không Lưu</div>
                </li>
                <li class="dd-item dd3-item" data-id="14">
                    <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Phòng Kế Hoạch</div>
                </li>
                <li class="dd-item dd3-item" data-id="15">
                    <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Trung Tâm Bảo Đảm Kỹ Thuật</div>
                    <ol class="dd-list">
                        <li class="dd-item dd3-item" data-id="16">
                            <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Đội Thông Tin</div>
							<ol class="dd-list">
								<li class="dd-item dd3-item" data-id="19">
									<div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Trạm Thu</div>
								</li>
								<li class="dd-item dd3-item" data-id="20">
									<div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Trạm Phát</div>
								</li>
							</ol>
                        </li>
                        <li class="dd-item dd3-item" data-id="17">
                            <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Đội Công Nghệ Thông Tin</div>
                        </li>
                        <li class="dd-item dd3-item" data-id="18">
                            <div class="dd-handle dd3-handle">Drag</div><div class="dd3-content">Đội Đảm Bảo Kỹ Thuật Môi Trường</div>
                        </li>
                    </ol>
                </li>
            </ol>
        </div>	  
		</div>
	  </div>
	</div>
	
	
	<div class="col-md-6 col-sm-6 col-xs-12">
	  <div class="x_panel">
		<div class="x_title">
		  <h2>Thêm Mới Đơn Vị Công Tác</h2>
		  <ul class="nav navbar-right panel_toolbox">
			<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
			</li>
			<li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
			  <ul class="dropdown-menu" role="menu">
				<li><a href="#">Settings 1</a>
				</li>
				<li><a href="#">Settings 2</a>
				</li>
			  </ul>
			</li>
			<li><a class="close-link"><i class="fa fa-close"></i></a>
			</li>
		  </ul>
		  <div class="clearfix"></div>
		</div>
		<div class="x_content">
		  <br>
		  <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">

			<div class="form-group">
			  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tên Đơn Vị Công Tác <span class="required">*</span>
			  </label>
			  <div class="col-md-6 col-sm-6 col-xs-12">
				<input id="first-name" required="required" class="form-control col-md-7 col-xs-12" data-parsley-id="0190" type="text"><ul class="parsley-errors-list" id="parsley-id-0190"></ul>
			  </div>
			</div>

			<div class="form-group">
			  <label class="control-label col-md-3 col-sm-3 col-xs-12">Trực Thuộc</label>
			  <div class="col-md-6 col-sm-6 col-xs-12">
				<select class="form-control">
				  <option>Chọn</option>
				  <option>Trung Tâm Bảo Đảm Kỹ Thuật</option>
				  <option>Đội Thông Tin</option>
				  <option>Trạm Thu</option>
				  <option>Trạm Phát</option>
				</select>
			  </div>
			</div>


			<div class="ln_solid"></div>
			<div class="form-group">
			  <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
				<button type="submit" class="btn btn-primary">Hủy</button>
				<button type="submit" class="btn btn-success">Thêm Mới</button>
			  </div>
			</div>

		  </form>
		</div>
	  </div>
	</div>
  </div>
  
  
  
  
  
  
    	  
<script>
$(document).ready(function()
{
    var updateOutput = function(e)
    {
        
    };
    $('#nestable3').nestable().on('change', updateOutput);
    $('#nestable-menu').on('click', function(e)
    {
        var target = $(e.target),
            action = target.data('action');
        if (action === 'expand-all') {
            $('.dd').nestable('expandAll');
        }
        if (action === 'collapse-all') {
            $('.dd').nestable('collapseAll');
        }
    });
});
</script>