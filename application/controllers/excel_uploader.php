<?php
class Excel_uploader extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->library('excel');
    }
// This function remove empty row from every worksheet in whole workbook
    public function remove_empty_row_whole_workbook($data = "", $worksheet_dimension) {
        foreach ($data as $worksheet_key => $worksheet_value) {
            foreach ($worksheet_value as $row_key => $row_value) {
                $empty_value_check = "";
                foreach ($row_value as $column_key => $column_value) {
                    if (($column_value == "") || $column_value == NULL) {
                        $empty_value_check .= "";
                    } else {
                        $empty_value_check .= $column_value;
                    }
                }
                if ($empty_value_check == "") {
                    unset($data[$worksheet_key][$row_key]);
                }
            }
            sort($data[$worksheet_key]);
            $worksheet_dimension[$worksheet_key]['highest_row'] = count($data[$worksheet_key]);
        }
// Do not sort 'Worksheet' that will cause problem
        $combine['data'] = $data;
        $combine['worksheet_dimension'] = $worksheet_dimension;
        return $combine;
    }
// This function process whole workbook and stores data in an Array.
    public function whole_workbook_process($input_file_name = "", $minimum_column = 1) {
//        $input_file_name = 'D:/xampp/htdocs/ptest_1/excel_file/test_3.xlsx';
        $input_file_type = PHPExcel_IOFactory::identify($input_file_name);
        $obj_reader = PHPExcel_IOFactory::createReader($input_file_type);
        $obj_php_excel = $obj_reader->load($input_file_name);
        $worksheet_array = $obj_php_excel->getSheetNames();
        foreach ($worksheet_array as $worksheet) {
            $highest_row = $obj_php_excel->getSheetByName("$worksheet")->getHighestRow();
            $highest_column_temp = $obj_php_excel->getSheetByName("$worksheet")->getHighestColumn();
            $highest_column = PHPExcel_Cell::columnIndexFromString($highest_column_temp);
            if ($highest_column < $minimum_column) {
                $highest_column = $minimum_column;
            }
            $worksheet_dimension[$worksheet]['highest_row'] = $highest_row;
            $worksheet_dimension[$worksheet]['highest_column'] = $highest_column;
// Row start from '1' in Excel file
// Remove Heading from Every worksheet in Excel file which is Row '1'
            for ($row = 2; $row <= $highest_row; $row++) {
// Column start from '0' in Excel file
                for ($column = 0; $column < $highest_column; $column++) {
                    $data[$worksheet][$row][$column] = $obj_php_excel->getSheetByName("$worksheet")->getCellByColumnAndRow($column, $row)->getValue();
                    if ($data[$worksheet][$row][$column] === NULL) {
                        $data[$worksheet][$row][$column] = "";
                    }
                }
            }
        }
        $combine = $this->remove_empty_row_whole_workbook($data, $worksheet_dimension);
        $data = $combine['data'];
        $worksheet_dimension = $combine['worksheet_dimension'];
//        $this->whole_workbook_show($data, $worksheet_array, $worksheet_dimension);
        $this->data_excel_to_db($data, $worksheet_array, $worksheet_dimension);
    }
// This function show whole workbook that is stored by $this->whole_workbook_process()
    public function whole_workbook_show($data, $worksheet_array, $worksheet_dimension) {
        echo '<table border="1">';
        foreach ($worksheet_array as $worksheet) {
            $colspan_value = $worksheet_dimension[$worksheet]['highest_column'] + 1;
            echo '<tr>' . '<td colspan="' . $colspan_value . '" style="text-align: center; color: #800000; font-weight: bold; background-color: #DDDDDD;">' . $worksheet . '</td>' . '</tr>';
            echo '<tr><td>Serial</td>';
            for ($column = 0; $column < $worksheet_dimension[$worksheet]['highest_column']; $column++) {
                echo '<td>' . $column . '</td>';
            }
            echo '</tr>';
            for ($row = 0; $row < $worksheet_dimension[$worksheet]['highest_row']; $row++) {
                echo '<tr><td>' . $row . '</td>';
                for ($column = 0; $column < $worksheet_dimension[$worksheet]['highest_column']; $column++) {
                    echo '<td>';
                    echo $data[$worksheet][$row][$column];
                    echo '</td>';
                }
                echo '</tr>';
            }
        }
        echo '</table>';
    }
    public function whole_workbook_process_caller() {
        $input_file_name = 'C:\Users\Laptop\Desktop\excel_file_test\file_one.xlsx';
        $minimum_column = 1;
        $this->whole_workbook_process($input_file_name, $minimum_column);
    }
