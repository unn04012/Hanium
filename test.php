<?php
header('content-type:text/plain');

$result = readfile('./Description.txt');

echo $result;


 ?>
