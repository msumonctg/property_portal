<?php

$base = basename(__FILE__);
include_once('app/middleMan.php');
include_once('views/layouts/header.php');
include_once('views/layouts/nav.php');

?>

    <div class="container marketing" style="margin-top: 45px;">

      <div class="row" style="margin-bottom: 15px;">

      <?php foreach($cities as $city): ?>

        <div class="col-lg-4">
          <img class="rounded-circle" src="<?=$city->img?>" alt="Generic placeholder image" width="140" height="140">
          <h2><?=$city->name?></h2>
          <p><?=$city->description?></p>
          <form method="POST" action="list.php">
            <button class="btn btn-secondary" name="id" value="<?=$city->id?>">View details &raquo;</button>
          </form>
        </div>

      <?php endforeach; ?>

      </div>
      
<?php include_once('views/layouts/footer.php'); ?>