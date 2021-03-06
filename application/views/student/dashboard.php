	<div class="container-fluid padded">
		<div class="row-fluid">
			<div class="span30">
				<!-- find me in partials/action_nav_normal -->
				<!--big normal buttons-->
				<div class="action-nav-normal">
					<div class="row-fluid">
						<div class="span2 action-nav-button curl-top-left box-shadow-outset">
							<a href="<?php echo base_url();?>index.php?student/marks">
							<img src="<?php echo base_url();?>template/images/icons/marks.png" />
							<span><?php echo translate('marks-attendance');?></span>
							</a>
						</div>
						<div class="span2 action-nav-button curl-top-left box-shadow-outset">
							<a href="<?php echo base_url();?>index.php?student/subject">
							<img src="<?php echo base_url();?>template/images/icons/subject.png" />
							<span><?php echo translate('subject');?></span>
							</a>
						</div>
						<div class="span2 action-nav-button curl-top-left box-shadow-outset">
							<a href="<?php echo base_url();?>index.php?student/class_routine">
							<img src="<?php echo base_url();?>template/images/icons/routine.png" />
							<span><?php echo translate('class_routine');?></span>
							</a>
						</div>
						<div class="span2 action-nav-button curl-top-left box-shadow-outset">
							<a href="<?php echo base_url();?>index.php?student/invoice">
							<img src="<?php echo base_url();?>template/images/icons/payment.png" />
							<span><?php echo translate('payment');?></span>
							</a>
						</div>
						<div class="span2 action-nav-button curl-top-left box-shadow-outset">
							<a href="<?php echo base_url();?>index.php?student/book">
							<img src="<?php echo base_url();?>template/images/icons/book.png" />
							<span><?php echo translate('library');?></span>
							</a>
						</div>
						<div class="span2 action-nav-button curl-top-left box-shadow-outset">
							<a href="<?php echo base_url();?>index.php?student/dormitory">
							<img src="<?php echo base_url();?>template/images/icons/dormitory.png" />
							<span><?php echo translate('dormitory');?></span>
							</a>
						</div>
                    </div>
                    <div class="row-fluid">
						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?student/transport">
							<img src="<?php echo base_url();?>template/images/icons/transport.png" />
							<span><?php echo translate('transport');?></span>
							</a>
						</div>
						<div class="span2 action-nav-button">
							<a href="<?php echo base_url();?>index.php?student/noticeboard">
							<img src="<?php echo base_url();?>template/images/icons/noticeboard.png" />
							<span><?php echo translate('noticeboard');?></span>
							</a>
						</div>
						
					</div>
				</div>
			</div>
            <!---DASHBOARD MENU BAR ENDS HERE-->
       </div>
       
		<div class="row-fluid">
		
		
            
            <!---TO DO LIST STARTS-->
			<div class="span6">
				<div class="box box-border">
					<div class="box-header">
						<span class="title">
                        	<i class="icon-reorder"></i>
                            <?php echo translate('noticeboard');?>
                        </span>
					</div>
					<div class="box-content scrollable" style="max-height: 500px; overflow-y: auto">
                    
                    	<?php 
						$notices	=	$this->db->get('noticeboard')->result_array();
						foreach($notices as $row):
						?>
						<div class="box-section news with-icons">
							<div class="avatar blue">
								<i class="icon-tag icon-2x"></i>
							</div>
							<div class="news-time">
								<span><?php echo date('d',$row['create_timestamp']);?></span> <?php echo date('M',$row['create_timestamp']);?>
							</div>
							<div class="news-content">
								<div class="news-title">
									<?php echo $row['notice_title'];?>
								</div>
								<div class="news-text">
									 <?php echo $row['notice'];?>
								</div>
							</div>
						</div>
						<?php endforeach;?>
					</div>
				</div>
			</div>
            <!---TO DO LIST ENDS-->
			
            <div class="span6">
				<div class="box box-border">
					<div class="box-header">
						<div class="title">
                        	<i class="icon-calendar"></i>
							<?php echo translate('calendar_schedule');?>
						</div>
					</div>
					<div class="box-content">
						<div id="calendar2">
						</div>
					</div>
				</div>
			</div>
            <!---CALENDAR ENDS-->
       </div>
   </div>
   
  
  <script>
  $(document).ready(function() {

    // page is now ready, initialize the calendar...

    $("#calendar2").fullCalendar({
            header: {
                left: "prev,next",
                center: "title",
                right: "month,agendaWeek,agendaDay"
            },
            editable: 0,
            droppable: 0,
            /*drop: function (e, t) {
                var n, r;
                r = $(this).data("eventObject"), n = $.extend({}, r), n.start = e, n.allDay = t, $("#calendar").fullCalendar("renderEvent", n, !0);
                if ($("#drop-remove").is(":checked")) return $(this).remove()
            },*/
            events: [
			<?php 
			$notices	=	$this->db->get('noticeboard')->result_array();
			foreach($notices as $row):
			?>
			{
                title: "<?php echo $row['notice_title'];?>",
                start: new Date(<?php echo date('Y',$row['create_timestamp']);?>, <?php echo date('m',$row['create_timestamp'])-1;?>, <?php echo date('d',$row['create_timestamp']);?>),
				end:	new Date(<?php echo date('Y',$row['create_timestamp']);?>, <?php echo date('m',$row['create_timestamp'])-1;?>, <?php echo date('d',$row['create_timestamp']);?>) 
            },
			<?php 
			endforeach
			?>
			]
        })

});
  </script>