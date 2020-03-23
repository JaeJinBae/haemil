<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>법무사 김재현 사무소</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=4">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/collapsibleQnA.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@media only screen and (min-width:320px) and (max-width:766px){
	body{
		position: relative;
	}
	header{
		width:100%;
		background:#fff;
		position:fixed;
		z-index: 99;		
	}
	footer{
		width:100%;
		min-width:320px;
		background:#2a2a2a;
	}
	section{
		width:100%;
		min-width:320px;
		padding-top:64px;
	}
	.topImg{
		width:100%;
	}
	.topImg > img{
		width:100%;
	}
	.pcTopImg{
		display:none;
	}
	.sideMenu, .callInfo{
		display:none;
	}
	.navWrap{
		width:100%;
		height:45px;
		clear:both;
		background: #033c60;
		position: relative;
		z-index: 10;
	}
	.navWrap .navUl{
		width:100%;
		margin:0 auto;
	}
	.navWrap .navUl > li{
		height:45px;
		border-left:1px solid #31506c;
		float:left;
		text-align: center;
	}
	.navWrap .navUl > li:last-child{
		width:45%;
		text-align: left;
	}
	.navWrap .navUl > li a{  
		font-size: 16px;
		color:white;
		line-height: 45px;
		margin:0 15px;
	}
	.navWrap .navUl > li:first-child{
		text-align: center;
	}
	.navWrap .navUl > li:last-child{
		border-right:1px solid #31506c;
	}
	.navWrap .navUl > li:first-child a > img{
		margin-top:10px;
	}
	.navWrap .navUl > li a > .btnArrow{
		/* margin-left:25px;  */
		margin-right:10px;
		margin-top:14px;
		float:right;
		width:20px;
	}
	.navWrap .navUl > li:last-child a > .btnArrow{
		margin-left:15px;
	}
	.sub_subDropdown{
		display: none;
		background: #2e465b;
	} 
	.sub_subDropdown > li{
		text-align: left;
		border-bottom:1px solid lightgray;
	}
	.sub_subDropdown > li a{
		height:40px; 
		line-height: 40px !important;
		font-size: 16px !important;
	}
	.sub_subDropdown > li a:hover{
		font-weight: bold;
	}
	.navWrap .navUl > li:hover > .sub_subDropdown {
		display: block;
	}
	.content{ 
		width:100%;
	}
	.contentTitle{
		width:100%;
		text-align: center;
		margin:30px 0;
		font-size:23px;
	}
	.content > img{
		width:100%;
	}
	/* collapsible QnA */
	.collapsibleWrap{
		padding:0;
		width:98%;
		margin: 50px auto;
		list-style: none;
	}
	.collapsible{
		margin-bottom:3px;
	}
	.collapsible_title{
		padding:10px 15px;
		background: rgb(245, 245, 245);
		border:1px solid #e3e3e3;
		border-radius: 4px;
		text-align: left;
	}
	.collapsible_title > a{
		display:block;
		font-size:16px;
	}
	.collapsible_title > a:hover{
		text-decoration: underline;
		color:#5c5c5c;
	}
	.collapsibleContent{
		font-size:15px;
		padding:15px;
		border:1px solid #e3e3e3;
		text-align: left;
	}
	.selected{
		text-decoration: underline !important;
		font-weight: bold;
		color:#5c5c5c !important;
	}
}
@media only screen and (min-width:767px) and (max-width:1099px){
	body{
		position: relative;
	}
	header{
		width:100%;
		min-width:767px;
		/* height:95px; */
		background: #033c60;
		position: absolute;
		top:0; 
		z-index: 99;
	}
	section{
		width:100%;
		min-width:767px;
	}
	footer{
		width:100%;
		min-width:767px;
		background:#2a2a2a;
	}
	.topImg{
		width:100%;
		padding-top:98px;
	}
	.topImg > img{
		width:100%;
	}
	.mTopImg{
		display:none;
	}
	.contentWrap{
		width:767px;
		margin:0 auto;
		overflow:hidden;
		background: #f5f5f5; 
	}
	.sideMenuWrap{
		float:left;
		width:160px;		
	}
	.sideMenu{
		width:100%;
		text-align: center;
	}
	.sideMenu > h3{
		font-weight:600;
		padding:15px 0;
		background: #033c60;
		color:#fff;
		letter-spacing:2px;
		font-size:20px;
	}
	.sideMenuUl{
		width:150px;
		margin:0 auto;
	}
	.sideMenuUl > li{
		width:100%;
		padding:15px 0;
		border-bottom:1px solid lightgray;
	}
	.sideMenuUl > li > a{
		width:100%;
		font-size:15px;
		text-align: left;
	}
	.sideMenuUl > li:nth-child(4){
		border-bottom:3px solid lightgray;
	}
	.sideMenuUl > li:nth-child(4) > a{
		font-weight:600;
		color: black;
	}
	.callInfo{
		width:100%;
		border:1px solid lightgray;
		padding:15px;
		margin-top:20px;
		background: #fff;
	}
	.callInfoTitle{
		margin-bottom:10px;
	}
	.callInfoTitle:not(#callInfoTitle){
		margin-top:15px;
	}
	.callInfo > h3{
		font-weight:600;	
		color: #0072bc;
		font-size:18px;
	}
	.callInfo > .secondChild{
		margin-bottom:8px;
	}
	.callInfo > h5{
		font-size:14px;
		font-weight:500;
	}
	.callInfo > .callInfoTitle:not(#callInfoTitle) ~ h5{
		font-weight:500;
		font-size:18px;
	}
	.smalltxt{
		font-size:13px;
	}
	.blank{
		display:block;
		margin-left:30px; 
	}
	.navWrap{
		display:none;
	}
	.content{ 
		float:right;
		width:607px;
		background: #fff;
	}
	.contentTitle{
		width:100%;
		text-align: center;
		margin:50px 0;
		font-size:30px;
	}
	.content > img{
		width:100%;
	}
	/* collapsible QnA */
	.collapsibleWrap{
		padding:0;
		width:90%;
		margin: 50px auto;
		list-style: none;
	}
	.collapsible{
		margin-bottom:3px;
	}
	.collapsible_title{
		padding:10px 15px;
		background: rgb(245, 245, 245);
		border:1px solid #e3e3e3;
		border-radius: 4px;
		text-align: left;
	}
	.collapsible_title  >a{
		display:block;
		font-size:18px;
	}
	.collapsible_title > a:hover{
		text-decoration: underline;
		color:#5c5c5c;
	}
	.collapsibleContent{
		font-size:15px;
		padding:15px;
		border:1px solid #e3e3e3;
		text-align: left;
	}
	.selected{
		text-decoration: underline !important;
		font-weight: bold;
		color:#5c5c5c !important;
	}
}
@media only screen and (min-width:1100px){
	body{
		position: relative;
	}
	header{
		width:100%;
		min-width:1100px;
		/* height:115px; */
		background: #033c60;
		position: absolute;
		top:0; 
		z-index: 99;
	}
	section{
		width:100%;
		min-width:1100px;
	}
	footer{
		width:100%;
		min-width:1100px;
		background:#2a2a2a;
	}
	.topImg{
		width:100%;
		padding-top:115px;
	}
	.topImg > img{
		width:100%;
	}
	.mTopImg{
		display:none;
	}
	.contentWrap{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
		background: #f5f5f5; 
	}
	.sideMenuWrap{
		float:left;
		width:230px;		
	}
	.sideMenu{
		width:100%;
		text-align: center;
	}
	.sideMenu > h3{
		font-weight:600;
		padding:20px 0;
		background: #033c60;
		color:#fff;
		letter-spacing:2px;
	}
	.sideMenuUl{
		width:150px;
		margin:0 auto;
	}
	.sideMenuUl > li{
		width:100%;
		padding:15px 0;
		border-bottom:1px solid lightgray;
	}
	.sideMenuUl > li > a{
		width:100%;
		font-size:19px;
		text-align: left;
	}
	.sideMenuUl > li:nth-child(4){
		border-bottom:3px solid lightgray;
	}
	.sideMenuUl > li:nth-child(4) > a{
		font-weight:600;
		color: black;
	}
	.callInfo{
		width:100%;
		border:1px solid lightgray;
		padding:15px;
		margin-top:20px;
		background: #fff;
	}
	.callInfoTitle{
		margin-bottom:10px;
	}
	.callInfoTitle:not(#callInfoTitle){
		margin-top:15px;
	}
	.callInfo > h3{
		font-weight:600;	
		color: #0072bc;
	}
	.callInfo > .secondChild{
		margin-bottom:8px;
	}
	.callInfo > h5{
		font-size:15px;
		font-weight:500;
	}
	.callInfo > .callInfoTitle:not(#callInfoTitle) ~ h5{
		font-weight:600;
		font-size:20px;
	}
	.smalltxt{
		font-size:14px;
	}
	.navWrap{
		display:none;
	}
	.content{ 
		float:right;
		width:870px;
		background: #fff;
	}
	.contentTitle{
		width:100%;
		text-align: center;
		margin:80px 0;
	}
	.content > h2{
		width:100%;
		text-align: center;
		font-weight:bold;
		padding:30px 0;
	}
	.contentBox{
		width:100%;
		height:825px;
		background: url("${pageContext.request.contextPath}/resources/images/menu01TopImgTest2.png") no-repeat;
		background-size:cover;
		position: relative;
	}
	.contentBox > p{
		width:697px;
		margin:0 auto;
		padding-top:440px;
		font-size:17px;
		line-height: 35px;
	}
	.content > img{
		width:100%;
	}
	/* collapsible QnA */
	.collapsibleWrap{
		padding:0;
		width:90%;
		margin: 50px auto;
		list-style: none;
	}
	.collapsible{
		margin-bottom:3px;
	}
	.collapsible_title{
		padding:10px 15px;
		background: rgb(245, 245, 245);
		border:1px solid #e3e3e3;
		border-radius: 4px;
		text-align: left;
	}
	.collapsible_title > a{
		display:block;
		font-size:18px;
	}
	.collapsible_title > a:hover{
		text-decoration: underline;
		color:#5c5c5c;
	}
	.collapsibleContent{
		font-size:15px;
		padding:15px;
		border:1px solid #e3e3e3;
		text-align: left;
	}
	.selected{
		text-decoration: underline !important;
		font-weight: bold;
		color:#5c5c5c !important;
	}
}
</style>
</head>
<body>
	<header>
		<jsp:include page="../include/pcHeader.jsp"></jsp:include>
	</header>
	<section>
		<div class="topImg">
			<img class="pcTopImg" src="${pageContext.request.contextPath}/resources/images/menu06TopImg.jpg">
			<img class="mTopImg" src="${pageContext.request.contextPath}/resources/images/mMenu06TopImg.jpg">
		</div>
		<div class="contentWrap">
			<div class="sideMenuWrap">
				<div class="sideMenu">
					<h3>FAQ</h3>
					<ul class="sideMenuUl"> 
						<li><a href="${pageContext.request.contextPath}/menu06_1">개인회생</a></li>
						<li><a href="${pageContext.request.contextPath}/menu06_2">개인파산</a></li>
						<li><a href="${pageContext.request.contextPath}/menu06_3">법인회생</a></li>
						<li><a href="${pageContext.request.contextPath}/menu06_4">법인파산</a></li>
					</ul>
				</div><!-- sideMenu end -->
				<jsp:include page="../include/leftMenu_info.jsp"></jsp:include><!-- callInfo end -->
				<div class="navWrap">
					<ul class="navUl"> 
						<li><a href="${pageContext.request.contextPath}/"><img class="btnHome" src="${pageContext.request.contextPath}/resources/images/home.png"></a></li>
						<li>
							<a href="#none">FAQ<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
							<ul class="sub_subDropdown">
								<li><a href="${pageContext.request.contextPath}/menu01_1">사무소소개</a></li>
								<li><a href="${pageContext.request.contextPath}/menu02_1">개인회생/파산</a></li>
								<li><a href="${pageContext.request.contextPath}/menu03_1">법인회생/파산</a></li>
								<li><a href="${pageContext.request.contextPath}/menu04_1">상속</a></li>
								<li><a href="${pageContext.request.contextPath}/menu05_1">민사</a></li>
								<li><a href="${pageContext.request.contextPath}/menu06_1">FAQ</a></li>
							</ul>
						</li>
						<li>
							<a href="#none">법인파산<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
							<ul class="sub_subDropdown">
								<li><a href="${pageContext.request.contextPath}/menu06_1">개인회생</a></li>
								<li><a href="${pageContext.request.contextPath}/menu06_2">개인파산</a></li>
								<li><a href="${pageContext.request.contextPath}/menu06_3">법인회생</a></li>
								<li><a href="${pageContext.request.contextPath}/menu06_4">법인파산</a></li>
							</ul>	
						</li>
					</ul>
				</div><!-- navWrap end -->
			</div><!-- sideMenuWrap end -->
			<div class="content">
				<h1 class="contentTitle">법인파산 FAQ</h1>
				<ul class="collapsibleWrap">
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#none">Q. 법인(기업)파산 절차를 꼭 해야할까요? </a></h2> 
						<p class="collapsibleContent">
							채무자의 입장에서 법인(기업)파산 절차의 신청에 대해 부정적 의견이 많습니다. 하지만 법인이 재정파탄의 상황에 처하여 청산절차를 진행할 경우 채권자들에게 객관적이고 투명한 채권회수의 기회를 제공할 수 있습니다. 
							또 법인의 입장에서도 개별 채권자들의 민사소송이나 강제집행. 형사고소 등에 대응하기 어려운 부분이 많지만. 파산절차를 통해 이러한 소송을 미연에 방지하고. 전체 비용에 있어서도 효과적입니다.
							또 최근 각 지방법원의 파산부에서는 대표이사가 법인파산 절차등을 통하여 사업체 자산처분을 객관적으로 입증하지 못할 경우. 법인 또는 개인사업체의 연대보증 채무에 대하여 개인파산 및 면책절차에 상당한 불이익을 주고 있기 때문에 충분히 참조하실 필요가 있습니다. 
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q.  법인(기업)파산 신청서의 작성방법은 어떻게 되나요? </a></h2>
						<p class="collapsibleContent">
							가. 파산신청서의 기재사항(제 302조)
							 (1) 신청인 및 그 법정대리인의 성명 및 주소
							 (2) 채무자가 개인인 경우에는 채무자의 성명과 주민등록번호 및 주소
							 (3) 채무자가 개인이 아닌 경우에는 채무자의 상호. 주된 사무소 또는 영업소의 소재지. 대표자의 성명
							 (4) 신청의 취지
							 (5) 신청의 원인
							 (6) 채무자의 사업목적과 업무의 상황
							 (7) 채무자의 발행주식 또는 출자지분의 총수. 자본의 액과 자산. 부채 그 밖의 재산상태
							 (8) 채무자의 재산에 관한 다른 절차 또는 처분으로서 신청인이 알고 있는 것
							 (9) 채권자 파산신청을 하는 떄에는 그가 가진 채권의 액과 원인
							 (10) 주주 및 지분권자가 파산신청을 하는 때에는 그가 가진 주식 또는 출자지분의 수 또는 액
							 
							나. 파산신청서 첨부서면
							 (1) 채권자목록
							 (2) 재산목록
							 (3) 채무자의 수입 및 지출에 관한 목록
							 (4) 그 밖에 대법원규칙에서 정하는 서류 
							
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인(기업)파산 예납금의 기준은 어떻게 되나요? </a></h2>
						<p class="collapsibleContent">
							법인(기업)파산 절차에 소요되는 예납금은 법인의 청산절차를 진행하는 파산관재인의 보수.공고.송달비용으로 사용됩니다. 때문에 부채액의 크기에 따라 파산재단의 규모. 절차의 예상소요기간. 재단수집의 난이도. 채권자의수 를 고려하여 아래와 같이 결정됩니다.
 
							부채액 : 5억원 미만 예납금 : 500만원
							부채액 : 5억원 이상 10억원 미만 예납금 : 700만원
							부채액 : 10억원 이상 50억원 미만 예납금 : 1,200만원
							부채액 : 50억원 이상 100억원 미만 예납금 : 2,000만원
							부채액 : 100억원 이상 500억원 미만 예납금 : 3,000만원
							부채액 : 500억원 이상 1,000억원 미만 예납금 : 4,000만원
							부채액 : 1,000억원 이상 예납금 : 5,000만원 							
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인(기업)파산의 기각사유는 무엇이 있나요? </a></h2>
						<p class="collapsibleContent">
							'채무자 회생 및 파산에 관한 법률' 제 309조 1항과 2항의 기각사유에 따르면 다음과 같습니다.
 
							1. 법원은 다음 각 호의 어느 하나에 해당하는 때에는 파산신청을 기각할 수 있다.
							 (1) 신청인이 절차의 비용을 미리 납부하지 아니한 때
							 (2) 법원에 회생절차 또는 개인회생절차가 계속되어 있고 그 절차에 의함이 채권자 일반의 이익에 부합하는 때
							 (3) 채무자에게 파산원인이 존재하지 아니한 때
							 (4) 신청인이 소재불명인 때
							 (5) 그 밖에 신청이 성실하지 아니한 때
							 
							2. 법원은 채무자에게 파산원인이 존재하는 경우에도 파산신청이 파산절차의 남용에 해당한다고 인정되는 때에는 심문을 거쳐 파산신청을 기각할 수 있다. 
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인(기업)파산 신청후 체불된 임금과 세금은 어떻게 되나요? </a></h2>
						<p class="collapsibleContent">
							법인의 자산이 있는 경우에는 해당 자산을 환가하여 우선적으로 체불임금 및 세금에 배당하고 있으며. 법인이 파산선고 결정을 받을 경우. 임금의 경우는 파산결정문을 발급받아 근로복지공단에 방문하고. 체당금 신청을 진행하면 우선적으로 지급받을 수 있습니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인(기업)파산 절차에서 파산관재인은 어떤 역할을 하나요? </a></h2>
						<p class="collapsibleContent">
							선임된 파산관재인은 법원의 감독하에 채무자의 재산과 부인권 대상 행위. 면책불허가 사유 등을 조사하며. 재산이 있을 경우 이를 환가하여 채권자에게 배당하는 업무를 수행합니다. 예납금은 파산절차비용으로 파산관재인의 보수와 송달료 등으로 활용됩니다.
							따라서 법원은 파산관재인의 선임이 필요한 경우 신청인에 상당한 금액을 파산절차 비용으로 납부할 것을 명령하고. 신청인은 반드시 해당금액을 법원에 납부해야 합니다. 만일 예납명령을 받고도 이에 응하지 않는 경우에는 법원이 파산신청을 기각할 수 있습니다. 
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인(기업)파산의 절차 중 배당이란 무엇인가요? </a></h2>
						<p class="collapsibleContent">
							파산절차 중 배당의 과정은, 파산관재인이 파산재단에 속하는 재산을 환가해 얻은 금전을 파산채권자에게 그 채권의 순위와 채권액에 따라 공평한 비율로 분배하여 변제하는 절차에 해당합니다. 이 단계를 지나게 되면 파산절차가 종결이 되기 때문에 아주 중요한 절차라고 할 수 있습니다.
							*시기에 따른 배당의 구분
							
							1) 중간배당 : 일반적으로 채권조사기일 종료 후 재단 소속 재산이 모두 환가·처분되기 이전이지만 상당한 금원의 배당재원이 축적된 단계에 행하여지는 것을 의미하며, 이 단계에서는 파산재단의 환가와 배당이 병행하여 행해집니다.
							
							2) 최후배당 : 재단의 환가가 모두 종료하여 법인파산의 절차 종결을 전제로 최종적으로 행하여지는 절차입니다.
							
							3) 추가배당 : 최후배당의 배당액 통지를 발한 후에, 새로이 배당에 충당할 상당한 재산이 발생한 때에 보충적으로 행하는 배당절차입니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인(기업)파산의 신청으로 체납세금 문제해결이 가능한가요? </a></h2>
						<p class="collapsibleContent">
							법인(기업)파산의 절차를 신청한 기업의 경우, 법인파산의 신청 시 자산보유 유무에 따라 그 처리방법이 달라집니다.
							1) 법인파산의 신청 기업이 현금화 가능한 자산을 보유한 경우
							해당 재산을 환가하여 우선적으로 체납세금을 변제함으로써 법인의 과점주주(대표자, 이사 등)에 대한 2차 납세 의무가 사라지거나 그 금액을 감소시킬 수 있습니다. 또한 파산선고에 의한 처분으로 발생하는 소득에 대해서도 양도세 등이 부과되지 않습니다.
							
							2) 법인파산의 신청기업이 보유한 자산이 없을 경우
							기업이 현금화 할 재산이 없는 경우에도 배당 절차를 거쳐 체납된 국세를 납부하지만, 잔여 세액에 관하여는 소멸시효 완성으로 인하여 5년 후 결손처리 됨으로써 그 책임이 면제됩니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인파산과 법인회생 절차상의 부인권은 어떻게 다른가요?</a></h2>
						<p class="collapsibleContent">
							① 회생절차상의 부인권은 기업의 유지 및 재건을 위해 채무자의 수익력 내지 기업가치의 회복을 그 목적으로 한다면 파산의 경우 부인권은 일탈한 재산을 회복하고 이를 환가해 채권자들에게 더 많이 배당하려는 것을 그 주된 목적으로 하게 됩니다.
							② 법인파산절차와는 다르게 회생절차의 경우 담보권자도 그 권리행사에 있어 제약을 받기 때문에 절차개시 전에 행한 담보권의 실행 또는 담보권자에 대한 변제는 부인될 수 있습니다. 
							그러나 법인파산절차의 경우 담보권자는 별제권자로서 개별적인 권리행사를 할 수 있기 때문에 절차개시 전에 담보권을 실행하거나 담보권자에게 변제하더라도 부인의 대상이 되지는 않게 됩니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인(기업)파산의 신청에 따른 구체적인 장점은 무엇인가요? </a></h2>
						<p class="collapsibleContent">
							1) 채무자 회사는 단순폐업과는 달리 법인파산의 제도를 이용함으로써 법원의 주관으로 기업보유 자산에 관하여 투명한 조사가 이루어지고, 이를 환가하여 채권자들에게 공평한 배당을 한 후, 잔여채무에 대하여 면책을 받음으로서 변제 책임으로부터 벗어날 수 있습니다.
							2) 기업의 대표자, 이사, 주주 연대보증인 등은 회사에 대한 민사상의 연대보증 책임을 해결할 수 있으며(일반/개인회생 동시진행), 채권자들의 오해로 인한 강제집행면탈, 
							사해행위 취소소송, 부정수표 단속법 위반, 사기, 횡령 등 각종 민 · 형사고소 등의 제기를 방지할 수 있습니다.
							3) 또한 퇴직한 근로자들은 법인파산으로 인한 사유(재판상 도산)으로 체당금을 수급 받을 수 있으므로 기업의 대표자는 임금체불로 인한 근로기준법 위반의 책임에서 벗어날 수 있습니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인(기업)파산을 신청하면 대표이사도 법원에 가야하나요?</a></h2>
						<p class="collapsibleContent">
							법인(기업)파산을 신청하게 되면, 법원은 법인(기업)의 대표이사 및 재무담당 직원 등을 통해 법인(기업)의 재정적 파탄 상황에 처하게 된 경위, 
							법인(기업)의 잔여자산 등에 대하여 심문하는 심문기일이 지정되므로 법원에 1회 출석하는 것이 통상이나, 사안에 따라서 는 법원은 법인(기업)파산선고 결정전에 몇 차례 더 심문기일을 지정할 수 있습니다. 
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인(기업)파산 선고 결정 이후에는 어떻게 되나요?</a></h2>
						<p class="collapsibleContent">
							법인의 자산이 없는 동시폐지 사건의 경우, 파산선고 결정과 동시에 법인파산절차가 종료되지만 법인의 자산이 있는 이시폐지 사건의 경우에는 파산선고 결정일에 파산관재인이 선임되며, 
							이후 법인(기업)의 자산에 대하여 파산관재인이 파산재단을 구성하여 환가, 배당 절차를 진행하게 되고, 더 이상의 파산재단을 구성하여 배당할 자산이 없게 되면 법인(기업)파산 절차가 종료하게 됩니다. 
						</p>
					</li>
				</ul><!-- collapsibleWrap end -->
			</div>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>