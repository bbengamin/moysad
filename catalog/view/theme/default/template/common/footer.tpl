<footer>
  <div class="container">
    <div class="row">
      
      <div class="col-sm-10 head-item-box">
        <div class="row">
          <div class="top-phones-box">
            <ul class="top-phones-inner-box">
              <li><a href='tel:<?php echo $telephone; ?>'><i class="material-icons">phone</i><span><?php echo $telephone; ?></span></a></li>
              <li><a href='tel:<?php echo $telephone2; ?>'><i class="material-icons">phone</i><span><?php echo $telephone2; ?></span></a></li>
              <li><a href='tel:<?php echo $telephone3; ?>'><i class="material-icons">phone</i><span><?php echo $telephone3; ?></span></a></li>
              
              <li><a href='mailto:<?php echo $mail; ?>'><i class="material-icons">local_post_office</i><span><?php echo $mail; ?></span></a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-sm-2 head-item-box">
        <ul class="social-box">
          <li class="social-item"><a href='<?php echo $link_vk; ?>'><i class="fa fa-vk" aria-hidden="true"></i></a></li>
          <li class="social-item"><a href='<?php echo $link_fb; ?>'><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
          <li class="social-item"><a href='<?php echo $link_instagram; ?>'><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
        </ul>  
      </div>
    </div>
    <hr>
    <p class='copy-right'>Создание и поддержка сайтов: <a href='http://studio-luck.ru' target='_blank'>Studio-Luck</a></p>
  </div>
</footer>
<!--modal-more-info-->
<div id="myModal-more-info" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal"><i class="material-icons">close</i></button>
        <div class="in-modal-box" id='quickview-modal-wrapp'>
          
        </div>
      </div>
    </div>
  </div>
</div>

<!--modal-quick-->
<div id="quick-buy" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal"><i class="material-icons">close</i></button>
        <h3 class='modal-title'>Заполните форму</h3>
        <form class="modal-forms" id="quick-buy-form">
          <div class="input-field">
            <input type='text' name='name' placeholder='Ваше имя'>
            <input type='hidden' name='product_id' value='' />
          </div>
          <div class="input-field">
            <input type='tel' name='phone' class='phone-input' placeholder='Ваш телефон'>
          </div>
          <div class="input-field">
            <input type='email' name='email' placeholder='Ваш e-mail'>
          </div>
          <div class="input-field">
            <button type='submit' id='quick-buy-form-submit'>Заказать</button>
          </div>
        </form>
        <h3 class='thanks-text'>Спасибо за заказ, наш менеджер свяжеться с Вами в ближайшее время</h3>
      </div>
    </div>
  </div>
</div>

<!--modal-quick-->
<div id="callback" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal"><i class="material-icons">close</i></button>
        <h3 class='modal-title'>Заполните форму</h3>
        <form class="modal-forms" id="callback-form">
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
            <button type='submit' id='callback-form-submit'>Заказать</button>
          </div>
        </form>
        <h3 class='thanks-text'>Спасибо за заказ, наш менеджер свяжеться с Вами в ближайшее время</h3>
      </div>
    </div>
  </div>
</div>

</body></html>