<?php
include('./dbconnect.php');
if(isset($_POST['userName'])){
    $id = $_POST['userName'];
    $sql = "SELECT * FROM problem_check WHERE user_id = '$id'";
    $stmt = $pdo->prepare($sql);
    $stmt -> execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

    $result = json_encode($result);

    echo $result;
}
 ?>
