<?php echo $header; ?>
<div class="main-slide-box">
  <div class="container">
    <div class="row">
      <?php echo $content_top; ?>
    </div>
  </div>
</div>

<div class="last-work-slider">
  <div class="container">
    <div class="row">
      <?php echo $content_bottom; ?>
    </div>
  </div>
</div>

<div class="info-box-wrapper">
  <div class="container">
    <div class="row">
      <div class="info-box-inner">
        <h2 class="info-box-title">
          <span class='bigger-text'>
            Ландшафтные работы
          </span>
          <span class='lower-text'>
            Дизайн.Проектирование.<br>Услуги садовника с карантией качества
          </span>
        </h2>
        <div class="info-box-text-box">
          <p>Специалисты по уходу за садом или любым озеленённым объектом.</p>
          <p>Наши специалисты обладают знаниями в таких науках, как цветоводство, агрономия, почвоведение, ботаника, дендрология также навыками ландшафтного дизайнера.<br>
            Садовник выполнит следующие работы по уходу за садом и участком — прополка, полив, уборка листьев, снега, подкормка растений удобрениями, обрезка и стрижка декоративных и плодовых растений, создание декоративных композиций, цветников и др.</p>
        </div>
        <div class="img-man-box">
          <img alt='alt' src='/catalog/view/theme/default/image/mans.png'>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="fetured-box-home-page">
  <div class="container">
    <div class="row">
      <?php echo $column_right; ?>
    </div>
  </div>
</div>

<div class="hww-box">
  <div class="container">
    <div class="row">
      <h2 class="title-item not-white-title">Как мы работаем</h2>
      <div class="hww-inner-box">
        <div class="hww-icons-wrapper">
          <div class="hww-item">
            <span>
              <img alt='alt' src='/catalog/view/theme/default/image/hww1.png'>
            </span>
            <p>Оформляете заявку</p>
          </div>
          <div class="hww-item">
            <span>
              <img alt='alt' src='/catalog/view/theme/default/image/hww2.png'>
            </span>
            <p>Обсуждаете детали заказа с менеджером</p>
          </div>
          <div class="hww-item">
            <span>
              <img alt='alt' src='/catalog/view/theme/default/image/hww3.png'>
            </span>
            <p>Приезжает наша комманда</p>
          </div>
          <div class="hww-item">
            <span>
              <img alt='alt' src='/catalog/view/theme/default/image/hww4.png'>
            </span>
            <p>Мы выполняем работу</p>
          </div>
          <div class="hww-item">
            <span>
              <img alt='alt' src='/catalog/view/theme/default/image/hww6.png'>
            </span>
            <p>Вы получаете отличный результат</p>
          </div>
          <div class="hww-item">
            <span>
              <img alt='alt' src='/catalog/view/theme/default/image/hww5.png'>
            </span>
            <p>Мы получаем оплату</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="form-box-in-page">
  <div class="container">
    <div class="row">
      
      <h2 class="title-item">
        <span class='bigger-text'>
            Обратитесь к менеджеру
          </span>
          <span class='lower-text'>
            и получите консультацию
          </span>
      </h2>
      <div class="form-at-page">
        <form id='form-in-page' class='main-form'>
          <div class="input-field">
            <input type='text' name='name' placeholder='Ваше имя'>
          </div>
          <div class="input-field">
            <input type='tel' name='phone' class='phone-input' placeholder='Ваш телефон'>
          </div>
          <div class="input-field">
            <input type='email' name='email' placeholder='Ваш e-mail'>
          </div>
          <div class="input-field">
            <button type='submit' id='form-in-page-submit'>Отправить</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<div class="hww-box advantages">
  <div class="container">
    <div class="row">
      <h2 class="title-item not-white-title">Наши преимущества</h2>
      <div class="hww-inner-box">
        <div class="hww-icons-wrapper advantages-icons">
          <div class="hww-item advantages-item">
            <span>
              <img alt='alt' src='/catalog/view/theme/default/image/advantages1.png'>
            </span>
            <p>Гарантия качества</p>
          </div>
          <div class="hww-item advantages-item">
            <span>
              <img alt='alt' src='/catalog/view/theme/default/image/advantages2.png'>
            </span>
            <p>Приятная ценовая политика</p>
          </div>
          <div class="hww-item advantages-item">
            <span>
              <img alt='alt' src='/catalog/view/theme/default/image/advantages3.png'>
            </span>
            <p>Опытные специалисты</p>
          </div>
          <div class="hww-item advantages-item">
            <span>
              <img alt='alt' src='/catalog/view/theme/default/image/advantages4.png'>
            </span>
            <p>Более 3-х лет на рынке</p>
          </div>
          <div class="hww-item advantages-item">
            <span>
              <img alt='alt' src='/catalog/view/theme/default/image/advantages5.png'>
            </span>
            <p>Быстрые сроки выполнения работ</p>
          </div>
          <div class="hww-item advantages-item">
            <span>
              <img alt='alt' src='/catalog/view/theme/default/image/advantages6.png'>
            </span>
            <p>Довольные клиенты</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="make-order-box">
  <a data-toggle="modal" data-target="#callback">Оформить заказ</a>
</div>

<!--<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"></div>
    <?php echo $column_right; ?></div>
</div>-->
<?php echo $footer; ?>