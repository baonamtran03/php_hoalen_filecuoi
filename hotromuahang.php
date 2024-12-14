<?php
require_once('./config/database.php');
include('components/header.php');

?>

<link rel="stylesheet" href="css/contact.css">
<?php
function renderPurchaseGuide() {
    ?>
    <div class="purchase-guide">
        <h2>Hướng dẫn mua hàng</h2>
        <ol>
            <li>Tìm kiếm sản phẩm: Sử dụng thanh tìm kiếm hoặc các danh mục sản phẩm để tìm kiếm sản phẩm bạn muốn mua.</li>
            <li>Xem thông tin sản phẩm: Nhấp vào sản phẩm để xem thông tin chi tiết về sản phẩm, bao gồm mô tả, hình ảnh và giá cả.</li>
            <li>Thêm vào giỏ hàng: Nhấp vào nút “Thêm vào giỏ hàng” để đặt sản phẩm vào giỏ hàng.</li>
            <li>Kiểm tra giỏ hàng: Nhấp vào biểu tượng giỏ hàng ở góc trên bên phải màn hình để kiểm tra giỏ hàng của bạn.</li>
            <li>Thanh toán: Nhấp vào nút “Thanh toán” để đi đến trang thanh toán.</li>
            <li>Điền thông tin: Điền thông tin của bạn vào các trường yêu cầu, bao gồm địa chỉ giao hàng và thông tin thanh toán.</li>
            <li>Xác nhận đơn hàng: Xác nhận đơn hàng của bạn và chọn phương thức thanh toán.</li>
            <li>Hoàn thành đơn hàng: Nhấp vào nút “Hoàn thành đơn hàng” để hoàn tất quá trình mua hàng.</li>
        </ol>
        <p>Sau khi bạn đã hoàn tất đơn hàng, chúng tôi sẽ liên lạc với bạn để xác nhận đơn hàng và thời gian giao hàng. Nếu bạn gặp bất kỳ khó khăn nào trong quá trình mua hàng, hãy liên hệ với chúng tôi để được hỗ trợ.</p>
    </div>
    <?php
}

renderPurchaseGuide();
?>


<?php
include('components/footer.php');
?>
