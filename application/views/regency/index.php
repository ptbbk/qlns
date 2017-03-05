<div class="row">
	<div class="col-md-6 col-sm-6 col-xs-12">
	  <div class="x_panel">
		<div class="x_title">
		  <h2>Danh sách chức danh</h2>
		  <div class="clearfix"></div>
		</div>
		<div class="x_content"> 
       <div class="x_content">
			<table id="datatable" class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
                    <thead>
                      <tr role="row">
                          <th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 265px;" aria-label="Name: activate to sort column ascending">ID</th>
                          <th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 415px;" aria-label="Position: activate to sort column ascending">Chức danh</th>
                          <th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 415px;" aria-label="Position: activate to sort column ascending">Khối</th>
                          <th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 415px;" aria-label="Position: activate to sort column ascending">HS</th>
                          <th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 415px;" aria-label="Position: activate to sort column ascending">Người tạo</th>
                          <th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 415px;" aria-label="Position: activate to sort column ascending">Thời gian</th>
                      </tr>
                    </thead>
                    <tbody>
                         <?php //echo "<pre>";
            //print_r($query);die;
            foreach ($query_chucdanh as $item):?>
                    <tr role="row" class="odd">
                        <td class=""><?php echo $item->id;?></td>
                        <td class=""><?php echo $item->ten_chuc_danh;?></td>
                        <td class=""><?php echo $item->ten_khoi;?></td>
                        <td class=""><?php echo $item->he_so_chuc_danh;?></td>
                        <td class=""><?php echo $item->id_NguoiDung;?></td>
                        <td class=""><?php echo $item->thoi_gian_tao;?></td>
                      </tr>
                       <?php endforeach;?>
                      </tbody>
                  </table>
		
		</div> 
		</div>
	  </div>
	</div>
	<div class="col-md-6 col-sm-6 col-xs-12">
	  <div class="x_panel">
		<div class="x_title">
		  <h2>Danh sách khối chức danh</h2>
		  <div class="clearfix"></div>
		</div>
		<div class="x_content">
			<table id="datatable" class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
                    <thead>
                      <tr role="row">
                          <th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 265px;" aria-label="Name: activate to sort column ascending">ID</th>
                          <th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 415px;" aria-label="Position: activate to sort column ascending">Khối</th>
                          <th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 415px;" aria-label="Position: activate to sort column ascending">Người tạo</th>
                          <th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" style="width: 415px;" aria-label="Position: activate to sort column ascending">Thời gian</th>
                      </tr>
                    </thead>
                    <tbody>
                         <?php //echo "<pre>";
            //print_r($query);die;
            foreach ($query_khoichucdanh as $item):?>
                    <tr role="row" class="odd">
                        <td class=""><?php echo $item->id;?></td>
                        <td class=""><?php echo $item->ten_khoi;?></td>
                        <td class=""><?php echo $item->id_NguoiDung;?></td>
                        <td class=""><?php echo $item->thoi_gian_tao;?></td>
                      </tr>
                       <?php endforeach;?>
                      
                      <tr role="row" class="odd">
                        <td class=""></td>
                        <td class=""><input id="ten_khoi" required="required" class="form-control col-md-7 col-xs-12" data-parsley-id="0190" type="text"></td>
                        <td class=""><button id="btn_add" type="submit" class="btn btn-primary">Thêm</button></td>
                        <td class=""></td>
                      </tr>
                      </tbody>
                  </table>
		
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