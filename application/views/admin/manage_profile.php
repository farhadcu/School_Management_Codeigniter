<div class="box box-border">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">

			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo translate('manage_profile');?>
                    	</a></li>
		</ul>
    	<!------CONTROL TABS END------->
        
	</div>
	<div class="box-content padded">
		<div class="tab-content">
        	<!----EDITING FORM STARTS---->
			<div class="tab-pane box active" id="list" style="padding: 5px">
                <div class="box-content padded">
					<?php 
                    foreach($edit_data as $row):
                        ?>
                        <?php echo form_open('admin/manage_profile/update_profile_info' , array('class' => 'form-horizontal validatable'));?>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('name');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="name" value="<?php echo $row['name'];?>"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('email');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="email" value="<?php echo $row['email'];?>"/>
                                </div>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-gray"><?php echo translate('update_profile');?></button>
                            </div>
                        </form>
						<?php
                    endforeach;
                    ?>
                </div>
			</div>
            <!----EDITING FORM ENDS--->
            
		</div>
	</div>
</div>


<!--password-->
<div class="box box-border">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">

			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="icon-lock"></i> 
					<?php echo translate('change_password');?>
                    	</a></li>
		</ul>
    	<!------CONTROL TABS END------->
        
	</div>
	<div class="box-content padded">
		<div class="tab-content">
        	<!----EDITING FORM STARTS---->
			<div class="tab-pane box active" id="list" style="padding: 5px">
                <div class="box-content padded">
					<?php 
                    foreach($edit_data as $row):
                        ?>
                        <?php echo form_open('admin/manage_profile/change_password' , array('class' => 'form-horizontal validatable'));?>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('password');?></label>
                                <div class="controls">
                                    <input type="password" class="" name="password" value=""/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('new_password');?></label>
                                <div class="controls">
                                    <input type="password" class="" name="new_password" value=""/>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label"><?php echo translate('confirm_new_password');?></label>
                                <div class="controls">
                                    <input type="password" class="" name="confirm_new_password" value=""/>
                                </div>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-gray"><?php echo translate('update_password');?></button>
                            </div>
                        </form>
						<?php
                    endforeach;
                    ?>
                </div>
			</div>
            <!----EDITING FORM ENDS--->
            
		</div>
	</div>
</div>