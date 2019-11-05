<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>資料庫語法</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">資料庫語法內容</div>
	CREATE SCHEMA `company` DEFAULT CHARACTER SET utf8 ;
	<BR>
	<BR> CREATE TABLE `company`.`member` ( `id` INT NOT NULL
	AUTO_INCREMENT, `name` VARCHAR(45) NULL, `user` VARCHAR(45) NULL,
	`password` VARCHAR(45) NULL, PRIMARY KEY (`id`)) ENGINE = InnoDB
	DEFAULT CHARACTER SET = utf8;
	<BR>

	<BR> CREATE TABLE `company`.`porder` ( `id` INT NOT NULL
	AUTO_INCREMENT, `ruler` INT NULL, `pen` INT NULL, `sum` INT NULL,
	PRIMARY KEY (`id`)) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;
	<BR>
	<BR> ALTER TABLE `company`.`porder` ADD COLUMN `name` VARCHAR(45)
	NULL AFTER `id`;
	<BR>
</body>