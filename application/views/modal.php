
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
    <head>
        <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
		<?php include 'application/views/includes.php';?>
        <title>
			<?php 
				$system_name	=	get_single_value('system_name','settings');
				$system_title	=	get_single_value('system_title','settings');
				if(isset($page_title))
			 	echo $page_title;
				else
				echo $system_name;
			 ?>
		</title>
    </head>
    
    
<body>
<?php include $this->session->userdata('login_type').'/modal_'.$page_name.'.php';?>

</body>
</html>