<?php
include('./dbconnect.php');
if(isset($_POST['userName'])){
      $id = $_POST['userName'];
    // if($_SESSION['id'] == $id){
      $sql = "SELECT * FROM user WHERE user_id = '$id'";
      $stmt = $pdo->prepare($sql);
      $stmt -> execute();
      $result = $stmt->fetch();
      $userNumber = $result['user_number'];
      $sql = "SELECT * FROM problem_check WHERE user_number = $userNumber";
      $stmt = $pdo->prepare($sql);
      $stmt -> execute();
      $result2 = $stmt->fetchAll(PDO::FETCH_ASSOC);
      $problem['problem'] = true;
      if($result2){
        foreach($result2 as $problemId){
          if($problemId['is_correct'] == 1){
            $problem['correct'][] = $problemId['problem_id'];
          }else{
            $problem['wrong'][] = $problemId['problem_id'];
          }
        }
      }else{
        $problem['problem'] = false;
      }


      $result = json_encode($problem);
      echo $result;
    // } else{
    //   echo '접속된 아이디가 다릅니다';
    // }
}else{
  echo '오류';
}
 ?>
