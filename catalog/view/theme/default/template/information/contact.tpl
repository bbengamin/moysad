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
      
      <h2 class="title-item not-white-title">Контакты</h2>
      
      <div class="panel panel-default">
        <div class="panel-body">
          <div class="row">
            
            <div class="col-sm-6 col-md-3"><strong><?php echo $store; ?></strong><br />
              <address>
              <span class="contact-text-item"><?php echo $address; ?></span>
              </address>
            </div>
            <div class="col-sm-6 col-md-3"><strong>Телефоны</strong><br>
              <span class="contact-text-item"><a href='tel:<?php echo $telephone; ?>'><?php echo $telephone; ?></a></span><br />
              <span class="contact-text-item"><a href='tel:<?php echo $telephone2; ?>'><?php echo $telephone2; ?></a></span><br />
              <span class="contact-text-item"><a href='tel:<?php echo $telephone3; ?>'><?php echo $telephone3; ?></a></span><br />
              <br />
              <?php if ($fax) { ?>
              <strong><?php echo $text_fax; ?></strong><br>
              <?php echo $fax; ?>
              <?php } ?>
            </div>
            <div class="col-sm-6 col-md-3">
              <?php if ($open) { ?>
              <strong><?php echo $text_open; ?></strong><br />
              <span class="contact-text-item"><?php echo $open; ?></span><br />
              <br />
              <?php } ?>
              <?php if ($comment) { ?>
              <strong><?php echo $text_comment; ?></strong><br />
              <?php echo $comment; ?>
              <?php } ?>
            </div>
            <div class="col-sm-6 col-md-3">
              <strong>Email</strong><br>
              <span class="contact-text-item"><a href='mailto:<?php echo $config_email; ?>'><?php echo $config_email; ?></a></span>
            </div>
          </div>
        </div>
      </div>
      <?php if ($locations) { ?>
      <h3><?php echo $text_store; ?></h3>
      <div class="panel-group" id="accordion">
        <?php foreach ($locations as $location) { ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <i class="fa fa-caret-down"></i></a></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
            <div class="panel-body">
              <div class="row">
                <?php if ($location['image']) { ?>
                <div class="col-sm-3"><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" /></div>
                <?php } ?>
                <div class="col-sm-3"><strong><?php echo $location['name']; ?></strong><br />
                  <address>
                  <?php echo $location['address']; ?>
                  </address>
                  <?php if ($location['geocode']) { ?>
                  <a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                  <?php } ?>
                </div>
                <div class="col-sm-3"> <strong><?php echo $text_telephone; ?></strong><br>
                  <?php echo $location['telephone']; ?><br />
                  <br />
                  <?php if ($location['fax']) { ?>
                  <strong><?php echo $text_fax; ?></strong><br>
                  <?php echo $location['fax']; ?>
                  <?php } ?>
                </div>
                <div class="col-sm-3">
                  <?php if ($location['open']) { ?>
                  <strong><?php echo $text_open; ?></strong><br />
                  <?php echo $location['open']; ?><br />
                  <br />
                  <?php } ?>
                  <?php if ($location['comment']) { ?>
                  <strong><?php echo $text_comment; ?></strong><br />
                  <?php echo $location['comment']; ?>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <div class="map-box">
        <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A6808c021a176229e5281b52a4d25bdedbf0f58072adca84bcecee2f205465879&amp;width=100%25&amp;height=100%&amp;lang=ru_UA&amp;scroll=false"></script>
      </div>
      <h2 class="title-item not-white-title">Свяжитесь с нами</h2>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="clearfix contact-page-form">
          <div class="col-sm-6">
            <div class="input-field ">
                <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" placeholder='Ваше имя' />
                <?php if ($error_name) { ?>
                <div class="text-danger"><?php echo $error_name; ?></div>
                <?php } ?>
            </div>
            <div class="input-field">
                <input type="text" name="phone" class="form-control phone-input" placeholder='Ваш телефон' />
            </div>
            <div class="input-field">
                <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" placeholder='Ваш e-mail' />
                <?php if ($error_email) { ?>
                <div class="text-danger"><?php echo $error_email; ?></div>
                <?php } ?>
            </div>
          </div>
          <div class="col-sm-6">
            <div class="input-field">
                <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control" placeholder='Ваше сообщение'><?php echo $enquiry; ?></textarea>
                <?php if ($error_enquiry) { ?>
                <div class="text-danger"><?php echo $error_enquiry; ?></div>
                <?php } ?>
            </div>
            <?php echo $captcha; ?>
            <div class="input-field">
              <button type="submit">Отправить</button>
            </div>
          </div>
      </form>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
