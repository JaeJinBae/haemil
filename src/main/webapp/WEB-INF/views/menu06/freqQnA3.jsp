<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>법률사무소 해밀 박상은 변호사</title>
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
		margin:0 10px;
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
		margin-right:10px;
		margin-top:14px;
		float:right;
		width:20px;
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
	.sideMenuUl > li:nth-child(3){
		border-bottom:3px solid lightgray;
	}
	.sideMenuUl > li:nth-child(3) > a{
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
	.sideMenuUl > li:nth-child(3){
		border-bottom:3px solid lightgray;
	}
	.sideMenuUl > li:nth-child(3) > a{
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
							<a href="#none">법인회생<img class="btnArrow" src="${pageContext.request.contextPath}/resources/images/down_arrow.png"></a>
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
				<h1 class="contentTitle">법인회생 FAQ</h1>
				<ul class="collapsibleWrap">
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#none">Q. 법원에 납부하는 예납금이라는 것은 무엇인가요?</a></h2> 
						<p class="collapsibleContent">
							회생절차가 개시되면 관리인(통상 법인의 대표이사)은 즉시 채무자 회사에 속하는 재산의 가액을 평가하고, 재산목록과 대차대조표를 작성하며, 채무자가 회생절차에 이르게 된 사정, 채무자의 업무 및 재산에 관한 사항, 
							보전처분 또는 조사확정재판을 필요로 하는 사정의 유무, 그 밖에 채무자의 회생에 필요한 사항 등을 조사하여야 하나, 관리인의 위와 같은 사항에 대하여 조사할 경우 정확성 및 
							객관성이 떨어지고, 또한 매우 전문적인 조사 분야이기 때문에 고도의 회계, 경영, 경제지식을 갖춘 회계법인을 통해 조사가 이루어지고 있습니다. 
							결국 예납금은 회계법인(회생절차상에는 ‘조사위원’이라고 합니다.) 이 위와 같은 업무를 수행하는데 필요한 용역비를 지급하는 것입니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인에 부과된 세금은 어떻게 되나요?</a></h2>
						<p class="collapsibleContent">
							회생절차 개시결정일을 기준으로 개시결정일 전일까지 납부할 세금은 회생채권 내 조세채권으로 분류되어 법률상 회생계획안내 인가일로부터 만3년 내에 
							변제하시면 되며, 개시결정일 이후에 납부할 세금은 공익채권으로 발생한 시기에 법원의 허가
							(납부할 세금의 금액에 따라 허가사항 유무를 판단합니다)를 얻어 지급하시면 됩니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인회생 신청에서 인가결정을 받기 위한 가장 중요한 것은 무엇인가요?</a></h2>
						<p class="collapsibleContent">
							가장 중요한 것은 채권자들로부터 법률상 정해 놓은 동의율을 충족시키는 것입니다. 회생담보권자의 경우 
							의결권 3/4이상이며, 회생채권자의 경우 의결권 2/3이상이며, 사안에 따라서는 권리보호조항에 의한 강제 인가결정도 신청해 볼 수 있습니다.
							하지만, 채권자들에게 동의를 구함에 있어 가장 중요한 것은 법인(기업)회생 절차를 진행 할 수 밖에 없는 절박한 사유를 밝히고 채권자들과 공감대를 
							형성한 후에 최선을 다해 변제하는 모습이 담긴 회생계획안을 작성하여 채권자들에게 충분한 설명과 양해를 구하시는 것이 선행되어야 합니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인회생계획안이 가결되기위해서 어떤 요건이 필요한가요?</a></h2>
						<p class="collapsibleContent">
							법인회생계획안이 가결되기위해서는 회생채권자의 조에있어서는 그 조에 속하는 의결권 총액의 2/3 이상에 해당하는 의결권을 가진 자의 동의가 필요하고, 회생담보권자의 조에 있어서는 회생담보권자의 의결권 총액의 3/4 이상에 해당하는 의결권을 가진자의 동의가 필요합니다. 
							주주및 지분권자가 의결권을 가질 경우에는 의결권을 행사하는 주주·지분권자의 의결권의 총수의 1/2 이상에 해당하는 의결권을 가진자의 동의도 필요합니다. 
							다만, 간이회생절차는 특칙으로 완화된 가결요건을 두고 있습니다
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인회생계획이 인가된 후에 회생절차는 언제까지 인가요?</a></h2>
						<p class="collapsibleContent">
							인가된 법인회생계획이 모두 수행된 경우뿐만 아니라, 법인회생계획에 따라 변제가 시작되고 법인회생계획의 수행에 지장이 있다고 인정되지 않아 법인회생절차의 목적을 달성할 수 있다고 판단되는 경우에 법원은 회생절차를 종료시킬 수 있습니다. 
							반대로 법인회생절차개시 후에 당해 회생절차가 그 목적을 달성하지 못하여 수행가능성이 없다고 판단될 경우 회생절차를 폐지하고 파산선고를 합니다. 
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인회생절차진행중 재무자의 관리인은 어떤점을 주의해야하나요?</a></h2>
						<p class="collapsibleContent">
							법인회생 개시결정과 동시에 명하는 채권자목록제출, 채권조사기간, 회생계획안 제출기간 등 각종 기간을 반드시 준수하여야 합니다. 
							채권조사는 목록에 기재되거나 신고된 채권들에 대한 시인 또는 부인 여부를 밝히는 절차로서 법률적 쟁점이 있는 경우가 많으므로 법률적 도움을 필요로 하는경우가 많습니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인회생절차에서 채권자는 어떤점을 주의해야하나요?</a></h2>
						<p class="collapsibleContent">
							법인회생절차에서 채권신고를 하지 아니하고 채권자목록에도 기재되지 아니하여 법인회생계획에서 누락된 경우 실권되므로, 채권신고가 되어 있는지 주의를 요합니다. 
							또한 자신의 채권에 대하여 관리인이나 다른 채권자들이 이의를 제기한 경우라면 조사확정재판 등으로 채권확정을 구할 수 있는 기간(조사기간말일 또는 특별조사기일로부터 1개월)이 정해져 있으므로 그 기간을 엄수하여야 합니다. 
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인회생절차가 개시되면 어떠한 효과가 있나요?</a></h2>
						<p class="collapsibleContent">
							법인회생절차 개시결정에의하여 채무자의 업무수행권이나 재산의관리처분권은 채무자로부터 법원에 의하여 선임된관리인 또는 관리인불선임 결정에 따라 관리인으로 보게되는 채무자의대표자(또는 개인 채무자)에게 이전되고, 
							이러한 관리인 등의 행위는 법원의 감독 아래 놓이게 되며 법원의 허가를 받도록 정한 사항에 관하여는 법원의 허가결정을 받은 경우에만 유효하게 됩니다.
							법인회생절차가 개시가 된 경우에는 신청인이 취하는 할 수 없으며, 법원은 사업을 청산할 때의 가치가 사업을계속할 때의 가치보다 큰 것이 명백하게 밝혀진 때 등 일정한 경우 폐지할 수있습니다. 
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인회생절차진행시 채무자회사의 경영자가 회사를 계속 경영할수 있나요?</a></h2>
						<p class="collapsibleContent">
							법은 기존경영자를 관리인으로 선임하거나 관리인불선임 결정에 의하여 기존 경영자를 관리인으로 보도록 하는것을 원칙으로하는 기존 경영자 관리인제도를 규정하고 있습니다. 이를 통해 부실기업의 조기회생절차 진입과 경영노하우의 계속적인 활용으로 회생절차의 효율성을 도모하고 있습니다. 
							반면, 채무자의 재정적 파탄의 원인이 개인인 채무자 또는 채무자의 지배인이 행한 재산의 유용 또는 은닉이나 그에게 중대한 책임이 있는 부실경영에 기인하는 때 등 일정 경우에는 기존 경영자가아닌 제3자를 관리인으로 선임하고 있습니다. 
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인회생에서 조사위원은 어떤일을 하나요?</a></h2>
						<p class="collapsibleContent">
							법원은 법인회생절차에서 채무자의재무,경영분석, 채무자가 재정적파탄에 이르게된경위, 청산가치와 계속기업가치의 산정 등 고도의 전문적인 회계·경영·경제지식과 판단능력이 요구되는사항의 조사를 명하기 위하여선임하고 있습니다. 
							통상적으로 개시결정 무렵조사위원이 선임되고 있으며, 법원이 정하는일정기간 내에 회사의 재산상태 등을 조사한 보고서를 제출하게 됩니다.
						</p>
					</li>
					<li class="collapsible">
						<h2 class="collapsible_title"><a href="#">Q. 법인회생계획안은 누가 어떻게 작성하나요?</a></h2>
						<p class="collapsibleContent">
							법인회생계획안은 채무자, 목록에 기재되어 있거나 신고한회생채권자, 회생담보권자, 주주·지분권자도 회생계획안 제출명령에 정해진 기간 내에 회생계획안을 작성하여 제출할수있습니다. 
							또한, 부채의 2분의 1 이상에 해당하는 채권을 가진 채권자나 이러한 채권자의 동의를 얻은 채무자는 회생절차개시 전까지 회생계획안을 작성하여 법원에 제출할수있습니다. 
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