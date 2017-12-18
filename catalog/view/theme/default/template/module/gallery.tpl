<?php if (!empty($heading_title)) { ?>
  <h3><?php echo $heading_title; ?></h3>
<?php } ?>
<link rel="stylesheet" type="text/css" media="all" href="/catalog/view/theme/default/stylesheet/gallery/font-awesome.min.css" />
<?php if ( !empty($direction) && $direction == 'rtl' ) {?>
	<link rel="stylesheet" type="text/css" media="all" href="/catalog/view/theme/default/stylesheet/gallery/jgallery-rtl.min.css?v=1.6.0" />
<?php } else { ?>
	<link rel="stylesheet" type="text/css" media="all" href="/catalog/view/theme/default/stylesheet/gallery/jgallery.min.css?v=1.6.0" />
<?php } ?>
<script type="text/javascript" src="/catalog/view/theme/default/js/gallery/jgallery.min.js?v=1.6.0"></script>
<script type="text/javascript" src="/catalog/view/theme/default/js/gallery/touchswipe.min.js"></script>
<div class="row">

<div id="gallery">
	<?php foreach ($images as $gimage) { ?>
		<a href="<?php echo $gimage['image']; ?>"><img src="<?php echo $gimage['thumb']; ?>" alt="<?php echo $gimage['title']; ?>" /></a>
	<?php } ?>
</div>
</div>
<script type="text/javascript">
$( "#gallery" ).jGallery( {
		"transition":"moveToLeft_moveFromRight",
		"transitionCols":"1",
		"transitionRows":"1",
		"thumbnailsPosition":"top",
		"thumbType":"image",
		"mode":"standard",
		//"height": "calc(100vh - 100px)",
		"height": "950px",
		"thumbHeight": 100,
		"thumbHeightOnFullScreen": 150,
		"thumbWidth": 100,
		"thumbWidthOnFullScreen": 150,
		"swipeEvents":"true",
		"textColor": '#fff',
		"zoomSize": 'fill',
		"backgroundColor": '#000'

	} );
</script>
