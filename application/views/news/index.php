<?php foreach ($news  as $news_item): ?>
        <div class="main">
                <?php echo $news_item['id']; ?>
        </div>
        <div class="main">
                <?php echo $news_item['name']; ?>
        </div>
<?php endforeach; ?>