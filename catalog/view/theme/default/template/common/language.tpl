<?php if (count($languages) > 1) { ?>
<div class="lang">
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">

    <?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $code) { ?>
      <?php if($language['code'] == 'he-il'){ ?>
        <div class="g-btn g-btn--lang js-dropdown"><span><?php echo $language['name']; ?></span></div>
      <?php }else{ ?>
        <div class="g-btn g-btn--lang js-dropdown"><span><?php echo mb_substr($language['name'], 0, 3); ?></span></div>
      <?php } ?>
      
    <?php } ?>
    <?php } ?>
    
    <ul class="dropdown-menu">
      <?php foreach ($languages as $language) { ?>
          <?php if($language['code'] == 'he-il'){ ?>
            <li><button class="g-btn g-btn--lang language-select" type="button" name="<?php echo $language['code']; ?>"><?php echo $language['name']; ?></button></li>
          <?php }else{ ?>
            <li><button class="g-btn g-btn--lang language-select" type="button" name="<?php echo $language['code']; ?>"><?php echo mb_substr($language['name'], 0, 3); ?></button></li>
          <?php } ?>

      <?php } ?>
    </ul>

    <input type="hidden" name="code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />

  </form>
</div>
<?php } ?>

