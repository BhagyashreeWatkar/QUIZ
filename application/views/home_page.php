<!DOCTYPE html>
<html>
<head>
	<title>Quiz</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div class="header">
	<h1>Welcome to Quiz</h1>
</div>
<div class="container">
	<form method="post" action="<?php echo base_url().'index.php/welcome/quiz_display/';?>">
			<div class="cont">
			 <p>Choose the Quiz Topic</p><br>
			 <!--<?php //print_r($a); ?>-->
				<select class="form-control" name="category" id="category" required>
					<option value="">Choose your category</option>
					<?php foreach($a as $val): ?>
					<option value="<?php echo $val['category_id']?>"><?php echo $val['category_name']?>
					</option>
               <?php endforeach; ?>

				</select>
			
			</div><br>
			<input type="submit" class="btn" id="gobutton" name="gobutton" value="start">
    </form>
</div>

</body>
</html>

