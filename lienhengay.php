<?php
require_once('./config/database.php');
include('components/header.php');

?>

<!-- Thêm link CSS -->
<link rel="stylesheet" href="css/contact.css">

<section class="contact-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="text-center mb-5">Liên hệ hợp tác và mua hàng cùng Hoa Len Handmade</h2>
            </div>
        </div>
        
        <div class="row">
            <div class="col-lg-6">
                <div class="contact-info">
                    <div class="info-box">
                        <h3 class="text-uppercase text-danger">UY TÍN TẠO NÊN CHẤT LƯỢNG - HOA LEN HANDMADE CAM KẾT VỀ CHẤT LƯỢNG DỊCH VỤ CỦA MÌNH!</h3>
                        
                        <h2 class="text-coral">HOA LEN HANDMADE</h2>
                        <p class="slogan"><em>Đan hi vọng - Móc yêu thương</em></p>
                        
                        <p class="description">
                            Hoa Len Handmade luôn hoạt động 24/7 để có thể lắng nghe những băn khoăn, thắc mắc của quý khách hàng về sản phẩm và dịch vụ của chúng mình!
                        </p>
                        
                    
                        
                        <div class="features mt-4">
                            <div class="feature-item">✦ FREE SHIP</div>
                            <div class="feature-item">✦ THỦ CÔNG</div>
                            <div class="feature-item">✦ ĐỘC QUYỀN</div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-6">
                <div class="contact-form">
                    <form action="" method="POST">
                        <div class="form-group">
                            <input type="text" class="form-control" name="name" placeholder="Họ và tên" required>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" name="email" placeholder="Email" required>
                        </div>
                        <div class="form-group">
                            <input type="tel" class="form-control" name="phone" placeholder="Số điện thoại" required>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="message" rows="5" placeholder="Nội dung liên hệ" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">LIÊN HỆ NGAY</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>


<?php
include('components/footer.php');
?>
