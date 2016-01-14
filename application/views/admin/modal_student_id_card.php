<?php
$student_info = $this->crud_model->get_student_info($current_student_id);
foreach ($student_info as $row):
    ?>
    <style>
        body {
            background-color: #000 !important;
        }
        .id-body {
            width: 330px;
            height: 495px;
            margin: 0 auto;
            display: block;
            overflow: hidden;      
			font-family: sans-serif;
			background: #FFF url(template/images/id_card/knp/bg.svg) no-repeat;
       }
        .id-wrap {
            padding: 20px;
        }
        .id-card-photo {
            border: 2px solid #0d60ad;
			 width: 111px;
            height: 147px;
			margin: 180px auto auto;
			text-align: center;
			border-radius: 20px;
			overflow: hidden;
			background-color:#fff;
        }
        .id-card-photo img {
            width: 111px;
            height: 147px;
        }
        .id-wrap table {
            margin-top:20px;
            font-size: 12px;
            line-height: 20px;
			color:black;
			font-weight: bold;
        }
		
		.id-wrap table th{
			color:black;
			max-width:35%;
        }
		
    </style>
    <div class="id-body">
        <div class="id-wrap">
           

            <!--ID Card Photo-->
            <div class="id-card-photo">
                <img src="<?php echo $this->crud_model->get_image_url('student', $row['student_id']); ?>" alt="<?php echo $row['name']; ?>" title="<?php echo $row['name']; ?>">
            </div><!--ID Card Photo-->

            <!--ID Card Information-->
            <div>
                <table width="80%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <th align="left"><?php echo get_phrase('student_ID'); ?></th>
                        <td align="left">: <?php echo $row['student_id']; ?></td>
                    </tr>
                    <tr>
                        <th align="left"><?php echo get_phrase('student_name'); ?></th>
                        <td align="left">: <?php echo $row['name']; ?></td>
                    </tr>
                    <tr>
                        <th align="left"><?php echo get_phrase('class'); ?></th>
                        <td align="left">: <?php echo $this->crud_model->get_class_name($row['class_id']); ?></td>
                    </tr>
                </table>					    
            </div>
            <!--ID Card Information-->
        </div>
    </div>

<?php endforeach; ?>