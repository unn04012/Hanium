<?php
include('./dbconnect.php');

if(isset($_POST['num'])){
  $problemNum = $_POST['num'];
  $sql = "SELECT * FROM problem_check WHERE problem_id = $problemNum";
  $result = $pdo->prepare($sql);
  $result->execute();
  $total  = $result->rowCount();
  $result = $result->fetchAll(PDO::FETCH_ASSOC);
  $totalTryNum = 0;
  foreach($result as $tryNum){
    $totalTryNum +=  $tryNum['try_number'];
  }

  $correctRate = round(($total / $totalTryNum) * 100).'%';
  echo $correctRate;
}
 ?> 
