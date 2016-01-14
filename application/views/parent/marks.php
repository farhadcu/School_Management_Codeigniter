<div class="box box-border">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">
			<li class="active">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo translate('manage_marks');?>
                    	</a></li>
		</ul>
    	<!------CONTROL TABS END------->
        
	</div>
	<div class="box-content padded">
            <!----TABLE LISTING STARTS--->
            <div class="tab-pane  <?php if(!isset($edit_data) && !isset($personal_profile) && !isset($academic_result) )echo 'active';?>" id="list">
				<center>
                <?php echo form_open('parents/marks');?>
                <table border="0" cellspacing="0" cellpadding="0" class="table table-normal box">
                	<tr>
                        <td><?php echo translate('select_exam');?></td>
                        <td><?php echo translate('select_subject');?></td>
                        <td>&nbsp;</td>
                	</tr>
                	<tr>
                        <td>
                        	<select name="exam_id" class=""  style="float:left;">
                                <option value=""><?php echo translate('select_an_exam');?></option>
                                <?php 
                                $exams = $this->db->get('exam')->result_array();
                                foreach($exams as $row):
                                ?>
                                    <option value="<?php echo $row['exam_id'];?>"
                                        <?php if($exam_id == $row['exam_id'])echo 'selected';?>>
                                            Class <?php echo $row['name'];?></option>
                                <?php
                                endforeach;
                                ?>
                            </select>
                        </td>
                        <td>
                        	<!-----SELECT SUBJECT ACCORDING TO SELECTED CLASS--------->
                                <select name="subject_id" >
                                    <option value=""><?php echo translate('select_subject');?></option>
                                    <?php 
                                    $subjects	=	$this->crud_model->get_subjects_by_class($class_id); 
                                    foreach($subjects as $row2): ?>
                                    <option value="<?php echo $row2['subject_id'];?>"
                                        <?php if(isset($subject_id) && $subject_id == $row2['subject_id'])
                                                echo 'selected="selected"';?>><?php echo $row2['name'];?>
                                    </option>
                                    <?php endforeach;?>
                                    
                                    
                                </select> 
                            
                            
                        </td>
                        <td>
                        	<input type="hidden" name="class_id" value="<?php echo $class_id;?>" />
                        	<input type="hidden" name="operation" value="selection" />
                    		<input type="submit" value="<?php echo translate('view_marks');?>" class="btn btn-normal btn-gray" />
                        </td>
                	</tr>
                </table>
                </form>
                </center>
                
                
                <br /><br />
                
                
                <?php if($exam_id >0 && $class_id >0 && $subject_id >0 ):?>
                <?php 
						////CREATE THE MARK ENTRY ONLY IF NOT EXISTS////
						$students	=	$this->crud_model->get_students($class_id);
						foreach($students as $row):
							$verify_data	=	array(	'exam_id' => $exam_id ,
														'class_id' => $class_id ,
														'subject_id' => $subject_id , 
														'student_id' => $row['student_id']);
							$query = $this->db->get_where('mark' , $verify_data);
							
							if($query->num_rows() < 1)
								$this->db->insert('mark' , $verify_data);
						 endforeach;
				?>
                <table class="table table-normal box" >
                    <thead>
                        <tr>
                            <td><?php echo translate('student');?></td>
                            <td><?php echo translate('mark_obtained');?>(out of 100)</td>
                            <td><?php echo translate('attendance');?></td>
                            <td><?php echo translate('comment');?></td>
                        </tr>
                    </thead>
                    <tbody>
                    	
                        <?php 
						$students	=	$this->db->get_where('student' , array('student_id' => $student_id))->result_array();
						foreach($students as $row):
						
							$verify_data	=	array(	'exam_id' => $exam_id ,
														'class_id' => $class_id ,
														'subject_id' => $subject_id , 
														'student_id' => $row['student_id']);
														
							$query = $this->db->get_where('mark' , $verify_data);							 
							$marks	=	$query->result_array();
							foreach($marks as $row2):
							?>
							<tr>
								<td>
									<?php echo $row['name'];?>
								</td>
								<td style="text-align:center;">
									 <?php echo $row2['mark_obtained'];?>
												
								</td>
                                <td style="text-align:center;">
                                	<?php echo $row2['attendance'];?>
                                </td>
								<td style="width:200px;">
									<?php echo $row2['comment'];?>
								</td>
							 </tr>
                         	<?php 
							endforeach;
						 endforeach;
						 ?>
                     </tbody>
                  </table>
            
            <?php endif;?>
			</div>
            <!----TABLE LISTING ENDS--->
            
		</div>
	</div>
</div>

<script type="text/javascript">
  function show_subjects(class_id)
  {
      for(i=0;i<=100;i++)
      {

          try
          {
              document.getElementById('subject_id_'+i).style.display = 'none' ;
	  		  document.getElementById('subject_id_'+i).setAttribute("name" , "temp");
          }
          catch(err){}
      }
      document.getElementById('subject_id_'+class_id).style.display = 'block' ;
	  document.getElementById('subject_id_'+class_id).setAttribute("name" , "subject_id");
  }

</script> 