<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.title {
	width: 500px;
}
</style>
</head>
<script language="JavaScript">
//填充截取法
function padding(num, length) {
    //这里用slice和substr均可
    return (Array(length).join("0") + num).slice(-length);
}

	function ShowTime() {

		var NowDate = new Date();
		var year = NowDate.getYear() + 1900;
		var mm = NowDate.getMonth()+1;
		var dd = NowDate.getDate();
		var h = padding(NowDate.getHours(),2);
		var m = padding(NowDate.getMinutes(),2);
		var s = padding(NowDate.getSeconds(),2);
		document.getElementById('showbox').innerHTML = year + '\/' + mm + '\/'
				+ dd + "  " + h + '：' + m + '：' + s ;
		setTimeout('ShowTime()', 1000);
	}
</script>
<body onload="ShowTime()">
	<font color="white">
		<h2 align=right>巨匠電腦‧台北認證‧台北市中正區公園路30號3F</h2>
		<h5 align=right>
			現在時間：<span id="showbox">2019/11/21 19:07:20</span>
	</font>
	</h5>

</body>
</html>