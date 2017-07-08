<?php

spl_autoload_register( function($className){
	include_once 'db/'.$className.'.php';
});

if($base == "index.php")
{
	$model = new Model;
	$cities = $model->joinQuery('city_division', 'city_division_description', 'id', 'fk_city_division_id');
}

elseif($base == "list.php")
{
	if(isset($_POST['id']))
	{
		$model = new Model;
		$properties = $model->selectSpecefic('properties', 'fk_city_division_id', $_POST['id']);
	}
	else echo "<script> window.location = 'index.php' </script>";
}

elseif($base = "details.php")
{
	if(isset($_POST['id']))
	{
		$model = new Model;
		$property_details = $model->joinQuerySpecefic('properties', 'property_details', 'id', 'fk_properties_id', 'id', $_POST['id']);
		$accessories = explode(" | ", $property_details[0]->access);
		$utilities = explode(" | ", $property_details[0]->utility);
		$room_images = explode(" | ", $property_details[0]->room_img);
	}
	else echo "<script> window.location = 'index.php' </script>";
}
?>