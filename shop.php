<?php
  require_once('./config/database.php');
  include_once('./components/header.php');
  include_once('./components/nav.php');
   $danhmuc = $_GET['danhmuc'];
?>

<!-- Breadcrumb Section End -->

<!-- Shop Section Begin -->
<section class="shop spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="shop__sidebar">
                    <div class="shop__sidebar__accordion">
                        <div class="accordion" id="accordionExample">
                            <div class="card">
                                <div class="card-heading">
                                    <a data-toggle="collapse" data-target="#collapseOne">Danh mục</a>
                                </div>
                                <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="shop__sidebar__categories">
                                            <ul class="nice-scroll">
                                                <?php 
                                $query = $conn->query("SELECT * FROM `danhmuc`");
                                while($row1 = $query->fetch(PDO::FETCH_ASSOC)){ 
                                   // print_r( $row1 );
                                    //get tất cả sản phẩm
                                ?>
                                                <li><a href="shop.php?danhmuc=<?php echo ''.$row1["lienket"]?>">
                                                    <?php echo ''.$row1["tendanhmuc"]?>
                                                    </a></li>
                                                <?php }?>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="shop__product__option">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="shop__product__option__left">
                                <p>Hiển thị tất cả kết quả</p>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="row">
                    <?php 
                    // Kết nối đến cơ sở dữ liệu
                    require_once('./config/database.php');

                    // Lấy giá trị danh mục từ URL
                    $danhmuc = isset($_GET['danhmuc']) ? $_GET['danhmuc'] : '';

                    if (!empty($danhmuc)) {
                        // Truy vấn sản phẩm thuộc danh mục được chọn
                        $stmt = $conn->prepare("
                            SELECT p.id, p.nameProduct, p.price, p.image 
                            FROM product AS p
                            JOIN danhmuc AS d ON p.danhmucchinh = d.lienket
                            WHERE d.lienket = :danhmuc
                            ORDER BY p.id DESC
                        ");
                        $stmt->bindParam(':danhmuc', $danhmuc, PDO::PARAM_STR);
                        $stmt->execute();

                        // Lấy danh sách sản phẩm
                        $products = $stmt->fetchAll(PDO::FETCH_ASSOC);
                    } else {
                        // Trường hợp không chọn danh mục, lấy tất cả sản phẩm
                        $stmt = $conn->query("SELECT * FROM product ORDER BY id DESC");
                        $products = $stmt->fetchAll(PDO::FETCH_ASSOC);
                    }

                    // Hiển thị sản phẩm
                    foreach ($products as $product) {
                    ?>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="<?php echo htmlspecialchars($product['image'])?>">
                            </div>
                            <div class="product__item__text">
                                <h6><?php echo htmlspecialchars($product['nameProduct'])?></h6>
                                <h5><?php echo number_format($product['price'])?> VNĐ</h5>
                                <form method="post" action="dao/addCart.php">
                                    <input type="hidden" name="idsp" value="<?php echo htmlspecialchars($product['id'])?>">
                                    <input type="hidden" value="1" name="quanty">
                                    <a><button type="submit" name="addCart" class="add-cart">+ Thêm vào giỏ hàng</button></a>
                                </form>
                                <a href="<?php echo $site_domain?>/shop-details.php?id=<?php echo htmlspecialchars($product['id'])?>" style="color:blue;">Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- Shop Section End -->

<!-- Footer Section Begin -->
<?php
include_once('./components/footer.php');
?>