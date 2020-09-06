<?php
include('./dbconnect.php');

if(isset($_POST['userName'])){

  $problemNum = $_POST['problemNum'];
  $userNum = $_POST['userName'];
  $isCorrect = $_POST['isCorrect'];

  $sql = "SELECT * FROM problem_check WHERE user_number = '$userNum' and problem_id = $problemNum";
  $result = $pdo->prepare($sql);
  $result->execute();
  if($fetch = $result->fetch()){
    $try_number = $fetch['try_number'];
    $sql = "UPDATE problem_check SET
            is_correct = $isCorrect,
            try_number = $try_number+1,
            solve_date = now()
            WHERE user_number = '$userNum'";
    echo $sql;
    $result = $pdo->prepare($sql);
    $result->execute();
  }else{
    $sql = "INSERT INTO problem_check(user_number, problem_id, is_correct, try_number) VALUES('$userNum', $problemNum, $isCorrect, 1)";

    $result = $pdo->prepare($sql);
    $result->execute();
  }
}
 ?>
