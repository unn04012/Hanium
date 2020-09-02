<?php
include('./dbconnect.php');

  if(isset($_POST['id'])){
    $id = $_POST['id'];
    $pw = $_POST['pw'];
    $email = $_POST['email'];

    $sql = "INSERT INTO user(user_id, user_pw, user_email, user_date) VALUES('$id', '$pw', '$email', now())";
    $result = mysqli_query($conn, $sql);
    if($result){
      echo '회원가입되었습니다.';
    }else{
      echo '회원가입 실패'.mysqli_error($conn);
    }
  }
?>
