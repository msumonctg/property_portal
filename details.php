<?php

$base = basename(__FILE__);
include_once('app/middleMan.php');
include_once('views/layouts/header.php');
include_once('views/layouts/nav.php');

?>

<div class="container marketing" style="margin-top: 45px;">

    <div class="row" style="margin-bottom: 45px;">
      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading"><?=$property_details[0]->name?> <span class="text-muted"><?=$property_details[0]->floor_space?> ft²</span></h2>
          <p class="lead"><?=$property_details[0]->description?></p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-fluid mx-auto" src="<?=$property_details[0]->img?>" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
          <p>
          	<b> <?=$property_details[0]->name?> </b> <br>
          	<?=$property_details[0]->address?>
          </p>
        </div>
     </div>
      <div class="col-md-3">
		<dl>
      		<dt>Access To:</dt>
      		<?php foreach($accessories as $access): ?>
      			<dd>&#9989; <?=$access?></dd>
      		<?php endforeach; ?>
      	</dl>
      </div>
      <div class="col-md-3">
		<dl>
      		<dt>Utilities:</dt>
      		<?php foreach($utilities as $utility): ?>
      			<dd>&#9989; <?=$utility?></dd>
      		<?php endforeach; ?>
      	</dl>
      </div>
    </div>

	<div class="container">
        <div class="row">
	        <?php foreach($room_images as $room_image): ?>
	          <div class="card">
	            <img src="<?=$room_image?>" data-src="holder.js/100px280/thumb" alt="Card image cap" height="280" width="344">
	          </div>
	        <?php endforeach; ?>
        </div>

    </div>


<?php include_once('views/layouts/footer.php'); ?>