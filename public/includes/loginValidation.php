<?php
session_start();
require 'databaseFiles/database.php';
if( isset($_SESSION['user_id']) ){
  header("Location: ../dashboard.php");
}
if(!empty($_POST['email']) && !empty($_POST['password'])):
  
  $records = $conn->prepare('SELECT id,email,password FROM users WHERE email = :email');
  $records->bindParam(':email', $_POST['email']);
  $records->execute();
  $results = $records->fetch(PDO::FETCH_ASSOC);
  $message = '';
  if(count($results) > 0 && password_verify($_POST['password'], $results['password']) ){
    $_SESSION['user_id'] = $results['id'];
    $_SESSION['user_email']=$results['type'];
   
    header("Location: ../dashboard.php");
  } else {
    $message = 'Disculpa, tu usuario y/o contraseña son incorrectos';
  }
endif;
?>