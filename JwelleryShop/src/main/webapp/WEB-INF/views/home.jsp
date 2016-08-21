<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<jsp:include page="headTag.jsp"></jsp:include>
</head>
<body>
	<!-- container -->
	<!-- header -->
	<jsp:include page="logoRow.jsp"></jsp:include>
	<!-- sub-header -->
	<jsp:include page="navigationRow.jsp"></jsp:include>
	<!-- /sub-header -->
	<!-- banner -->
	<div class="banner">
		<!--- img-slider --->
		<div class="img-slider">
			<!----start-slider-script---->
			
			<script>
				// You can also use "$(window).load(function() {"
				$(function() {
					// Slideshow 4
					$("#slider4").responsiveSlides(
							{
								auto : true,
								pager : true,
								nav : true,
								speed : 500,
								namespace : "callbacks",
								before : function() {
									$('.events').append(
											"<li>before event fired.</li>");
								},
								after : function() {
									$('.events').append(
											"<li>after event fired.</li>");
								}
							});

				});
			</script>
			<!----//End-slider-script---->
			<!-- Slideshow 4 -->
			<div id="top" class="callbacks_container">
				<ul class="rslides" id="slider4">
					<li><img src="${pageContext.request.contextPath}/resources/images/slide2.jpg" alt=""></li>
					<li><img src="${pageContext.request.contextPath}/resources/images/slide.jpg" alt=""></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- slider -->
	</div>
	<!-- banner -->
	<!-- Welcome-note -->
	<div class="Welcome-note">
		<div class="Welcome-note-left">
			<div class="Welcome-note-left-pic">
				<img src="${pageContext.request.contextPath}/resources/images/pic1.png" title="name" />
			</div>
			<div class="Welcome-note-left-pic-info">
				<p>
					Explore our New Arrivals in <span>Sterling Silver</span> and
					Exciting new colours in semi precious stone jewellery..
				</p>
			</div>
		</div>
		<div class="Welcome-note-right">
			<p>
				What is <span>new</span>
			</p>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- Welcome-note -->
	<!-- content -->
	<div class="content">
		<!-- top-grids -->
		<div class="top-grids">
			<div class="container">
				<div class="product-grids">
					<!-- start content_slider1 -->
					<div id="owl-demo" class="owl-carousel text-center">
					<c:forEach var="plist" items="${productList1 }">
						<div onclick="location.href='${pageContext.request.contextPath}/product/${plist.getPRODUCTID() }';" class="item">
							<div class="product-grid">
								<div class="product-pic">
									<a href="#"><img src="${pageContext.request.contextPath}/resources/images/${plist.getPRODUCTPHOTO()}" title="${plist.getPRODUCTNAME()}" /></a>
								</div>
								<div class="product-pic-info">
									<p>${plist.getPRODUCTNAME()}</p>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
				</div>
				
			</div>
		</div>
		<!--/ top-grids -->
		
		
		<!-- content -->
		<!-- footer -->
		<jsp:include page="footerRow.jsp"></jsp:include>
		<!-- copy-right -->
		<!-- container -->
		</div>
</body>
</html>


