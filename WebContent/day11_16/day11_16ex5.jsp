<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新建Maven Project步驟及注意事項</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">新建 Maven Project 步驟及注意事項</div>
	<span class="functiontitle">步驟：</span>
	<BR> 1.File → New → Maven Project
	<BR> 2.於接著出現的視窗中直接按下Next
	<BR> 3.於接著出現的視窗中選擇最下方的maven-archetype-webapp後按下Next
	<BR>
	4.於接著出現的視窗中於GroupId打上索引package(例如com)，下方的ArtifactID打上專案名稱(PackageName。)接著按下Finish
	<BR>
	<BR>
	<HR>
	<span class="functiontitle">注意事項：</span>
	<BR> 1.此種方法新增的專案，Java原檔將須放置在左側Java Resources 中 src/main/java
	<BR> 2.此種方法新增的專案，網頁檔將須放置在左側src中的main中的webapp

</body>
</html>