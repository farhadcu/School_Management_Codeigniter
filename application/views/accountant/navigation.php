<div class="sidebar-background">
    <div class="primary-sidebar-background">
    </div>
</div>
<div class="primary-sidebar">
    <!-- Main nav -->
    <br />
    <ul class="nav nav-collapse collapse nav-collapse-primary">
        
        <li class="<?php if ($page_name == 'dashboard') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/dashboard" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('dashboard_help');?><?php */ ?>">
                <!--<i class="icon-desktop icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/home.png"/>
                <span><?php echo translate('dashboard'); ?></span>
            </a>
        </li>
		
        <?php if($this->session->userdata('user_role') != 'accountant'){ ?>
        <!------teacher----->
        <li class="<?php if ($page_name == 'teacher') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/teacher" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('teacher_help');?><?php */ ?>">
                               <!--<i class="icon-user icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/teacher.png" />
                <span><?php echo translate('teacher'); ?></span>
            </a>
        </li>

        <!------classes----->
        <li class="<?php if ($page_name == 'class') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/classes" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('class_help');?><?php */ ?>">
                               <!--<i class="icon-sitemap icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/class.png" />
                <span><?php echo translate('manage class'); ?></span>
            </a>
        </li>
		
		<!------subject----->
        <li class="<?php if ($page_name == 'subject') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/subject" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('subject_help');?><?php */ ?>">
                               <!--<i class="icon-tasks icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/subject.png" />
                <span><?php echo translate('manage subject'); ?></span>
            </a>
        </li>
		
		<!------student Admission----->
        <li class="<?php if ($page_name == 'student_add') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/student_add" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('student_help');?><?php */ ?>">
                               <!--<i class="icon-user icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/admission.png" />
                <span><?php echo translate('student admission'); ?></span>
            </a>
        </li>
		
        <!------Student Information----->
        <li class="<?php if ($page_name == 'student') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/student" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('student_help');?><?php */ ?>">
                               <!--<i class="icon-user icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/user.png" />
                <span><?php echo translate('student information'); ?></span>
            </a>
        </li>
        
         <!------Bulk student info----->
        <li class="<?php if ($page_name == 'student') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/studentbulk" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('student_help');?><?php */ ?>">
                               <!--<i class="icon-user icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/user.png" />
                <span><?php echo translate('Bulk student info'); ?></span>
            </a>
        </li>
		
		
        <!------parent----->
        <li class="<?php if ($page_name == 'parent') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/parent" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('teacher_help');?><?php */ ?>">
                               <!--<i class="icon-user icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/parent.png" />
                <span><?php echo translate('manage guardian'); ?></span>
            </a>
        </li>

        <!------exam----->
        <li class="<?php if ($page_name == 'exam') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/exam" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('exam_help');?><?php */ ?>">
                               <!--<i class="icon-paste icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/exam.png" />
                <span><?php echo translate('manage exam'); ?></span>
            </a>
        </li>

        <!------grade----->
        <li class="<?php if ($page_name == 'grade') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/grade" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('grade_help');?><?php */ ?>">
                               <!--<i class="icon-list-ol icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/grade.png" />
                <span><?php echo translate('grade point'); ?></span>
            </a>
        </li>

        <!------marks----->
        <li class="<?php if ($page_name == 'marks') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/marks" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('marks_help');?><?php */ ?>" window="new" win_height="816px" win_width="1200px">
                               <!--<i class="icon-pencil icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/marks.png" />
                <span><?php echo translate('manage marks'); ?></span>
            </a>
        </li>
		
		<!------marks Sheet-----> 
        <!--<li class="<?php if ($page_name == 'marksheet') echo 'dark-nav active'; ?>">
               
            <a href="<?php echo base_url(); ?>index.php?admin/marksheet" rel="tooltip" data-placement="right" 
               data-original-title="<?php  ?>">
                              
                <img src="<?php echo base_url(); ?>template/images/icons/progress_card.png" />
               <span>Progress Card</span>
            </a>
        </li>  -->
		<!------marks Sheet----->
        <!--<li class="<?php if ($page_name == 'progress_card_2') echo 'dark-nav active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?admin/progress_card_2" rel="tooltip" data-placement="right" 
               data-original-title="">
                <img src="<?php echo base_url(); ?>template/images/icons/progress_card.png" />
                <span>Progress Card (SBA)</span>
            </a>
        </li>-->
		<!--<li class="<?php if ($page_name == 'progress_card') echo 'dark-nav active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?admin/progress_card" rel="tooltip" data-placement="right" 
               data-original-title="Progress Card">
                <img src="<?php echo base_url(); ?>template/images/icons/progress_card.png" />
                <span>GRSC-Progress Card</span>
            </a>
        </li>-->
		<li class="<?php if ($page_name == 'progress_card_details') echo 'dark-nav active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?progress_card/progresscard/details" rel="tooltip" data-placement="right" data-original-title="Progress&nbsp;Card">
                <img src="<?php echo base_url(); ?>template/images/icons/progress_card.png" />
                <span>Details Progress Card</span>
            </a>
        </li>
		<li class="<?php if ($page_name == 'progress_card_sba') echo 'dark-nav active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?progress_card/progresscard/sba" rel="tooltip" data-placement="right" data-original-title="Progress&nbsp;Card">
                <img src="<?php echo base_url(); ?>template/images/icons/progress_card.png" />
                <span>Progress Card-SBA</span>
            </a>
        </li>
		<li class="<?php if ($page_name == 'progress_card_grsc') echo 'dark-nav active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?progress_card/progresscard/grsc" rel="tooltip" data-placement="right" data-original-title="Progress&nbsp;Card">
                <img src="<?php echo base_url(); ?>template/images/icons/progress_card.png" />
                <span>Progress Card-GRSC
				</span>
            </a>
        </li>
		<li class="<?php if ($page_name == 'mark_sheet_glance') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/mark_sheet_glance" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('marks_help');?><?php */ ?>" window="new" win_height="816px" win_width="1200px">
                               <!--<i class="icon-pencil icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/marks.png" />
                <span>Mark Sheet At Glance</span>
            </a>
        </li>
		<!------attendance----->
        <li class="<?php if ($page_name == 'attendance') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/attendance" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('dashboard_help');?><?php */ ?>">
                <!--<i class="icon-desktop icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/attendance.png" />
                <span><?php echo translate('attendance'); ?></span>
            </a>
        </li>
        
                <!------Student Attendance Type----->
        <li class="<?php if ($page_name == 'stattendancetype') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/stattendancetype" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('noticeboard_help');?><?php */ ?>">
                               <!--<i class="icon-columns icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/attendance.png" />
                <span><?php echo translate('Student Attendance Type'); ?></span>
            </a>
        </li>
        
         <!------Attendance Report----->
        <li class="<?php if ($page_name == 'attendance_report') echo 'dark-nav active'; ?>">
            <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/attendance_report/" rel="tooltip" data-placement="right" window="new" win_height="816px" win_width="1200px"
               data-original-title="<?php /* ?><?php echo translate('invoice_help');?><?php */ ?>">
                <!--<i class="icon-money icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/attendance.png" />
                <span><?php echo translate('attendance_report'); ?></span>
            </a>
        </li>
        <!------class routine----->
        <li class="<?php if ($page_name == 'class_routine') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/class_routine" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('class_routine_help');?><?php */ ?>">
                               <!--<i class="icon-indent-right icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/routine.png" />
                <span><?php echo translate('class_routine'); ?></span>
            </a>
        </li>
        <?php } ?>
       
        <li class="<?php if ($page_name == 'fees_setup') echo 'active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?admin/fees_setup">
                          <!--<i class="icon-h-sign"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/fees-setup.png" />
                <span><?php echo translate('fees_setup'); ?></span>
            </a>
        </li>
        <!------Fees setup --->
        <li class="<?php if ($page_name == 'fees') echo 'active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?admin/fees"  window="new" win_height="816px" win_width="1200px">
                          <!--<i class="icon-h-sign"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/fees-setup.png" />
                <span><?php echo translate('fees_manage'); ?></span>
            </a>
        </li>
		
        <!------invoice----->
        <li class="<?php if ($page_name == 'invoice') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/invoice" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('invoice_help');?><?php */ ?>">
                               <!--<i class="icon-money icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/student-fee.png" />
                <span><?php echo translate('Fees Invoice'); ?></span>
            </a>
        </li>        
		<li class="<?php if ($page_name == 'bill_collection') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/bill_collection" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('invoice_help');?><?php */ ?>">
                               <!--<i class="icon-money icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/student-fee.png" />
                <span><?php echo translate('Fees Payment'); ?></span>
            </a>
        </li>
        <li class="<?php if ($page_name == 'report') echo 'dark-nav active'; ?>">
            <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/report/" rel="tooltip" data-placement="right" 
               data-original-title="<?php echo translate('Payment&nbsp;Report');?>">
                <!--<i class="icon-money icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/student-fee-report.png" />
                <span><?php echo translate('Payment Report'); ?></span>
            </a>
        </li>
        <!------Admit card setup --->
        <li class="<?php if ($page_name == 'admitcard') echo 'active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?admin/admit_card"  window="new" win_height="816px" win_width="1200px">
                          <!--<i class="icon-h-sign"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/fees-setup.png" />
                <span><?php echo translate('admit card setup'); ?></span>
            </a>
        </li>
                <!------Admit card Print --->
        <li class="<?php if ($page_name == 'admitcard_print') echo 'active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?admin/admit_card_print"  window="new" win_height="816px" win_width="1200px">
                          <!--<i class="icon-h-sign"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/fees-setup.png" />
                <span><?php echo translate('admit card print'); ?></span>
            </a>
        </li>
         <!------ Testimonial setup --->
        <li class="<?php if ($page_name == 'testimonial') echo 'active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?admin/testimonial"  window="new" win_height="816px" win_width="1200px">
                          <!--<i class="icon-h-sign"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/fees-setup.png" />
                <span><?php echo translate('Testimonial setup'); ?></span>
            </a>
        </li>
                <!------Testimonial Print --->
        <li class="<?php if ($page_name == 'testimonial_print') echo 'active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?admin/testimonial_print"  window="new" win_height="816px" win_width="1200px">
                          <!--<i class="icon-h-sign"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/fees-setup.png" />
                <span><?php echo translate('testimonial print'); ?></span>
            </a>
        </li>
         <!------ TC setup --->
        <li class="<?php if ($page_name == 'transfar_certificate') echo 'active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?admin/transfar_certificate"  window="new" win_height="816px" win_width="1200px">
                          <!--<i class="icon-h-sign"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/fees-setup.png" />
                <span><?php echo translate('TC setup'); ?></span>
            </a>
        </li>
                <!------Testimonial Print --->
        <li class="<?php if ($page_name == 'transfar_certificate_print') echo 'active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?admin/transfar_certificate_print"  window="new" win_height="816px" win_width="1200px">
                          <!--<i class="icon-h-sign"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/fees-setup.png" />
                <span><?php echo translate('TC print'); ?></span>
            </a>
        </li>
        <li class="<?php if ($page_name == 'due_report') echo 'dark-nav active'; ?>">
            <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/due_report/" rel="tooltip" data-placement="right" 
               data-original-title="<?php echo translate('Due&nbsp;Report');?>">
                <img src="<?php echo base_url(); ?>template/images/icons/student-fee-report.png" />
                <span><?php echo translate('Due Report'); ?></span>
            </a>
        </li>
        <!------Income----->
        <li class="<?php if ($page_name == 'income') echo 'dark-nav active'; ?>">
            <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/income" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('invoice_help');?><?php */ ?>">
                <!--<i class="icon-money icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/income.png" />
                <span><?php echo translate('Income'); ?></span>
            </a>
        </li>
        <li class="<?php if ($page_name == 'income_report') echo 'dark-nav active'; ?>">
            <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/income_report/" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('invoice_help');?><?php */ ?>">
                <!--<i class="icon-money icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/income-report.png" />
                <span><?php echo translate('Income Report'); ?></span>
            </a>
        </li>
        
        <!------Expense----->
        <li class="<?php if ($page_name == 'expense') echo 'dark-nav active'; ?>">
            <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/expense" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('invoice_help');?><?php */ ?>">
                <!--<i class="icon-money icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/expense.png" />
                <span><?php echo translate('Expense'); ?></span>
            </a>
        </li>
		
		 <!------Expense Report----->
        <li class="<?php if ($page_name == 'expense_report') echo 'dark-nav active'; ?>">
            <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/expense_report/" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('invoice_help');?><?php */ ?>">
                <!--<i class="icon-money icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/expense-report.png" />
                <span><?php echo translate('Expense Report'); ?></span>
            </a>
        </li>
        
        <?php if($this->session->userdata('user_role') != 'accountant'){ ?>		
 
		<!------salary setup --->
		<li class="<?php if ($page_name == 'salary_setup') echo 'active'; ?>">
			<a href="<?php echo base_url(); ?>index.php?admin/salary_setup">
						  <!--<i class="icon-h-sign"></i>-->
				<img src="<?php echo base_url(); ?>template/images/icons/salary.png" />
				<span><?php echo translate('salary'); ?></span>
			</a>
		</li>
		
		<!------Salary Generate --->
		<li class="<?php if ($page_name == 'salary_genarate') echo 'active'; ?>">
			<a href="<?php echo base_url(); ?>index.php?admin/salary_genarate">
						  <!--<i class="icon-h-sign"></i>-->
				<img src="<?php echo base_url(); ?>template/images/icons/salary-generate.png" />
				<span><?php echo translate('Salary Generate'); ?></span>
			</a>
		</li>
		
		<!------Salary Sheet --->
	<!--	<li class="<?php if ($page_name == 'salary_status') echo 'active'; ?>">
			<a href="<?php echo base_url(); ?>index.php?admin/salary_status">
						 
				<img src="<?php echo base_url(); ?>template/images/icons/salary-sheet.png" />
				<span><?php echo translate('Salary Sheet'); ?></span>
			</a>
		</li>   -->
		
		<li class="<?php if ($page_name == 'salary_status') echo 'active'; ?>">
			<a href="<?php echo base_url(); ?>index.php?admin/salary_status" rel="tooltip" data-placement="right" window="new" win_height="816px" win_width="1200px">
						 
				<img src="<?php echo base_url(); ?>template/images/icons/salary-sheet.png" />
				<span><?php echo translate('Salary Sheet'); ?></span>
			</a>
		</li>
		
		<!------Salary Report --->
		<li class="<?php if ($page_name == 'salaryreport') echo 'dark-nav active'; ?>">
			<!--<span class="glow"></span>-->
			<a href="<?php echo base_url(); ?>index.php?admin/salaryreport/" rel="tooltip" data-placement="right" 
			   data-original-title="<?php /* ?><?php echo translate('invoice_help');?><?php */ ?>" window="new" win_height="816px" win_width="1200px">
				<!--<i class="icon-money icon-1x"></i>-->
				<img src="<?php echo base_url(); ?>template/images/icons/salary-report.png" />
				<span><?php echo translate('salary_Report'); ?></span>
			</a>
		</li>
		
        <!------book----->
        <li class="<?php if ($page_name == 'book') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/book" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('book_help');?><?php */ ?>">
                               <!--<i class="icon-book icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/book.png" />
                <span><?php echo translate('library'); ?></span>
            </a>
        </li>

        <!------transport----->
        <li class="<?php if ($page_name == 'transport') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/transport" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('transport_help');?<?php */ ?>">
                               <!--<i class="icon-truck icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/transport.png" />
                <span><?php echo translate('transport'); ?></span>
            </a>
        </li>

        <!------dormitory----->
        <li class="<?php if ($page_name == 'dormitory') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/dormitory" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('dormitory_help');?><?php */ ?>">
                               <!--<i class="icon-hospital icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/dormitory.png" />
                <span><?php echo translate('dormitory'); ?></span>
            </a>
        </li>
		
        <!------noticeboard----->
        <li class="<?php if ($page_name == 'noticeboard') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/noticeboard" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('noticeboard_help');?><?php */ ?>">
                               <!--<i class="icon-columns icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/noticeboard.png" />
                <span><?php echo translate('noticeboard'); ?></span>
            </a>
        </li>
		
		 <!------Holiday----->
        <li class="<?php if ($page_name == 'holiday') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/holiday" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('noticeboard_help');?><?php */ ?>">
                               <!--<i class="icon-columns icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/noticeboard.png" />
                <span><?php echo translate('holiday'); ?></span>
            </a>
        </li>

        <!------System Settings--->
        <li class="<?php if ($page_name == 'system_settings') echo 'active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?admin/system_settings">
                          <!--<i class="icon-h-sign"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/system_settings.png" />
                <span><?php echo translate('system_settings'); ?></span>
            </a>
        </li>
					
        <!------Manage Language--->
        <li class="<?php if ($page_name == 'manage_language') echo 'active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?admin/manage_language">
                          <!--<i class="icon-globe"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/language.png" />
                <span><?php echo translate('manage_language'); ?></span>
            </a>
        </li>
        <?php } ?>

        <!------manage own profile--->
        <li class="<?php if ($page_name == 'manage_profile') echo 'dark-nav active'; ?>">
                <!--<span class="glow"></span>-->
            <a href="<?php echo base_url(); ?>index.php?admin/manage_profile" rel="tooltip" data-placement="right" 
               data-original-title="<?php /* ?><?php echo translate('profile_help');?><?php */ ?>">
                               <!--<i class="icon-lock icon-1x"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/profile.png" />
                <span><?php echo translate('profile'); ?></span>
            </a>
        </li>
        
        <?php if($this->session->userdata('user_role') != 'accountant'){ ?>
        <!------Backup and Restore--->
        <li class="<?php if ($page_name == 'backup_restore') echo 'dark-nav active'; ?>">
            <a href="<?php echo base_url(); ?>index.php?admin/backup_restore">
            <!--<i class="icon-download-alt"></i>-->
                <img src="<?php echo base_url(); ?>template/images/icons/backup.png" />
                <span><?php echo translate('backup_restore'); ?></span>
            </a>
        </li>
        <?php } ?>
    </ul>

</div>