<?php
require_once('./config/database.php');
  unset($_SESSION["user"]);
  echo "<script> window.location ='/index.php' </script>";
  //xóa seesion đăng nhập và chuển về trang home
?>