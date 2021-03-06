<div class="box box-border">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">
			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo translate('teacher_list');?>
                    	</a></li>
			<li>
            	<a href="#add" data-toggle="tab"><i class="icon-plus"></i>
					<?php echo translate('add_teacher');?>
                    	</a></li>
		</ul>
    	<!------CONTROL TABS END------->
        
	</div>
	<div class="box-content padded">
		<div class="tab-content">
            <!----TABLE LISTING STARTS--->
            <div class="tab-pane  active" id="list">
            		<div class="action-nav-normal">
                        <div class=" action-nav-button" style="width:300px;">
                          <a href="#" title="Users">
                            <img src="<?php echo base_url();?>template/images/icons/teacher.png" />
                            <span>Total <?php echo count($teachers);?> teachers</span>
                          </a>
                        </div>
                    </div>
                    <div class="box">
                        <div class="box-content">
                            <div id="dataTables">
                            <table cellpadding="0" cellspacing="0" border="0" class="dTable responsive">
                                <thead>
                                    <tr>
                                        <th><div>ID</div></th>
                                        <th width="80"><div><?php echo translate('photo');?></div></th>
                                        <th><div><?php echo translate('teacher_name');?></div></th>
                                        <th><div><?php echo translate('designation');?></div></th>
                                        <!--<th><div><?php echo translate('qualification');?></div></th>-->
                                        <th><div><?php echo translate('experience');?></div></th>
                                         <th><div><?php echo translate('joiningDate');?></div></th>
                                        <th><div><?php echo translate('options');?></div></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $count = 1;foreach($teachers as $row):?>
                                    <tr>
                                        <td><?php echo $count++;?></td>
                                        <td><div class="avatar"><img src="<?php echo $this->crud_model->get_image_url('teacher',$row['teacher_id']);?>" class="avatar-medium" /></div></td>
                                        <td><?php echo $row['name'];?></td>
                                         <td><?php if($row['designation']) echo get_single_value('name','designation',array('id'=>$row['designation']));?></td>
                                        <!--<td><?php echo $row['qualification'];?></td>-->
                                        <td><?php echo $row['experience'];?></td>
                                        <td><?php echo $row['joiningDate'];?></td>
                                        <td align="center">
                                        
                                         <div class="btn-group action-dropdown">
											<button class="btn btn-gray btn-normal dropdown-toggle" data-toggle="dropdown">
                                          	 Action
                                            </button>                                            
                                            <ul class="dropdown-menu">
                                             <li> 
                                            <a href="<?php echo site_url('modal/popup/teacher_profile/'.$row['teacher_id'])?>"  window="new" win_height="816px" win_width="600px" target="_blank">
                                                    <i class="icon-user"></i> <?php echo translate('profile');?>
                                            </a>
                                            </li>
                                            <li>
                                            <a href="<?php echo site_url('modal/popup/edit_teacher/'.$row['teacher_id'])?>"  window="new" win_height="816px" win_width="800px" target="_blank">
                                                    <i class="icon-wrench"></i> <?php echo translate('edit');?>
                                            </a>
                                            </li>
                                            <li>
                                            <a data-toggle="modal" href="#modal-delete" onclick="modal_delete('<?php echo base_url();?>index.php?admin/teacher/delete/<?php echo $row['teacher_id'];?>')" target="_blank">
                                                    <i class="icon-trash"></i> <?php echo translate('delete');?>
                                            </a>
                                            </li>
                                            </ul>
										</div>
                                        </td>
                                    </tr>
                                    <?php endforeach;?>
                                </tbody>
                            </table>
                            </div>
                        </div>
                    </div>
			</div>
            <!----TABLE LISTING ENDS--->
            
            
			<!----CREATION FORM STARTS---->
			<div class="tab-pane box" id="add" style="padding: 5px">
                <div class="box-content">
                	<?php echo form_open('admin/teacher/create' , array('class' => 'form-horizontal validatable','target'=>'_top', 'enctype' => 'multipart/form-data'));?>
                    <form method="post" action="<?php echo base_url();?>index.php?admin/teacher/create/" class="form-horizontal validatable" enctype="multipart/form-data">
                        <div class="padded">
						
						
						    <div class="control-group">
                                <label class="control-label"><?php echo translate('employee ID');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="employee"/>
                                </div>
                            </div>
							
						
						    <div class="control-group">
                                <label class="control-label"><?php echo translate('index Number');?></label>
                                <div class="controls">
                                    <input type="number" class="" name="index"/>
                                </div>
                            </div>
							<div class="control-group">
                                <label class="control-label"><?php echo translate('Order Number');?></label>
                                <div class="controls">
                                    <input type="number" class="" name="order"/>
                                </div>
                            </div>
							
						
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('name');?></label>
                                <div class="controls">
                                    <input type="text" class="validate[required]" name="name"/>
                                </div>
                            </div>
							<input type="hidden" class="" name="qualification"/>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('educational_qualification');?></label>
                                <div class="controls">
									<table id="education">
										<tr>
											<td>
												<input type="text" class="uniform w300" name="institute[]" id="institute" placeholder="<?php echo translate('institute_name');?>" style="width: 200px;"/>			
											</td>
											<td>
												<input type="text" class="uniform w300" name="year[]" placeholder="<?php echo translate('year_of_passing');?>" style="width: 200px;"/>			
											</td>
											<td>
												<textarea class="uniform w300" name="institute_address" placeholder="<?=get_phrase('institute_address')?>"></textarea>
											</td>
											<td>
												<input type="text" class="uniform w100" name="result[]" placeholder="<?php echo translate('Result');?>" style="width: 200px;"/>			
											</td>
											<td>
												<button class="btn btn-gray addbtn" type="button">+</button>
											</td>
										</tr>
									</table>
                                </div>
                            </div>
                              
                             <div class="control-group">
                                <label class="control-label"><?php echo translate('experience');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="experience"/>
                                </div>
                            </div>
                            
							<div class="control-group">
                                    <label class="control-label"><?php echo translate('joining Date'); ?></label>
                                    <div class="controls">
                                        <input type="text" class="datepicker fill-up" name="joining"/>
                                    </div>
                            </div>
							
							<div class="control-group">
                                <label class="control-label"><?php echo translate('designation ');?></label>
                                <div class="controls">
                                    <select name="designation" class="uniform" style="width:100%;">
									    <option value=""></option>
										
							<?php	$designation_data = $this->db->get_where('designation')->result_array(); 
							foreach($designation_data as $row1):
							?>
                                    	<option value="<?php echo $row1['id'];?>"><?php echo $row1['name'];?></option>
                            <?php
                            endforeach;
                            ?>
										
                                    </select>
                                </div>
                            </div>
							
							<div class="control-group">
                                <label class="control-label"><?php echo translate('department');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="department"/>
                                </div>
                            </div>
							
							<div class="control-group">
                                <label class="control-label"><?php echo translate('subject');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="subject"/>
                                </div>
                            </div>
							
							<div class="control-group">
                                <label class="control-label"><?php echo translate('birthday');?></label>
                                <div class="controls">
                                    <input type="text" class="datepicker fill-up" name="birthday"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('sex');?></label>
                                <div class="controls">
                                    <select name="sex" class="uniform" style="width:100%;">
                                    	<option value="male"><?php echo translate('male');?></option>
                                    	<option value="female"><?php echo translate('female');?></option>
                                    </select>
                                </div>
                            </div>
							<div class="control-group">
                                <label class="control-label"><?php echo translate('religion');?></label>
                                <div class="controls">
                                    <select name="religion" class="uniform" style="width:100%;">
										<option value=""><?php echo translate('religion');?></option>
                                    	<?=make_select('religion','religion_id','religion_name')?>
                                    </select>
                                </div>
                            </div>
							
							<div class="control-group">
                                <label class="control-label"><?php echo translate('blood Group');?></label>
                                <div class="controls">
                                    <select name="blood" class="uniform" style="width:100%;">
										<option value=""></option>
                                    	<option value="O-"><?php echo translate('O-');?></option>
                                    	<option value="O+"><?php echo translate('O+');?></option>
										<option value="A-"><?php echo translate('A-');?></option>
                                    	<option value="A+"><?php echo translate('A+');?></option>
										<option value="B-"><?php echo translate('B-');?></option>
                                    	<option value="B+"><?php echo translate('B+');?></option>
										<option value="AB-"><?php echo translate('AB-');?></option>
                                    	<option value="AB+"><?php echo translate('AB+');?></option>
                                    </select>
                                </div>
                            </div>
							
							
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('Present address');?></label>
                                <div class="controls">
									<textarea name="address"></textarea>
                                </div>
                            </div>
							<div class="control-group">
                                <label class="control-label"><?php echo translate('Permanent address');?></label>
                                <div class="controls">
									<textarea name="per_address"></textarea>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('phone');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="phone"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('email');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="email"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('password');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="password"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('photo');?></label>
                                <div class="controls" style="width:210px;">
                                    <input type="file" class="" name="userfile" id="imgInp" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"></label>
                                <div class="controls" style="width:210px;">
                                    <a href="<?php echo base_url();?>photo" target="_blank">Take your Picture</a>
                                </div>
                            </div>
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-gray"><?php echo translate('add_teacher');?></button>
                        </div>
                    </form>                
                </div>                
			</div>
			<!----CREATION FORM ENDS--->
            
		</div>
	</div>
</div>
<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }
            
            reader.readAsDataURL(input.files[0]);
        }
    }
    
    $("#imgInp").change(function(){
        readURL(this);
    });
	function newitem(){
		var row='<tr>'; 
		row+='<td><input name="institute[]"   type="text" style="width:200px" placeholder="Institute Name"/></td>';
		row+='<td><input name="year[]"         type="text" style="width:200px" placeholder="Year of Passing" /></td>';
		row+='<td><textarea class="uniform w300" name="institute_address[]"></textarea></td>';
		row+='<td><input name="result[]"       type="text" style="width:200px" placeholder="Result"/></td>';
		row+='<td><button type="button" class="btn btn-gray addbtn" onclick="newitem()">+</button>&nbsp;<button type="button" class="btn btn-gray removebtn" onclick="removeitem(this)">X</button></td>';
		row+='</tr>';
		return $('#education').append(row);
		};
		function removeitem(el)
		{
			$(el).closest("tr").remove();
		}
		$('.addbtn').click(function(e) 
		{
			 newitem();
	   });
	$('.removebtn').click(function(e){
		e.preventDefault();
		 $(this).closest("tr").remove();
	});	
</script>