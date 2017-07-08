<?php 

class Model
{
	private $conn;

	public function __construct()
	{
		$dbObj = new Database();
		$this->conn = $dbObj->dbConn();
	}

	public function selectAll($table)
	{
		$sql = "SELECT * FROM {$table}";
		$preparedQuery = $this->conn->prepare($sql);
		$preparedQuery->execute();
		$dataFromDb = $preparedQuery->fetchAll(PDO::FETCH_OBJ);
		if(count($dataFromDb)) return $dataFromDb;
		else return false;
	}

	public function joinQuery($table1, $table2, $table1Param, $table2Param)
	{
		$sql = "SELECT * FROM {$table1} INNER JOIN {$table2} ON {$table1}.{$table1Param} = {$table2}.{$table2Param}";
		$preparedQuery = $this->conn->prepare($sql);
		$preparedQuery->execute();
		$dataFromDb = $preparedQuery->fetchAll(PDO::FETCH_OBJ);
		if(count($dataFromDb)) return $dataFromDb;
		else return false;
	}

	public function joinQuerySpecefic($table1, $table2, $table1Param, $table2Param, $whichColumn, $columnData)
	{
		$sql = "SELECT * FROM {$table1} INNER JOIN {$table2} ON {$table1}.{$table1Param} = {$table2}.{$table2Param} WHERE {$table1}.{$whichColumn} = :columnData";
		$preparedQuery = $this->conn->prepare($sql);
		$preparedQuery->execute(array(":columnData" => $columnData));
		$dataFromDb = $preparedQuery->fetchAll(PDO::FETCH_OBJ);
		if(count($dataFromDb)) return $dataFromDb;
		else return false;
	}

	public function selectSpecefic($table, $whichColumn, $columnData)
	{
		$sql = "SELECT * FROM {$table} WHERE {$whichColumn} = :columnData";
		$preparedQuery = $this->conn->prepare($sql);
		$preparedQuery->execute(array(":columnData" => $columnData));
		$dataFromDb = $preparedQuery->fetchAll(PDO::FETCH_OBJ);
		if(count($dataFromDb)) return $dataFromDb;
		else return false;
	}
}

 ?>