<?php

$base = basename(__FILE__);
include_once('app/middleMan.php');
include_once('views/layouts/header.php');
include_once('views/layouts/nav.php');

?>

<div class="container marketing">
  <div class="row">
    <div class="col-md-10" style="margin-top:40px; margin-bottom:40px;">
      <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th> Name </th>
                    <th> Address </th>
                    <th> Monthly Charge </th>
                    <th> Photo </th>
                    <th> Details </th>
                </tr>
            </thead>
            <tbody>

            <?php foreach($properties as $property): ?>
                <tr>
                    <td> <?=$property->name?> </td>
                    <td> <?=$property->address?> </td>
                    <td> &#2547; <?=$property->monthly_charge?> </td>
                    <td> <img class="rounded-circle" src="<?=$property->img?>" alt="Generic placeholder image" width="100" height="100"> </td>
                    <form method="POST" action="details.php">
                    <td> <button class="btn btn-secondary" type="submit" name="id" value="<?=$property->id?>"> <h5> &raquo; </h5> </button> </td>
                    </form>
                </tr>
            <?php endforeach; ?>

            </tbody>
        </table>
      </div>
    </div>


<?php include_once('views/layouts/footer.php'); ?>