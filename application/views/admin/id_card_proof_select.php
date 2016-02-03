<style>
    @media screen,print {
        #individual_page {
            display: block;
            width: 595px;
            height: 842px;
            background-color: #eeeeee;
            border: 2px solid black;
            clear: both;
        }

        #individual_card {
            display: block;
            width: 32%;
            height: 33%;
            float: left;
            border: 1px solid black;
            background-color: white;
        }
	
	#individual_card img {
	    margin-left: 30%;
	    padding-bottom: 5%;
	}
	
	#individual_card h5 {
	    text-align: center;
	}
	
	#individual_card #info_text {
	    margin-left: 5%;
	}

        #clear_float_at {
            clear: both;
        }
	
	#id_card_list button {
            width: 50px;
        }
    }

    @media print {
        #class_select, #class_select * {
            display: none;
        }

        body * {
            visibility: hidden;
        }

        #id_card_list * {
            visibility: visible;
        }
    }    
</style>

<?php
//echo 'id card proof page';
echo $demo_value;
?>

<div id="class_select">
    <center>
        <div class="span5" style="float:none !important;">
            <div class="box box-border">
                <div class="box-header">
                    <span class="title"> <i class="icon-info-sign"></i> Please select a class to manage student.</span>
                </div>
                <div class="box-content padded">
                    <br />
                    <select name="class_id" onchange="window.location = '<?php echo base_url(); ?>index.php?admin/id_card_proof_list/' + this.value">
                        <option value=""><?php echo translate('select_a_class'); ?></option>
                        <?php
                        $classes = $this->db->get('class')->result_array();
                        foreach ($classes as $row):
                            ?>
                            <option value="<?php echo $row['class_id']; ?>"
                                    <?php if ($class_id == $row['class_id']) echo 'selected'; ?>>
                                Class <?php echo $row['name']; ?></option>
                            <?php
                        endforeach;
                        ?>
                    </select>
                    <hr />
                    <script>
                        //                    $(document).ready(function () {
                        //                        function ask()
                        //                        {
                        //                            Growl.info({title: "Select a class to manage student", text: " "});
                        //                        }
                        //                        setTimeout(ask, 500);
                        //                    });
                    </script>
                </div>
            </div>
        </div>
    </center>
</div>

<?php
if (isset($class_id) && ($class_id != '')) {
    ?>
    <div id="id_card_list">
        <?php
        $query_student = $this->db->where('class_id', $class_id)->get('student');
        $result_student = $query_student->result_array();
        $row_num = $query_student->num_rows();
//    echo '<pre>';
//    var_dump($result_student);
//    echo '</pre>';
        $page_approximate = $row_num / 9;
        if (($row_num / 9) == 0) {
            $total_page = $page_approximate;
        } else {
            $total_page = $page_approximate + 1;
        }
//        $card_counter = 1;
//        $show_card_counter  = 0;
//        echo '<pre>';        var_dump($result_student); echo '</pre>';
        ?>


        <?php
        for ($array_index = 0; $array_index < count($result_student); $array_index++) {
//            if ($array_index == 0) {
//                echo '<div id="individual_page" style="color: red;">';
//            }
//            if ($array_index == 9) {
//                echo '<div id="individual_page" style="color: red;">';
//            }
//            if ($array_index == 18) {
//                echo '<div id="individual_page" style="color: red;">';
//            }
//            if ($array_index == 27) {
//                echo '<div id="individual_page" style="color: red;">';
//            }
            if (($array_index%9) == 0) {
                echo '<div id="individual_page" style="color: black;">';
            }
         
            echo '<div id="individual_card">';
	    echo '<h5>'.$this->db->select('system_name')->order_by('settings_id','desc')->get('settings')->result()[0]->system_name.'</h5>';
	    $image_url = $this->crud_model->get_image_url('student', $result_student[$array_index]['student_id']);
            $image_string = '<img src="';
//            $image_string .= base_url('uploads/user.jpg').' "';
	    $image_string .= $image_url.' "';
            $image_string .= 'width="30%" height="30%" />';
            echo $image_string . '<br />';
            
	    echo '<div id="info_text">';
            echo 'Student ID: '.$result_student[$array_index]['student_id'].'<br />';
            echo 'Student Name: '.$result_student[$array_index]['name'].'<br />';
	    echo 'Class: '.$this->db->select('name')->where('class_id',$result_student[$array_index]['class_id'])->get('class')->result()[0]->name.'<br />';
	    echo 'Section: '.$result_student[$array_index]['section'].'<br />';
	    echo 'Roll: '.$result_student[$array_index]['roll'].'<br />';
	    echo 'Blood Group: '.$result_student[$array_index]['student_blood_group'];
	    echo '</div>';
            echo '</div>';

//            if ($array_index == 8) {
//                echo '</div> <br />';
//            }
//            if ($array_index == 17) {
//                echo '</div> <br />';
//            }
//            if ($array_index == 26) {
//                echo '</div> <br />';
//            }
//            if ($array_index == 35) {
//                echo '</div> <br />';
//            }
            
            if (((($array_index + 1)%9) == 0) && ($array_index != 7)) {
                echo '</div> <br />';
            }
        }
        ?>



        <?php
//        foreach ($query_student->result() as $row_student) {
//            if (($card_counter % 9 ) == 0) {
//                echo '<div id="individual_page" style="color: red;">';
//            }
//
//            echo '<div id="individual_card">sample id card</div>';
//
//
//            if ((($card_counter % 18 ) == 0)) {
//                echo '</div>';
////                echo '<div id="clear_float_at"></div>';
//            }
//            $card_counter++;
////            $show_card_counter++;
//        }
        ?>
        <!--        <div id="individual_page" style="color: red;">
                    <div id="individual_card">demo id card</div>
                    <div id="individual_card">demo id card</div>
                    <div id="individual_card">demo id card</div>
                    <div id="individual_card">demo id card</div>
                </div>-->

        <div style="clear: both;"></div>
        <button onclick="window.print()" style="margin-top: 10px; text-align: center;">Print</button>
    </div>

<?php } ?>


