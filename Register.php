<?php
include('./dbconnect.php');

  if(isset($_POST['id'])){
    $id = $_POST['id'];
    $pw = $_POST['pw'];
    $email = $_POST['email'];

    $sql = "INSERT INTO user(user_id, user_pw, user_email) VALUES('$id', '$pw', '$email')";
    $result = $pdo->prepare($sql);
    if($result->execute()){
      echo '회원가입되었습니다.';
    }else{
      echo '회원가입 실패';
    }
  }
?>
