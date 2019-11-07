<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>大型商務網站實作資料庫新增語法</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">大型商務網站實作資料庫新增語法</div>

	CREATE SCHEMA `gjun` DEFAULT CHARACTER SET utf8 ;
	<BR>
	<BR> CREATE TABLE `gjun`.`member` ( `id` INT NOT NULL
	AUTO_INCREMENT, `name` VARCHAR(100) NULL, `user` VARCHAR(100) NULL,
	`password` VARCHAR(100) NULL, `Address` VARCHAR(100) NULL, `Mobile`
	VARCHAR(100) NULL, `Phone` VARCHAR(100) NULL, PRIMARY KEY (`id`))
	ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;
	<BR>
	<BR> CREATE TABLE `gjun`.`porder` ( `id` INT NOT NULL
	AUTO_INCREMENT, `name` VARCHAR(100) NULL, `Pro1` INT NULL, `Pro2` INT
	NULL, `Pro3` INT NULL, `Sum` INT NULL, PRIMARY KEY (`id`)) ENGINE =
	InnoDB DEFAULT CHARACTER SET = utf8;


</body>
</html>