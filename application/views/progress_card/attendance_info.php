<?php
	$condition=array();
	if($exam_id=='all')
		{
			$last_exam_id=get_single_value('exam_id','mark',array('student_id'=>$student_id));
			$condition['exam_id']=$last_exam_id;
		}
		else
		{
			$parent_id=get_single_value('parent_id','exam',array('exam_id'=>$exam_id));
			if(!$parent_id)
			{
				$condition['exam_id']=$exam_id;
			}
			else
			{
				$condition['exam_id']=$parent_id;
				$condition['sub_exam_id']=$exam_id;
			}
		}
		$condition['student_id']=$student_id;
		/*$this->db->where($condition);
		$this->db->from('attendance_mark');*/
		$query = $this->db->get_where('attendance_mark', $condition);
		$att_result=$query->result_array();
		foreach ($att_result as  $att_info)
		{
			
		}
?>
<table class="marksheet-header-table">
	<thead>
		<tr>
			<th>
				<?=translate('Total_Class_Day')?> : <?=translate($att_info['classday'])?>
			</th>
			<th>
				<?=translate('Attendance')?> : <?=translate($att_info['attend'])?>
			</th>
			<th>
				<?=translate('absent')?> : <?=translate($att_info['classday']-$att_info['attend'])?>
			</th>
			<th>
				<?=translate('Home_work')?> : <?=translate($att_info['homework'])?>
			</th>
			<th>
				<?=translate("Guardian's_care")?> : <?=translate($att_info['gardian_care'])?>
			</th>
			<th>
				<?=translate("Attention for Leassion")?> : <?=translate($att_info['attention'])?>
			</th>
			<th>
				<?=translate("Behavior")?> : <?=translate($att_info['behave'])?>
			</th>
		</tr>
	</thead>
</table>
<?php
//endforeach;
?>