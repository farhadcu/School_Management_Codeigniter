<link href="<?=base_url()?>template/css/hover.css" type="text/css" rel="stylesheet">
<div class="box box-border">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">
			<li class="active">
            	<a href="#process" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo translate('Result Process ');?>
                    	</a></li>
			
		</ul>
    	<!------CONTROL TABS END------->
        
	</div>
	<div class="box-content padded">
		<div class="tab-content">            
                      
			<!----CREATION attendance1 FORM STARTS---->
			<div class="tab-pane box active" id="" style="padding: 5px">
                <div class="box-content">
					<?php echo form_open('admin/result_process/process/',array('id'=>'process_form'));?>
					                <table border="0" cellspacing="0" cellpadding="0" class="table">
					                	<tr>
					                        <td><?php echo translate('select_class');?></td>
					                        <td>&nbsp;</td>
					                	</tr>
					                	<tr>
					                        <td>
					                        	<select name="class_id" class="" required="">
					                                <option value=""><?php echo translate('select_a_class');?></option>
					                                <?php 
					                                $classes = $this->db->get('class')->result_array();
					                                foreach($classes as $row):
					                                ?>
					                                    <option value="<?php echo $row['class_id'];?>"
					                                        <?php if($class_id == $row['class_id'])echo 'selected';?>>Class <?php echo $row['name'];?></option>
					                                <?php
					                                endforeach;
					                                ?>
					                            </select>
					                        </td>
					                        <td> 
												<button type="submit" class="btn btn-normal btn-gray">
													<?=translate('Process Result')?>
												</button>
					                        </td>
					                	</tr>
					                </table>
					                </form>
                </div>                
			</div>
		</div>
	</div>
</div>
<?php
$this->load->view('loading',array('message'=>"Processing Result.Please wait...."));
?>
<script>
	$("#process_form").submit(function(e)
	{
		e.preventDefault();
		var param=$(this).serialize();
		$("#loading").show();
		$.ajax({
			url:"<?=site_url('admin/result_process/process')?>",
			data:param,
			type:"post",
			success:function(msg)
			{
			//	alert(msg);
				$("#loading").hide();
				Growl.info({title:"Info",text:"Result Process Completed."});
			},
			 error: function(jqXHR, exception)
			 {
			 	//alert(exception);
			 }
		});
	});
	function start_process()
	{
		
	}
	/*function check_status()
	{
			var msg="<?php $this->session->userdata('status'); ?>";
			$("#loading_message").html(msg);
	}*/
</script>