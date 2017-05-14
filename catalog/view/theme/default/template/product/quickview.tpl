<div class="product-about-info clearfix">
<div class="product-img-box col-sm-5">
 <div class="img-product-slider-in-modal">
    <?php foreach ($images as $image) { ?> 
    <div class="modal-images-item">
      <a href="<?php echo $image['popup']; ?>" data-fancybox="popup" data-caption="<?php echo $name; ?>">
        <img src="<?php echo $image['popup']; ?>" alt="<?php echo $name; ?>" title="<?php echo $name; ?>" class="img-responsive" />
      </a>
    </div>
    <?php } ?>
 </div>
</div>

<div class="product-description-box col-sm-7">
  <h4>
    <a href="<?php echo $href; ?>"><?php echo $name; ?></a>
  </h4>
  
  <p class="price">
   
    <span class="price-main"><?php echo $price; ?></span>
    
  </p>
 
  <p class='modal-description'>
    <?php echo $description; ?>
  </p>
  <div class="product-btns-box">
    <a class="product-btn" data-dismiss="modal">Назад <i class="material-icons">arrow_back</i></a>
    <a class="product-btn quick-buy-btn" data-dismiss="modal" data-toggle="modal" data-id='<?php echo $product_id; ?>'>Купить <i class="material-icons">done_all</i></a>
  </div>
</div>
</div>
<script>
    $('.img-product-slider-in-modal').owlCarousel({
	  	items: 6,
	  	autoPlay: false,
	  	singleItem: true,
	  	navigation: true,
	  	navigationText: ['<i class="material-icons">navigate_before</i>', '<i class="material-icons">navigate_next</i>'],
	  	pagination: false
	  });
</script>