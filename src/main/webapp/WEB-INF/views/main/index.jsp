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
<meta name="naver-site-verification" content="d53046e7ecfe442e3b973c1baeb37ec7fc75031d"/>
<meta name="description" content="대구 법원앞, 개인회생, 개인파산, 민사 등 무료 상담, 빠르고 높은 인가율! 책임관리!">
<meta property="og:type" content="website">
<meta property="og:title" content="법률사무소 해밀 박상은 변호사">
<meta property="og:description" content="대구 법원앞, 개인회생, 개인파산, 민사 등 무료 상담, 빠르고 높은 인가율! 책임관리!">
<meta property="og:image" content="http://www.119-law.com/logo.png">
<meta property="og:url" content="http://www.119-law.com">
<link rel="canonical" href="http://www.119-law.com/">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css?ver=4">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=0"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a3d28e9c9d28c7930cf4fcc7be5bd5f8&libraries=drawing"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@media only screen and (min-width:320px) and (max-width:766px){
	body{
		position: relative;
		z-index: 9;
	}
	header{
		width:100%;
		background:#fff;
		position:fixed;
		z-index: 999;		
	}
	section{
		padding:15px 3px;
		width:100%;
	}
	footer{
		width:100%;
		min-width:320px;
		background:#2a2a2a;
	}
	.mainSlider{
		width:100%;
		min-width:320px;
		padding-top:64px;
	}
	.mainBanner{
		width:100%;
	}
	.mainBanner div img{
		width:100%;
	}
	.pcMainBanner{
		display:none;
	}
	.slick-dots{
		bottom:0;
	}
	.slick-dots li button:before{
		font-size:12px;
	}
	#section1{
		
	}
	.smallTitle{
		padding:10px 0;
		width:350px;
		margin:0 auto;
	}
	.smallTitle > h2{
		font-size:20px;
		font-weight: bold;
	}
	.boxWrap{
		width:100%;
	}
	.mainInfo{
		width:350px;
		margin:0 auto;
		border:1px solid lightgray;
		position: relative;
	}
	.mainInfo > a > img{
		width: 100%;
	}
	#section2{
		width:100%;
	}
	.contentWrap2{
		width:100%;
	}
	.contentBox{
		display:none;
	}
	.contentBox3{
		display:block;
		width:100%;
		margin:0 auto;
	}
	.section2Content_content > .mTimeImg{
		width:350px;
		display:block;
		margin:0 auto;
		border: 1px solid #efefef;
	}
	.pcTimeImg{
		display:none;
	}
	#section3{
		width:100%;
	}
	.contentWrap3{
		width:100%;
		overflow:hidden;
		margin-bottom:12px;
	}
	.txt1{
		float:left;
	}
	.txt2{
		float:left;
		margin-left: 10px;
	}
	.mapWrap{
		width:100%;
		height:200px;
	}
	#map{
		width:100%;
		height:200px;
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
		background: #e4d5b2;
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
	.mainSlider{
		width:100%;
		min-width:767px;
		padding-top:98px;
	}
	.mainBanner{
		width:100%;
	}
	.mainBanner div img{
		width:100%;
	}
	.pcMainBanner{
		display:none;
	}
	#section1{
		padding:50px 0;
		padding-top:25px;
	}
	.contentWrap1{
		width:767px;
		margin:0 auto;
		overflow:hidden;
	}
	.content01{
		width:100%;
	}
	.smallTitle{
		width:100%;
		margin:20px 0;
	}
	.smallTitle > h2{
		font-weight:600;
		display:inline-block;
		font-size:27px;
		margin-left:5px;
	}
	.smallTitle > p{
		display:inline-block;
		font-size:17px;
		color:#a9a9a9;
		margin-left:15px;
		font-weight:600;
	}
	.boxWrap{
		width:100%;
		overflow:hidden;
	}
	.mainInfo{
		width:250px;
		float:left;
		border:1px solid lightgray;
		position: relative;
	}
	.mainInfo > a > img{
		width: 100%;
	}
	.mainInfo:nth-child(2){
		margin:0 8px;
	}
	#section2{
		background:#f5f5f5;
		padding:50px 0;
	}
	.contentWrap2{
		width:767px;
		margin:0 auto;
		overflow:hidden;
	}
	.contentBox{
		float:left;
	}
	.contentBox1{
		width:209px;
	}
	.contentBox2{
		width:349px;
	}
	.contentBox3{
		width:209px;
	}
	.mTimeImg{
		display:none;
	}
	.contentBox4{
		width:33.33%;
		height:153px;
		background:pink;
	}
	.contentBox5{
		width:33.33%;
		height:153px;
		background:yellow;
	}
	.contentBox6{
		width:33.33%;
		height:153px;
		background:#033c60;
	}
	.contentBox4, .contentBox5, .contentBox6{
		display:none;
	}
	.section2Content_content > a, .section2Content_content > a > img, .section2Content_content > img{
		width:100%;
	}
	#section3{
		padding:50px 0;
	}
	.contentWrap3{
		width:767px;
		margin:0 auto;
	}
	.mapWrap{
		width:100%;
		height:300px;
	}
	#map{
		width:100%;
		height:300px;
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
		background: #e4d5b2;
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
	.mainSlider{
		width:100%;
		min-width:1100px;
		padding-top:115px;
	}
	
	.mainBanner{
		width:100%;
	}
	.mainBanner div img{
		width:100%;
	}
	.tmMainBanner{
		display:none;
	}
	#section1{
		padding:50px 0;
		padding-top:25px;
	}
	.contentWrap1{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
	}
	.content01{
		width:100%;
	}
	.smallTitle{
		width:100%;
		margin:20px 0;
	}
	.smallTitle > h2{
		font-weight:600;
		display:inline-block;
	}
	.smallTitle > p{
		display:inline-block;
		font-size:17px;
		color:#a9a9a9;
		margin-left:15px;
		font-weight:600;
	}
	.boxWrap{
		width:100%;
		overflow:hidden;
	}
	.mainInfo{
		width:350px;
		float:left;
		border:1px solid lightgray;
		position: relative;
	}
	.mainInfo > a > img{
		width: 100%;
	}
	.mainInfo:nth-child(2){
		margin:0 25px;
	}
	#section2{
		background:#f5f5f5;
		padding:50px 0;
	}
	.contentWrap2{
		width:1100px;
		margin:0 auto;
		overflow:hidden;
	}
	.contentBox{
		float:left;
	}
	
	.contentBox1{
		width:300px;
		height:350px;
		background: red;
	}
	.contentBox2{
		width:500px;
		height:350px;
		background:blue;
	}
	.contentBox3{
		width:300px;
		height:350px;
		background:green;
	}
	.mTimeImg{
		display:none;
	}
	.contentBox4{
		width:33.33%;
		height:250px;
		background:pink;
	}
	.contentBox5{
		width:33.33%;
		height:250px;
		background:yellow;
	}
	.contentBox6{
		width:33.33%;
		height:250px;
		background:#033c60;
	}
	.contentBox4, .contentBox5, .contentBox6{
		display:none;
	}
	.section2Content_content > a, .section2Content_content > a > img, .section2Content_content > img{
		width:100%;
	}
	#section3{
		padding:50px 0;
	}
	.contentWrap3{
		width:1100px;
		margin:0 auto;
	}
	.mapWrap{
		width:100%;
		height:400px;
	}
	#map{
		width:100%;
		height:400px;
	}
}

