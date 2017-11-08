<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="<?php echo $direction; ?>">
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
<!-- <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" /> -->
<!-- <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> -->
<!-- <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" /> -->
<!-- <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" /> -->

<?php if ( $direction == 'rtl' ) {?>
  <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
  <link href="catalog/view/theme/default/stylesheet/style-rtl.min.css" rel="stylesheet">  
<?php } else { ?>
  <link href="https://fonts.googleapis.com/css?family=Indie+Flower|Josefin+Sans" rel="stylesheet">
  <link href="catalog/view/theme/default/stylesheet/style.min.css" rel="stylesheet">
<?php } ?>

<script src="catalog/view/theme/default/js/scripts.js" type="text/javascript"></script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
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

  <div class="page-wrapper">
    <header class="header">
      <div class="container">
        <div class="top-line">
          <button class="top-nav-toggle g-btn js-mob-top-nav"><span><i class="fa fa-bars" aria-hidden="true"></i></span></button>
          <nav class="top-nav">
            <ul>
              <li><a href="/">Home</a></li>
              <li><a href="/concept">Concept</a></li>
              <li><a href="/rates">Rates</a></li>
              <li><a href="/room_hire">Room hire</a></li>
              <li><a href="/team">Team</a></li>
              <li><a href="/contacts">Contacts</a></li>
              <li><a href="/galery">Galery</a></li>
            </ul>
          </nav>
          <?php echo $language; ?>
        </div>
      </div>
    </header>




