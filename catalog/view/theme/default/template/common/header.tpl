<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="/catalog/view/theme/default/stylesheet/jquery.fancybox.min.css" rel="stylesheet" type="text/css" />
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css" type="text/css" rel="stylesheet" media="screen">
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<script src="/catalog/view/javascript/jquery.fancybox.min.js" type="text/javascript"></script>
<script src="/catalog/view/javascript/jquery.maskedinput.min.js" type="text/javascript"></script>

<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script src="catalog/view/javascript/mobile.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<!--mobile start-->
  <div id="mobile-overlay" onclick="closeNavcategory();closeNavsettings()"></div>
  <div id="category-mob-list" class="sidenav">
    <a href="javascript:void(0)" class="closebtn-mob" onclick="closeNavcategory()"><i class="material-icons">close</i></a>
  </div>
  
  <div id="top-links-mob-box" class="sidenav">
    <a href="javascript:void(0)" class="closebtn-mob" onclick="closeNavsettings()"><i class="material-icons">close</i></a>
  </div>
  
  <!--mobile end-->
<header class='desctop-only-header'>
  <div class="container">
    <div class="row">
      <div class="col-sm-2 head-item-box">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="/"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="/"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-7 head-item-box">
        <div class="top-menu-box">
          <ul class="top-menu-inner-box">
            <li><a href='/' onclick="closeNavcategory();closeNavsettings()">Главная</a></li>
            <li><a href='/index.php?route=information/information&information_id=4' onclick="closeNavcategory();closeNavsettings()">О нас</a></li>
            <li><a href='/gallery' onclick="closeNavcategory();closeNavsettings()">Галерея</a></li>
            <li><a href='/index.php?route=information/contact' onclick="closeNavcategory();closeNavsettings()">Контакты</a></li>
            <li><a href='/index.php?route=information/information&information_id=7' onclick="closeNavcategory();closeNavsettings()">Прайс</a></li>
            <?php if ($categories) { ?>
              <?php foreach ($categories as $category) { ?>
                <?php if ($category['children']) { ?>
                  <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?><i class="material-icons">keyboard_arrow_down</i></a>
                    <div class="dropdown-menu">
                      <div class="dropdown-inner">
                        <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                        <ul class="list-unstyled">
                          <?php foreach ($children as $child) { ?>
                          <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                          <?php } ?>
                        </ul>
                        <?php } ?>
                      </div>
                    </div>
                  </li>
                  <?php } else { ?>
                  <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                <?php } ?>
              <?php } ?>
            <?php } ?>
          </ul>
        </div>
      </div>
      <div class="col-sm-3 head-item-box">
        <div class="top-phones-box">
          <ul class="top-phones-inner-box">
            <li><a href='tel:<?php echo $telephone; ?>' onclick="closeNavcategory();closeNavsettings()"><i class="material-icons">phone</i><span><?php echo $telephone; ?></span></a></li>
            <li><a href='tel:<?php echo $telephone2; ?>' onclick="closeNavcategory();closeNavsettings()"><i class="material-icons">phone</i><span><?php echo $telephone2; ?></span></a></li>
            <li><a href='tel:<?php echo $telephone3; ?>' onclick="closeNavcategory();closeNavsettings()"><i class="material-icons">phone</i><span><?php echo $telephone3; ?></span></a></li>
            <li><a href='#' data-toggle="modal" data-target="#callback" class='only-mobile-btns' onclick="closeNavcategory();closeNavsettings()"><i class="material-icons">phone</i><span>Заказать звонок</span></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</header>
<header class="mobile-header">
    <div class="header-mobile-inner">
      <div class="header-mobile-item mobile-item-category-list">
        <span class="mob-menu-trigger mob-category-trigger" onclick="openNavcategory()">
          <i class="material-icons">menu</i>
        </span>
      </div>
      
      <div class="header-mobile-item mobile-item-logo">
        <?php if ($logo) { ?>
          <a href="/"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
        <?php } else { ?>
          <h1><a href="/"><?php echo $name; ?></a></h1>
        <?php } ?>
      </div>
      
      <div class="header-mobile-item mobile-item-options">
        <span class="mob-menu-trigger mob-settings-trigger" onclick="openNavsettings()">
          <i class="material-icons">settings_phone</i>
         </span>
      </div>
    </div>
  </header>
