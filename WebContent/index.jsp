<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>小蝦米第二個產學合作網頁</title>
<link rel=stylesheet type="text/css" href="css/class.css">
<style>
body {
	font-family: arial, "Microsoft JhengHei", "微軟正黑體", sans-serif !important;
}

.title {
	width: 800px;
}

.item {
	break-inside: avoid;
	box-sizing: border-box;
	padding: 10px;
}

.masonry {
	column-count: 1;
	//
	one
	column
	on
	mobile
}

@media ( min-width : 400px) {
	.masonry {
		column-count: 2;
		//
		two
		columns
		on
		larger
		phones
	}
}

@media ( min-width : 1200px) {
	.masonry {
		column-count: 4;
		//
		three
		columns
		on
		Monitor
	}
}

.item__content {
	background: #fefefe;
	border: 2px solid #fcfcfc;
	box-shadow: 0 1px 2px rgba(34, 25, 25, 0.4);
	margin: 0 2px 15px;
	padding: 15px;
	padding-bottom: 10px;
	transition: opacity .4s ease-in-out;
	column-break-inside: avoid;
	display: inline-block;
}
</style>
</head>
<body>

	<br>
	<div class="title">此網頁展示小蝦米於產學合作課程中，向江聖榮老師學習到的技術：</div>
	<div class="title">蝦米上課用專案位置：http://10.10.4.225:8080/JavaFrameWork</div>
	<HR>
	<div class="masonry">
		<div class="item">
			<div class="item__content">
				<span class="functiontitle">第一二堂課： </span> <a
					href="day12/day12ex1_index.jsp" target=_blank><H4>電子商務網站：尺筆訂單</H4></a>
				<a href="day12/day12database.jsp" target=_blank><H4>尺筆訂單資料庫新增語法</H4></a>
			</div>
		</div>
		<div class="item">
			<div class="item__content">
				<span class="functiontitle">第三四五六堂課(Struts)：</span> <a
					href="day34/day34ex1_index.jsp" target=_blank><H4>Struts2示範(只替換Controller)</H4></a>
				<a href="day34/day34_web_xml.jsp" target=_blank><H4>至第三堂課為止的web.xml</H4></a>
				<a href="day34/day34_struts_xml.jsp" target=_blank><H4>至第四堂課為止的struts.xml</H4></a>
				<a href="day56/day56ex1.jsp" target=_blank><H4>TagLib語法簡介</H4></a> <a
					href="day56/day56ex3_index.jsp" target=_blank><H4>CSS用法示範</H4></a>
				<a href="day56/day56_struts_xml.jsp" target=_blank><H4>至第五堂課為止的struts.xml</H4></a>
				<a href="day56/day56ex4_index.jsp" target=_blank><H4>尺筆訂單結合會員製作訂單</H4></a>
				<a href="https://www.nss.com.tw/host/Host_jsp.php" target=_blank><H4>老師推薦的Java
						雲端服務提供網站-戰國策</H4></a>
			</div>
		</div>
		<div class="item">
			<div class="item__content">
				<span class="functiontitle">第七八九十堂課(Hibernate)：</span> <a
					href="day78910/day78ex1_envir.jsp" target=_blank><H4>Hibernate環境安裝</H4></a>
				<a href="day78910/day78910ex2_index.jsp" target=_blank><H4>尺筆訂單首頁(Hibernate+Struts+cssUI)</H4></a>
				<a href="day78910/day78910_struts_xml.jsp" target=_blank><H4>至第十堂課為止的struts.xml</H4></a>
			</div>
		</div>
		<div class="item">
			<div class="item__content">
				<span class="functiontitle">第十一～十六堂課(Spring)：</span> <a
					href="day11_16/day11_16ex1_Spring.jsp" target=_blank><H4>Spring簡介</H4></a> <a
					href="day11_16/day11_16ex1_Spring_example_class.jsp" target=_blank><H4>Spring使用範例(類別)</H4></a> <a
					href="day11_16/day11_16ex2_Spring_example_index.jsp" target=_blank><H4>Spring使用範例(網頁)</H4></a> <a
					href="day34/day34ex4.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex5.jsp" target=_blank><H4>連結標題待修正</H4></a>
			</div>
		</div>
		<div class="item">
			<div class="item__content">
				<span class="functiontitle">第十一十二堂課：</span> <a
					href="day34/day34ex1.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex2.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex3.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex4.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex5.jsp" target=_blank><H4>連結標題待修正</H4></a>
			</div>
		</div>
		<div class="item">
			<div class="item__content">
				<span class="functiontitle">第十三十四堂課：</span> <a
					href="day34/day34ex1.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex2.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex3.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex4.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex5.jsp" target=_blank><H4>連結標題待修正</H4></a>
			</div>
		</div>
		<div class="item">
			<div class="item__content">
				<span class="functiontitle">第十五十六堂課：</span> <a
					href="day34/day34ex1.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex2.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex3.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex4.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex5.jsp" target=_blank><H4>連結標題待修正</H4></a>
			</div>
		</div>
		<div class="item">
			<div class="item__content">
				<span class="functiontitle">第十七十八堂課：</span> <a
					href="day34/day34ex1.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex2.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex3.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex4.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex5.jsp" target=_blank><H4>連結標題待修正</H4></a>
			</div>
		</div>
		<div class="item">
			<div class="item__content">
				<span class="functiontitle">第十九二十堂課：</span> <a
					href="day34/day34ex1.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex2.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex3.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex4.jsp" target=_blank><H4>連結標題待修正</H4></a> <a
					href="day34/day34ex5.jsp" target=_blank><H4>連結標題待修正</H4></a>
			</div>
		</div>
	</div>
</body>
</html>