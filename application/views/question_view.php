<!DOCTYPE html>
<html>
<head>
	<title>Play quiz</title>
</head>
<body>
<h2>Play the Quiz</h2>

<form method="post" action="<?php echo base_url().'index.php/welcome/result_display/'?>">
       
<?php foreach($questions as $row) 
{ 
	//print_r($row);
?>
<?php $ans = array($row->choice1,$row->choice2,$row->choice3,$row->answer);
shuffle($ans); 
//print_r($ans);
?>

<p><?php echo $row->que_id?>)<?php echo $row->question_name?></p>

<input type="radio" name="quizid<?=$row->que_id?>" value="<?=$ans[0]?>" required> <?=$ans[0]?><br>
<input type="radio" name="quizid<?=$row->que_id?>" value="<?=$ans[1]?>" required> <?=$ans[1]?><br>
<input type="radio" name="quizid<?=$row->que_id?>" value="<?=$ans[2]?>" required> <?=$ans[2]?><br>
<input type="radio" name="quizid<?=$row->que_id?>" value="<?=$ans[3]?>" required> <?=$ans[3]?><br>

<?php } ?> <br><br>
<input type="hidden" name="qid" value="<?php echo $id;?>">
<input type="submit" value="Submit!">
</body>
</html>