<?php
  require_once('../config/database.php');
    $email = $_SESSION["user"];
    $sqlu = "SELECT * FROM user WHERE email = '$email'";
    //get thông tin của người dùng hiện tại
  $result = $conn->query($sqlu);
  $users = $result->fetch(PDO::FETCH_ASSOC);

  $magiamgia = $_GET['magiamgia'];
  $magiam = $_GET['magiam'];
  $users_name = $_POST["kh_ten"];
  $diachis = $_POST["kh_diachi"];
  $kh_dienthoai = $_POST["kh_dienthoai"];
   $kh_note = $_POST["note"];
  function rand_string( $length ) {
    //ngẫu nhiên tạo mã hóa đơn
    $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    $size = strlen( $chars );
    for( $i = 0; $i < $length; $i++ ) {
    $str .= $chars[ rand( 0, $size - 1 ) ];
     }
     
    return $str;
  }
  $sqlu = "SELECT * FROM user WHERE email = '$email'";
  //get thông tin của người dùng hiện tại
  $result = $conn->query( $sqlu);
  $users = $result->fetch(PDO::FETCH_ASSOC);

  $users_money = $users['money'];
                if(isset($_POST["addOrder"])){
                    //get tất cả sản phẩm có trong giỏ hàng của người dùng hiện tại
                    $query = $conn->query("SELECT * FROM `cart` WHERE `email` = '$email'");
                                while($row1 = $query->fetch(PDO::FETCH_ASSOC)){
                                    $madon = "shophoalen_".rand_string(5);
                                    $idS = $row1['id'];
                                    $idsp = $row1['idsp'];
                                    $nameS = $row1['name'];
                                    $imageS = $row1['image'];
                                    $priceS = $row1['price'];
                                    if($priceS<0){
                                        $priceS = 0;
                                    }
                                    $format = "d/m/y G:i:s";
                                    $thoigian = date($format, time());
                                    $soluongS = $row1['soluong'];
                                    $tongtienS = $row1['tongtien']-$magiamgia;
                                    if($tongtienS<0){
                                        $tongtienS = 0;
                                    }
                                    $lienket = $row1['lienket'];
                                    // lần lượt thêm từng sản phẩm vào trong đơn hàng và thông báo về tele rằng 
                                    //có người đã đặt hàng
                                    $sql = "INSERT IGNORE INTO donhang (madonhang,tennguoimua,email,name,image,price,trangthai,thoihan,soluong,tongtien,lienket,idsp,thoigian,diachi,dienthoai) VALUES ('$madon','$users_name','$email','$nameS','$imageS','$priceS','Đã Đặt Hàng','$thoihan','$soluongS','$tongtienS','$lienket','$idsp','$thoigian','$diachis','$kh_dienthoai')";
                                    if ($conn->query($sql)) {
                                        $delete = "DELETE FROM `cart` WHERE `id` = '$idS'";
                                        //xóa sản phẩm đó khỏi giỏ hàng
                                        $conn->query( $delete);
                                        
                                    } else {
                                        echo '<script>alert("Bạn đã đặt hàng thất bại!")</script>';
                                        echo "<script>history.back();</script>";
                                    }
                                        // Giảm số lượng mã giảm giá
                                    if (!empty($magiamgia)) {
                                            $update_magiamgia = "UPDATE magiamgia SET soluong = soluong - 1 WHERE magiam = '$magiamgia'";
                                    $conn->query($update_magiamgia);
                                    }

                                }
                                echo '<script>alert("Bạn Đã Đặt Hàng Thành Công!")</script>';
                                echo "<script>window.location = '$site_domain/donhang.php'</script>";
 }
 ?>