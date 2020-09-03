<?php
include('./dbconnect.php');
  if(isset($_POST['userName'])){
    $id = $_POST['userName'];
    $password = $_POST['password'];
    $sql = "SELECT * FROM user WHERE user_id = '$id' AND user_pw = '$password'";
    $result = $pdo->prepare($sql);
    $result->execute();

    if($result->rowCount() >0){
      echo true;
    }else{
      echo '아이디 또는 비밀번호가 일치하지 않습니다.';
    }
  }else{
    echo '넘어온 값이 없습니다.';
  }
  
 ?>