// This funtion show excel file upload form.
    public function upload_form($message_excel_uploader = "") {
//        $this->load->view('excel_uploader_form');
        $data['page_name'] = 'student_info_sheet';
        $data['page_title'] = translate('Export/Import Information');
        $data['message_excel_uploader'] = $message_excel_uploader;
        $this->load->view('index', $data);
    }
// This function take the uploaded excel file. Save the file to folder and keep file name in database.
    public function upload_form_submit() {
        $field_name = "user_file";
        $this->db->select_max('id');
        $last_excel_file_id = $this->db->get('excel_file')->result()[0]->id;
        $last_excel_file_id_2 = (int) $last_excel_file_id;
        $last_excel_file_id_3 = $last_excel_file_id_2 + 1;
        $config['upload_path'] = './excel_file/';
        $config['allowed_types'] = 'xls|xlsx|csv|doc';
        $config['file_name'] = "$last_excel_file_id_3" . '_' . $_FILES['user_file']['name'];
		$this->upload->initialize($config);
//        $this->load->library('upload', $config);
        if ($this->upload->do_upload($field_name)) {
            $file_name = $this->upload->data()['file_name'];
            $data['file_name'] = $file_name;
            $result = $this->db->insert('excel_file', $data);
            if ($result) {
                $this->last_uploaded_excel_file();
            }
        } else {
//	    echo 'Upload Failed';
//	    echo $this->upload->display_errors();
//	    exit();
            $data = array('file_upload_error' => $this->upload->display_errors());
//            $this->load->view("excel_uploader_form", $error);
            $data['page_name'] = 'student_info_sheet';
            $data['page_title'] = translate('Export/Import Information');
            $this->load->view('index', $data);
        }
    }
// This function take name of last uploaded excel file from database.
    public function last_uploaded_excel_file() {
        $script_filename = rtrim($_SERVER['SCRIPT_FILENAME'], 'index.php');
        $uploaded_file_name = $this->db->select('file_name')->order_by('id', 'desc')->limit(1)->get('excel_file')->result()[0]->file_name;
        $input_file_name = $script_filename . 'excel_file/' . $uploaded_file_name;
//        $minimum_column = $this->input->post('minimum_column');
	$minimum_column = 5;
        $this->whole_workbook_process($input_file_name, $minimum_column);
    }
    public function whole_workbook_row_count($data = "", $worksheet_array = "", $worksheet_dimension = "") {
        $counter = 0;
        foreach ($worksheet_array as $worksheet) {
            for ($row = 0; $row < $worksheet_dimension[$worksheet]['highest_row']; $row++) {
                $counter++;
            }
        }
        return "Total <b>$counter</b> rows in whole workbook";
    }