</style>
<script type="text/javascript">
	$(function(){
		$(".mainBanner").slick({
			arrows:false,
			infinite:true,
			speed:500,
			fade:true,
			cssEase:'linear',
			autoplay:true,
			autoplaySpeed:4000,
			dots:true,
		});	
	});
</script>
</head>
<body id="main">
	<header>
		<jsp:include page="../include/pcHeader.jsp"></jsp:include>
	</header>
	<div class="mainSlider">
		<div class="mainBanner pcMainBanner">
			<div><img src="${pageContext.request.contextPath}/resources/images/mainSlider1.jpg" alt="법률사무소해밀 박상은변호사"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/mainSlider2.jpg" alt="법률사무소해밀 박상은변호사"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/mainSlider3.jpg" alt="법률사무소해밀 박상은변호사"></div>
		</div>
		<div class="mainBanner tmMainBanner">
			<div><img src="${pageContext.request.contextPath}/resources/images/tmMainSlider1.jpg" alt="법률사무소해밀 박상은변호사"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/tmMainSlider2.jpg" alt="법률사무소해밀 박상은변호사"></div>
			<div><img src="${pageContext.request.contextPath}/resources/images/tmMainSlider3.jpg" alt="법률사무소해밀 박상은변호사"></div>
		</div>
	</div>
	<section id="section1">
		<div class="contentWrap1">
			<div class="content01">
				<div class="smallTitle">
					<h2>법률사무소 해밀 박상은 변호사</h2>
					<p>오랜 경력의 전문가가 최상의 서비스를 제공합니다.</p>ㄴ
				</div>
				<div class="boxWrap">
					<div class="mainInfo info01">
						<a href="${pageContext.request.contextPath}/menu02_1">
							<img src="${pageContext.request.contextPath}/resources/images/mainInfoImg1.jpg">
						</a>
					</div>
					<div class="mainInfo info02">
						<a href="${pageContext.request.contextPath}/menu03_1">
							<img src="${pageContext.request.contextPath}/resources/images/mainInfoImg2.jpg">
						</a>
					</div> 
					<div class="mainInfo info03">
						<a href="${pageContext.request.contextPath}/menu04_1">
							<img src="${pageContext.request.contextPath}/resources/images/mainInfoImg3.jpg">
						</a>
					</div>
				</div><!-- boxWrap end -->
			</div><!-- content01 end -->
		</div><!-- contentWrap -->
	</section><!-- section1 end -->
	<section id="section2">
		<div class="contentWrap2">
			<div class="contentBox1 contentBox">
				<div class="section2Content_title">
					<!-- <h3>태창 인사말</h3> -->
				</div>
				<div class="section2Content_content">
					<a href="${pageContext.request.contextPath}/menu01_1">
						<img src="${pageContext.request.contextPath}/resources/images/mainContentBoxImg1.jpg">
					</a>
				</div>
			</div>
			<div class="contentBox2 contentBox">
				<div class="section2Content_title">
					<!-- <h3>태창 업무방침</h3> -->
				</div>
				<div class="section2Content_content">
					<a href="${pageContext.request.contextPath}/menu01_2">
						<img src="${pageContext.request.contextPath}/resources/images/mainContentBoxImg2.jpg">
					</a>
				</div>
			</div>
			<div class="contentBox3 contentBox">
				<div class="section2Content_title">
					<!-- <h3>고객센터</h3> -->
				</div>
				<div class="section2Content_content">
					<img class="pcTimeImg" src="${pageContext.request.contextPath}/resources/images/mainContentBoxImg3.jpg">
					<img class="mTimeImg" src="${pageContext.request.contextPath}/resources/images/timeTest2.jpg">
				</div>
			</div>
			<div class="contentBox4 contentBox">
				<div class="section2Content_title">
					<h3>개인회생 자주하는질문</h3>
				</div>
			</div>
			<div class="contentBox5 contentBox">
				<div class="section2Content_title">
					<h3>개인파산 자주하는질문</h3>
				</div>
			</div>
			<div class="contentBox6 contentBox">
				<div class="section2Content_title">
					<h3>민사소송 자주하는질문</h3>
				</div>
			</div>
		</div>
	</section><!-- section2 end -->
	<section id="section3">
		<div class="contentWrap3">
			<div class="smallTitle">
				<h2 class="txt1">오시는 길</h2>
				<p class="txt2"><a href="${pageContext.request.contextPath}/menu01_3">더보기+</a></p>
			</div>
		</div>
		<div class="mapWrap">
			<div id="map"></div>
				<script>
					var container = document.getElementById('map');
					var options = {
						center: new daum.maps.LatLng(35.862336, 128.627921),
						level: 3
					};
			
					var map = new daum.maps.Map(container, options);
					
					// 마커가 표시될 위치입니다 
					var markerPosition  = new daum.maps.LatLng(35.862336, 128.627921); 

					// 마커를 생성합니다
					var marker = new daum.maps.Marker({
					    position: markerPosition
					});

					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);
					
					// 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다.
					var iwContent = '<div style="padding-left:15px; padding-top:2px; color:#033c60; font-size:15px; font-weight:bold;">법률사무소 해밀</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

					// 인포윈도우를 생성합니다
					var infowindow = new daum.maps.InfoWindow({
					    content : iwContent
					});

					// 마커에 마우스오버 이벤트를 등록합니다
					daum.maps.event.addListener(marker, 'mouseover', function() {
					  // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
					    infowindow.open(map, marker);
					});

					// 마커에 마우스아웃 이벤트를 등록합니다
					daum.maps.event.addListener(marker, 'mouseout', function() {
					    // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
					    infowindow.close();
					});
					
					//마커 누르면 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
					daum.maps.event.addListener(marker, 'click', function() {
					  	// 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
					    infowindow.open(map, marker);
					});
					
					// 마커 외 영역 누르면 이벤트를 등록합니다
					daum.maps.event.addListener(map, 'click', function() {
					    // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
					    infowindow.close();
					});
				</script>
		</div>
	</section>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>