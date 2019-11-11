<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dynamic Web Project 轉 Maven Project</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 700px;
}
</style>
</head>
<body>
	<div class="title">Dynamic Web Project 轉 Maven Project步驟及注意事項</div>

	<span class="functiontitle">步驟：</span>
	<BR> 1.於Project上按右鍵→Configure→Convert to Maven Project
	<BR> 2.於接著出現的視窗中直接按下Finish
	<BR> 3.若於WEB-INF/lib資料夾中有內容(JAR檔)，將需要轉入為maven的新資料，直接按下Finish。
	<BR>
	<BR>
	<HR>
	<span class="functiontitle">注意事項：</span>
	<BR>1.建議在轉為Maven Project之前，先將WEB-INF/lib內的「非手寫JAR檔」(註1.)刪除
	<BR>
	<BR>註1：此有兩種情況：
	<BR>(1).先確定為maven無法引入的JAR檔
	<BR>(2).由自己轉出的JAR檔
	<BR>此上兩種JAR檔不要刪除。

</body>
</html>