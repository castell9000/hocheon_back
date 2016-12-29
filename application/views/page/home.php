<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>
<body>
<table border='1'>
<tr>
<?php foreach ($users as $row):?>
<th><?php echo $row->user_id;?></th>
<?php endforeach;?>
</tr>
<tr>
<?php foreach ($users as $rew):?>
<td><?php echo $row->user_email;?></td>
<?php endforeach;?>
</tr>
</table>
</body>
</html>
