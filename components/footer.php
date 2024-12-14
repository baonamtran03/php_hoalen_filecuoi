<?php
  require_once('./config/database.php');

?>
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__logo">
                        <a href="#">
                            Shop bán hoa len handmade
                        </a>
                    </div>
                    <p><?php echo $site_about?></p>
                    <a href="#"><img src="img/payment.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                <div class="footer__widget">
                    <h6>Về chúng tôi</h6>
                    <ul>
                        <li><a href="gioithieu.php">Giới thiệu</a></li>
                        <li><a href="lienhengay.php">Liên hệ ngay</a></li>
                        <li><a href="hotromuahang.php">Hướng dẫn mua hàng </a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-6">
                <div class="footer__widget">
                    <h6>Chính Sách</h6>
                    <ul>
                        <li><a href="chinhsachthanhtoan.php">Chính sách thanh toán</a></li>
                        <li><a href="chinhsachvanchuyen.php">Chính sách vận chuyển</a></li>
                        <li><a href="chinhsachbaomat.php">Chính sách bảo mật</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
                <div class="footer__widget">

                    <h6>Liên hệ trực tiếp</h6>
                    <!-- Single Widget -->
                    <div class="footer__newslatter">
                        <ul>
                            <li><a href="#"><?php echo $site_diachi?></a></li>

                            <li><a href="#"><?php echo $site_email?></a></li>
                            <li><a href="#"><?php echo $site_phone?></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="footer__copyright__text">
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    <p>Copyright ©
                        <script>
                        document.write(new Date().getFullYear());
                        </script>
                        All rights reserved | This template is made with <i class="fa fa-heart-o"
                            aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                    </p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form action="search.php" method="GET" class="search-model-form">
            <select id="subcategories" name="subcategory_id">

                <?php 
                                $query = $conn->query("SELECT * FROM `danhmuc`");
                                while($row1 = $query->fetch(PDO::FETCH_ASSOC)){ 
                                ?>
                <option value="<?php echo ''.$row1["danhmucchinh"]?>">
                    <?php echo ''.$row1["tendanhmuc"]?></option>

                <?php }?>
            </select>
            <input type="search" name="tukhoa" style="max-height:45px" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>