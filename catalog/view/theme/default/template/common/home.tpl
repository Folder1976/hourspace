<?php echo $header; ?>

<?php
$session = array_shift($_SESSION);
$lang = $session['language'];
?>

<main class="home">
  <div class="home-block home-block-1" style="background-image: url(/image/foto/foto1.jpg);">
    <div class="container">
      <div class="logo">
        <img src="/image/logo.png" alt="">
      </div>
      <div class="slogan">
        <p><?php echo $text_a_place_where; ?><br>
        <?php echo $text_everything_is_free_except_time; ?></p>
      </div>
      <div class="social">
        <a href="http://facebook.com/hourspaceTLV/"><img src="/catalog/view/theme/default/image/ico/fb-white.png" alt="fb"></a>
        <a href="https://www.instagram.com/hour.space/"><img src="/catalog/view/theme/default/image/ico/instagram-white.png" alt="instagram"></a>
      </div>
    </div>
    <div class="next-page-img"></div>
  </div>

  <div class="home-block home-block-2">
    <div class="container">
      <h2><?php echo $text_rates;?></h2>

      <div class="row row-img">
        <div class="col-sm-4 col-xs-12">
          <img src="/catalog/view/theme/default/image/transl/<?php echo $lang; ?>/hour.png" alt="">
          <p>15 <?php echo $text_nik; ?></p>
        </div>
        <div class="col-sm-4 col-xs-12">
          <img src="/catalog/view/theme/default/image/transl/<?php echo $lang; ?>/day.png" alt="">
          <p>60 <?php echo $text_nik; ?></p>
        </div>
        <div class="col-sm-4 col-xs-12">
          <img src="/catalog/view/theme/default/image/transl/<?php echo $lang; ?>/month.png" alt="">
          <p>650 <?php echo $text_nik; ?></p>
        </div>
      </div>

      <p class="ff-2"><?php echo $text_discounst_and_membership; ?></p>

      <p class="btn-wrap"><a href="/rates" class="g-btn"><?php echo $text_details; ?></a></p>

    </div>
    <div class="container hr-wrap"><hr></div>
  </div>


  <div class="home-block home-block-3">
    <div class="container">
      <h2><?php echo $text_hire; ?></h2>

      <p><?php echo $text_we_are_located_in; ?></p>

      <div class="row row-img">
        <div class="col-sm-4 col-xs-12 floor">
          <img src="/catalog/view/theme/default/image/transl/<?php echo $lang; ?>/floor_0.jpg" alt="">
          <p class="nis">150 <?php echo $text_nik; ?></p>
          <p><?php echo $text_per_hour; ?></p>
        </div>
        <div class="col-sm-4 col-xs-12 floor">
          <img src="/catalog/view/theme/default/image/transl/<?php echo $lang; ?>/floor_1.jpg" alt="">
          <p class="nis">100 <?php echo $text_nik; ?></p>
          <p><?php echo $text_per_hour; ?></p>
        </div>
        <div class="col-sm-4 col-xs-12 floor">
          <img src="/catalog/view/theme/default/image/transl/<?php echo $lang; ?>/whole_space.jpg" alt="">
          <p class="nis">400 <?php echo $text_nik; ?></p>
          <p><?php echo $text_per_hour; ?></p>
        </div>
      </div>

      <p class="btn-wrap"><a href="/room_hire" class="g-btn"><?php echo $text_details; ?></a></p>

    </div>
    <div class="container hr-wrap"><hr></div>
  </div>



  <div class="home-block home-block-4">
    <div class="container">
      <div class="title">
        <h3><?php echo $text_time_club;?></h3>
        <h3><?php echo $text_coworcing; ?></h3>
        <h3><?php echo $text_creative_space; ?></h3>
      </div>

      <div class="row row-img">
        <div class="col-sm-6 col-xs-12">
          <img src="/catalog/view/theme/default/image/time1.png" alt="">
          <p><?php echo $text_co_working_mode; ?></p>
        </div>
        <div class="col-sm-6 col-xs-12">
          <img src="/catalog/view/theme/default/image/time2.png" alt="">
          <p><?php echo $text_child_mode; ?></p>
        </div>
      </div>

      <!--div class="bott-div"><?php echo $text_join_us_on; ?></div-->

    </div>
    <div class="container hr-wrap"><hr></div>
  </div>


  <div class="home-block home-block-5">
    <div class="container">
      <h2><?php echo $text_whichever; ?></h2>

      <div class="product-menu">
        <ul>
          <li>
            <div class="img"><img src="/catalog/view/theme/default/image/ico/tea.jpg" alt=""></div>
            <div class="name"><?php echo $text_tea; ?></div>
          </li>
          <li>
            <div class="img"><img src="/catalog/view/theme/default/image/ico/snacks.jpg" alt=""></div>
            <div class="name"><?php echo $text_snacks; ?></div>
          </li>
          <li>
            <div class="img"><img src="/catalog/view/theme/default/image/ico/coffee.jpg" alt=""></div>
            <div class="name"><?php echo $text_coffee; ?></div>
          </li>
          <li>
            <div class="img"><img src="/catalog/view/theme/default/image/ico/lemonade.jpg" alt=""></div>
            <div class="name"><?php echo $text_lemonade; ?></div>
          </li>
          <li>
            <div class="img"><img src="/catalog/view/theme/default/image/ico/projector.jpg" alt=""></div>
            <div class="name"><?php echo $text_projector; ?></div>
          </li>
          <li>
            <div class="img"><img src="/catalog/view/theme/default/image/ico/playstation.jpg" alt=""></div>
            <div class="name"><?php echo $text_playstation; ?></div>
          </li>
        </ul>
        <ul>
          <li>
            <div class="img"><img src="/catalog/view/theme/default/image/ico/printer.jpg" alt=""></div>
            <div class="name"><?php echo $text_printer; ?></div>
          </li>
          <li>
            <div class="img"><img src="/catalog/view/theme/default/image/ico/chargers.jpg" alt=""></div>
            <div class="name"><?php echo $text_chargers; ?></div>
          </li>
          <li>
            <div class="img"><img src="/catalog/view/theme/default/image/ico/scanner.jpg" alt=""></div>
            <div class="name"><?php echo $text_scanner; ?></div>
          </li>
          <li>
            <div class="img"><img src="/catalog/view/theme/default/image/ico/wifi.jpg" alt=""></div>
            <div class="name"><?php echo $text_wifi; ?></div>
          </li>
          <li>
            <div class="img"><img src="/catalog/view/theme/default/image/ico/board_games.jpg" alt=""></div>
            <div class="name"><?php echo $text_board_games; ?></div>
          </li>
          <li>
            <div class="img"><img src="/catalog/view/theme/default/image/ico/books.jpg" alt=""></div>
            <div class="name"><?php echo $text_books; ?></div>
          </li>
        </ul>
      </div>

    </div>
  </div>



</main>

<?php echo $footer; ?>