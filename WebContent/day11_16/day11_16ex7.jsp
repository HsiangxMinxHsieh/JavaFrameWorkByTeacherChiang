<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="generator" content="Aspose.Words for .NET 17.1.0.0" />
<title></title>
</head>
<body>
	<div>
		<p
			style="margin-top: 0pt; margin-bottom: 0pt; widows: 0; orphans: 0; font-size: 18pt">
			<span style="font-family: Calibri">A</span><span
				style="font-family: Calibri">OP(Aspect-Oriented Programming)</span><span
				style="font-family: Calibri">-</span><span
				style="font-family: Calibri">1</span>
		</p>
		<ol type="1" style="margin: 0pt; padding-left: 0pt">
			<li
				style="margin-left: 17.15pt; widows: 0; orphans: 0; padding-left: 6.85pt; font-family: Calibri; font-size: 16pt"><span
				style="font-family: '等线'">攔截器的應用</span></li>
			<li
				style="margin-left: 17.15pt; widows: 0; orphans: 0; padding-left: 6.85pt; font-family: Calibri; font-size: 16pt"><span
				style="font-family: '等线'">把大部分的方法在進行中的開頭與結束相同的步驟，獨立先撰寫好</span><span>,</span><span
				style="font-family: '等线'">透過</span><span>S</span><span>pring</span><span
				style="font-family: '等线'">提共的</span><span>A</span><span>OP</span><span
				style="font-family: '等线'">管理套件，整合應用</span></li>
			<li
				style="margin-left: 17.15pt; widows: 0; orphans: 0; padding-left: 6.85pt; font-family: Calibri; font-size: 16pt"><span
				style="font-family: '等线'">關鍵流程</span></li>
		</ol>
		<p
			style="margin-top: 0pt; margin-bottom: 0pt; widows: 0; orphans: 0; font-size: 12pt">
			<span style="font-family: Calibri">&#xa0;</span>
		</p>
		<p
			style="margin-top: 0pt; margin-bottom: 0pt; widows: 0; orphans: 0; font-size: 12pt">
			<span
				style="height: 0pt; display: block; position: absolute; z-index: 0"><img
				src="../img/cbubg-p9kcs.001.png" width="452" height="210" alt=""
				style="margin-top: 11.4pt; margin-left: 16.8pt; -aw-left-pos: 16.8pt; -aw-rel-hpos: column; -aw-rel-vpos: paragraph; -aw-top-pos: 11.4pt; -aw-wrap-type: none; position: absolute" /></span><span
				style="font-family: Calibri">&#xa0;</span>
		</p>
		<BR> <BR> <BR> <BR> <BR> <BR> <BR>
		<BR> <BR> <BR> <BR> <BR> <BR> <BR>
		
		<ol start="4" type="1" style="margin: 0pt; padding-left: 0pt">
			<li
				style="margin-left: 17.15pt; widows: 0; orphans: 0; padding-left: 6.85pt; font-family: Calibri; font-size: 16pt"><span
				style="font-family: '等线'">撰寫流程</span></li>
		</ol>
		<p
			style="margin-top: 0pt; margin-left: 48pt; margin-bottom: 0pt; text-indent: -24pt; widows: 0; orphans: 0; font-size: 14pt">
			<span style="font-family: '等线'">甲、</span><span
				style="font: 7pt 'Times New Roman'">&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;
			</span><span style="font-family: '等线'">功能</span><span
				style="font-family: Calibri">i</span><span
				style="font-family: Calibri">nterface</span>
		</p>
		<p
			style="margin-top: 0pt; margin-left: 48pt; margin-bottom: 0pt; text-indent: -24pt; widows: 0; orphans: 0; font-size: 14pt">
			<span style="font-family: '等线'">乙、</span><span
				style="font: 7pt 'Times New Roman'">&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;
			</span><span style="font-family: '等线'">實作的</span><span
				style="font-family: Calibri">c</span><span
				style="font-family: Calibri">lass</span>
		</p>
		<p
			style="margin-top: 0pt; margin-left: 48pt; margin-bottom: 0pt; text-indent: -24pt; widows: 0; orphans: 0; font-size: 14pt">
			<span style="font-family: '等线'">丙、</span><span
				style="font: 7pt 'Times New Roman'">&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;
			</span><span style="font-family: '等线'">定義</span><span
				style="font-family: Calibri">b</span><span
				style="font-family: Calibri">efore</span>
		</p>
		<ol type="i" style="margin: 0pt; padding-left: 0pt">
			<li
				style="margin-left: 53pt; widows: 0; orphans: 0; padding-left: 19pt; font-family: Calibri; font-size: 14pt"><span
				style="font-family: Consolas; background-color: #e8f2fe">MethodBeforeAdvice</span><span
				style="font-family: '等线'; background-color: #e8f2fe">介面</span></li>
		</ol>
		<p
			style="margin-top: 0pt; margin-left: 48pt; margin-bottom: 0pt; text-indent: -24pt; widows: 0; orphans: 0; font-size: 14pt">
			<span style="font-family: '等线'">丁、</span><span
				style="font: 7pt 'Times New Roman'">&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;
			</span><span style="font-family: '等线'; background-color: #e8f2fe">定義</span><span
				style="font-family: Consolas; background-color: #e8f2fe">a</span><span
				style="font-family: Consolas; background-color: #e8f2fe">fter</span>
		</p>
		<ol type="i" style="margin: 0pt; padding-left: 0pt">
			<li
				style="margin-left: 53pt; widows: 0; orphans: 0; padding-left: 19pt; font-family: Calibri; font-size: 14pt"><span
				style="font-family: Consolas; background-color: #d4d4d4">AfterReturningAdvice</span><span
				style="font-family: '等线'; background-color: #d4d4d4">介面</span></li>
		</ol>
		<p
			style="margin-top: 0pt; margin-left: 48pt; margin-bottom: 0pt; text-indent: -24pt; widows: 0; orphans: 0; font-size: 14pt">
			<span style="font-family: '等线'">戊、</span><span
				style="font: 7pt 'Times New Roman'">&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;
			</span><span style="font-family: '等线'; background-color: #d4d4d4">定義</span><span
				style="font-family: Consolas; background-color: #d4d4d4">X</span><span
				style="font-family: Consolas; background-color: #d4d4d4">ML</span><span
				style="font-family: '等线'; background-color: #d4d4d4">管理內容</span>
		</p>
		<ol type="i" style="margin: 0pt; padding-left: 0pt">
			<li
				style="margin-left: 53pt; widows: 0; orphans: 0; padding-left: 19pt; font-family: Calibri; font-size: 14pt"><span
				style="font-family: Consolas; font-style: italic; background-color: #e8f2fe">org.springframework.aop.support</span><span
				style="font-family: Consolas; font-style: italic; background-color: #e8f2fe">.NameMatchMethodPointcutAdvisor</span>
				<ol type="1"
					style="margin-right: 0pt; margin-left: 0pt; padding-left: 0pt">
					<li style="margin-left: 15.63pt; padding-left: 8.37pt"><span
						style="font-family: '等线'">方法連結</span><span>b</span><span>efore,after</span></li>
				</ol></li>
			<li
				style="margin-left: 53pt; widows: 0; orphans: 0; padding-left: 19pt; font-family: Calibri; font-size: 14pt"><span
				style="font-family: Consolas; font-style: italic; background-color: #e8f2fe">org.springframework.aop.framework</span><span
				style="font-family: Consolas; font-style: italic; background-color: #e8f2fe">.ProxyFactoryBean</span><span
				style="font-family: Consolas; font-style: italic; background-color: #e8f2fe">"</span>
				<ol type="1"
					style="margin-right: 0pt; margin-left: 0pt; padding-left: 0pt">
					<li style="margin-left: 15.63pt; padding-left: 8.37pt"><span
						style="font-family: '等线'; font-style: italic; background-color: #e8f2fe">整和管理</span></li>
				</ol></li>
		</ol>
		<p
			style="margin-top: 0pt; margin-left: 48pt; margin-bottom: 0pt; text-indent: -24pt; widows: 0; orphans: 0; font-size: 12pt">
			<span style="font-family: '等线'">己、</span><span
				style="font: 7pt 'Times New Roman'">&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;
			</span><span
				style="font-family: Consolas; font-style: italic; background-color: #e8f2fe">A</span><span
				style="font-family: Consolas; font-style: italic; background-color: #e8f2fe">pplication</span><span
				style="font-family: Consolas; font-style: italic; background-color: #e8f2fe">C</span><span
				style="font-family: Consolas; font-style: italic; background-color: #e8f2fe">ontext</span><span
				style="font-family: '等线'; font-style: italic; background-color: #e8f2fe">取出執行</span>
		</p>
	</div>
</body>
</html>