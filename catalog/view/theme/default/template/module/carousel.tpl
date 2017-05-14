<h2 class="title-item">Посление проекты</h2>
<div id="carousel<?php echo $module; ?>" class="owl-carousel">
  <?php foreach ($banners as $banner) { ?>
  <div class="item text-center">
    <a href="<?php echo $banner['image']; ?>" class='last-work-item-wrap' data-fancybox="images" data-caption="<?php echo $banner['title']; ?>">
      <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    </a>
  </div>
  <?php } ?>
</div>
<script type="text/javascript">
$('#carousel<?php echo $module; ?>').owlCarousel({
	items: 3,
	autoPlay: false,
	navigation: true,
	navigationText: ['<i class="material-icons">navigate_before</i>', '<i class="material-icons">navigate_next</i>'],
	pagination: false
});
</script>