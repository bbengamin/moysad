<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      
      <h2 class="title-item not-white-title"><?php echo $heading_title; ?></h2>
      <?php if ($description) { ?>
      <div class="row">
        <?php if ($description) { ?>
        <div class="col-sm-12 category-description"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($products) { ?>
      <div class="row">
        <div class="sorts-box">
          <div class="sorts-box-item">
            <div class="sorts-box-item-inner">
              <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
            </div>
            <div class="sorts-box-item-inner">
              <select id="input-sort" class="form-control" onchange="location = this.value;">
                <?php foreach ($sorts as $sorts) { ?>
                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="sorts-box-item">
            <div class="sorts-box-item-inner">
              <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
            </div>
            <div class="sorts-box-item-inner">
              <select id="input-limit" class="form-control" onchange="location = this.value;">
                <?php foreach ($limits as $limits) { ?>
                <?php if ($limits['value'] == $limit) { ?>
                <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
        </div>
      </div>
      
      <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12 col-sm-4 col-md-3">
          <div class="product-thumb transition">
      <div class="image">
        <a href="<?php echo $product['thumb']; ?>" data-fancybox="images" data-caption="<?php echo $product['name']; ?>">
          <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
        </a>
      </div>
      <div class="caption">
        <h4>
          <a><?php echo $product['name']; ?></a>
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
      <div class="row">
        <div class="col-sm-12 pagination-box"><?php echo $pagination; ?></div>
        
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="product-btn product-btn-new"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
