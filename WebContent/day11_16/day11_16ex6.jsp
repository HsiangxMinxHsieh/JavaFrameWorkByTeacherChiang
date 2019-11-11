<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>匯出與匯入自製的JAR檔</title>
<link rel=stylesheet type="text/css" href="../css/class.css">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<body>
	<div class="title">匯出與匯入自製的JAR檔</div>
	<span class="functiontitle">匯出自製的JAR檔：</span>
	<BR>1.於左方專案欄任意處按下右鍵→Export。
	<BR>2.於接著出現的視窗點擊Java，選擇JAR File後按下Next。
	<BR>3.於接著出現的視窗上方選擇要轉出囗JAR檔的Java檔、下方Browse選擇轉出的路徑與檔名，完成後按下Finish。
	<BR>4.找到於步驟3.下方選擇的路徑，即可發現剛才轉出的JAR檔。
	<BR>
	<BR>
	<HR>
	<span class="functiontitle">匯入自製的JAR檔：</span>
	<BR>1.於Project上按右鍵→Build Path→Configure Build Path。
	<BR>2.於接著出現的視窗右側頁籤選擇Libraries→右側選擇Add External JARS
	<BR>3.於接著出現的視窗中，選擇要匯入的JAR檔位置選擇後按下開啟。
	<BR>4.完成後按下Apply And Close即可完成。
	<BR>

</body>
</html>