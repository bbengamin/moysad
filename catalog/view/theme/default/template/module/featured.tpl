<h2 class="title-item not-white-title">Топ декоративных растений</h2>
<div class="row">
  <div class="home-page-featured-slider">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-xs-12">
    <div class="product-thumb transition">
      <div class="image">
        <a href="<?php echo $product['thumb']; ?>" data-fancybox="featured" data-caption="<?php echo $product['name']; ?>">
          <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
        </a>
      </div>
      <div class="caption">
        <h4>
          <a ><?php echo $product['name']; ?></a>
        </h4>
        
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <span class="price-main"><?php echo $product['price']; ?></span>
          <?php } else { ?>
          <span class="price-new price-main">
            <?php echo $product['special']; ?>
          </span> 
          <span class="price-old">
            <?php echo $product['price']; ?>
          </span>
          <?php } ?>
        </p>
        <?php } ?>
      </div>
      <div class="product-btns-box">
        <a class="product-btn more-info-btn" data-toggle="modal" data-id='<?php echo $product["product_id"]; ?>'>Подробнее <i class="material-icons">visibility</i></a>
        <a class="product-btn quick-buy-btn" data-toggle="modal" data-id='<?php echo $product["product_id"]; ?>'>Купить <i class="material-icons">done_all</i></a>
      </div>
    </div>
  </div>
  <?php } ?>
  </div>
</div>


