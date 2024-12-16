<?php
include_once('./components/header.php');

// Fetch FAQs from the database
$query = "SELECT * FROM faq";
$result = $conn->query($query);

?>
<!-- add style -->
<link rel="stylesheet" href="css/faq.css" type="text/css">
<script src="./js/main.js"></script>

<section class="faq-section">
    <div class="container">
        <h2>Câu hỏi thường gặp</h2>
        <div class="faq-list">
            <?php while ($row = $result->fetch(PDO::FETCH_ASSOC)): ?>
                <div class="faq-item">
                    <div class="faq-title" onclick="toggleFAQ(<?php echo $row['id']; ?>)">
                        <h4><?php echo $row['title']; ?></h4>
                        <span class="toggle-icon" id="icon-<?php echo $row['id']; ?>">+</span>
                    </div>
                    <div class="faq-content" id="content-<?php echo $row['id']; ?>" style="display: none;">
                        <p><?php echo $row['content']; ?></p>
                    </div>
                </div>
            <?php endwhile; ?>
        </div>
    </div>
</section>

<script>
function toggleFAQ(id) {
    var content = document.getElementById('content-' + id);
    var icon = document.getElementById('icon-' + id);
    if (content.style.display === "none") {
        content.style.display = "block";
        icon.innerHTML = "-";
    } else {
        content.style.display = "none";
        icon.innerHTML = "+";
    }
}
</script>

<?php
include_once('./components/footer.php');
?>