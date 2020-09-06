<?php
if(isset($_GET['num'])){
  header('content-type:text/plain');
  $problemNum = $_GET['num'];  
  $description = readfile("./Problem/$problemNum/description.txt");
}
 ?>