// This function insert excel file data to database.
    public function data_excel_to_db($data = "", $worksheet_array = "", $worksheet_dimension = "") {
//        $uploader_name = $this->input->post('uploader_name');
//        switch ($uploader_name) {
//            case 'product':
//                $this->product_to_db($data, $worksheet_array, $worksheet_dimension);
//                break;
//            case 'machineries':
//                $this->machineries_to_db($data, $worksheet_array, $worksheet_dimension);
//                break;
//            case 'sub_contract':
//                $this->sub_contract_to_db($data, $worksheet_array, $worksheet_dimension);
//                break;
//            case 'buy_sell_lease':
//                $this->buy_sell_lease_to_db($data, $worksheet_array, $worksheet_dimension);
//                break;
//            case 'head_office':
//                $this->head_office_to_db($data, $worksheet_array, $worksheet_dimension);
//                break;
//            case 'branch':
//                $this->branch_to_db($data, $worksheet_array, $worksheet_dimension);
//                break;
//            case 'buyer':
//                $this->buyer_to_db($data, $worksheet_array, $worksheet_dimension);
//                break;
//            default :
//                $this->upload_form();
//        }
	$this->student_to_db($data, $worksheet_array, $worksheet_dimension);
    }
    
    public function student_to_db($data = "", $worksheet_array = "", $worksheet_dimension = "") {
//        echo 'branch_to_db';
        $student_array = array();
        foreach ($worksheet_array as $worksheet) {
            for ($row = 0; $row < $worksheet_dimension[$worksheet]['highest_row']; $row++) {
		$group_id=get_single_value('group_id','group',array('group_name'=>$data[$worksheet][$row][55]));
		$religion=get_single_value('religion_id','religion',array('religion_name'=>$data[$worksheet][$row][7]));

                $student_array[] = array(
                    'student_unique_ID' => $data[$worksheet][$row][0],
		    'name' => $data[$worksheet][$row][1],
		    'student_name_bangla' => $data[$worksheet][$row][2],
		    'birthday' => $data[$worksheet][$row][3],
		    'sex' => $data[$worksheet][$row][4],
		    'student_blood_group' => $data[$worksheet][$row][5],
		    'maritial_status' => $data[$worksheet][$row][6],
//		    'religion' => $data[$worksheet][$row][7],
		    'religion' => $religion,
		    'nationality' => $data[$worksheet][$row][8],
		    'father_name' => $data[$worksheet][$row][9],
		    'father_name_bangla' => $data[$worksheet][$row][10],
		    'father_age' => $data[$worksheet][$row][11],
		    'father_education' => $data[$worksheet][$row][12],
		    'father_occupation' => $data[$worksheet][$row][13],
		    'father_mobile' => $data[$worksheet][$row][14],
		    'father_birthday' => $data[$worksheet][$row][15],
		    'father_blood_group' => $data[$worksheet][$row][16],
		    'father_nidnumber' => $data[$worksheet][$row][17],
		    'father_monthly_income' => $data[$worksheet][$row][18],
		    'mother_name' => $data[$worksheet][$row][19],
		    'mother_name_bangla' => $data[$worksheet][$row][20],
		    'mother_age' => $data[$worksheet][$row][21],
		    'mother_education' => $data[$worksheet][$row][22],
		    'mother_occupation' => $data[$worksheet][$row][23],
		    'mother_mobile' => $data[$worksheet][$row][24],
		    'mother_birthday' => $data[$worksheet][$row][25],
		    'mother_blood_group' => $data[$worksheet][$row][26],
		    'mother_nidnumber' => $data[$worksheet][$row][27],
		    'mother_monthly_income' => $data[$worksheet][$row][28],
		    'present_address' => $data[$worksheet][$row][29],
		    'permanent_address' => $data[$worksheet][$row][30],
		    'guardian_name' => $data[$worksheet][$row][31],
		    'guardian_name_bangla' => $data[$worksheet][$row][32],
		    'guardian_age' => $data[$worksheet][$row][33],
		    'guardian_profession' => $data[$worksheet][$row][34],
		    'guardian_income' => $data[$worksheet][$row][35],
		    'guardian_land' => $data[$worksheet][$row][36],
		    'guardian_nid' => $data[$worksheet][$row][37],
		    'guardian_birthday' => $data[$worksheet][$row][38],
		    'gardian_mobile' => $data[$worksheet][$row][39],
		    'gardian_blood_group' => $data[$worksheet][$row][40],
		    'guardian_address' => $data[$worksheet][$row][41],
		    'phone' => $data[$worksheet][$row][42],
		    'relation_id' => $data[$worksheet][$row][43], // ID
		    'admission_form_no' => $data[$worksheet][$row][44],
		    'registration_no' => $data[$worksheet][$row][45],
		    'prev_institution_name' => $data[$worksheet][$row][46],
		    'prev_class_id' => $data[$worksheet][$row][47], // ID
		    'prev_passing_yrs' => $data[$worksheet][$row][48],
		    'prev_gpa' => $data[$worksheet][$row][49],
		    'prev_institution_address' => $data[$worksheet][$row][50],
		    'tc_institution_name' => $data[$worksheet][$row][51],
		    'tc_form_no' => $data[$worksheet][$row][52],
		    'tc_date' => $data[$worksheet][$row][53],
//		    'class_id' => $data[$worksheet][$row][54], // ID
		    'class_id' => $_POST['class_id'],
//		    'group' => $data[$worksheet][$row][55], // ID
		    'group'=>$group_id,
		    'section' => $data[$worksheet][$row][56],
		    'roll' => $data[$worksheet][$row][57],
		    'academic_year' => $data[$worksheet][$row][58],
		    'other_student_name' => $data[$worksheet][$row][59],
		    'others_class_id' => $data[$worksheet][$row][60], // ID
		    'group_others' => $data[$worksheet][$row][61],
		    'others_section' => $data[$worksheet][$row][62],
		    'others_roll' => $data[$worksheet][$row][63],
		    'others_id' => $data[$worksheet][$row][64],
		    
                );
            }
        }
      // echo '<pre>';	var_dump($student_array[0]); echo '</pre>';	exit();
        $this->db->insert_batch('student', $student_array);
	//	var_dump($resulttt); 
	//echo '<br />'.$this->db->last_query(); exit();
//        echo 'Student Information Inserted'; exit(); 
        $message_excel_uploader = 'Student information inserted successfully. <br />';
        $message_excel_uploader .= $this->whole_workbook_row_count($data, $worksheet_array, $worksheet_dimension);
        $this->upload_form($message_excel_uploader);
    }
   

}

