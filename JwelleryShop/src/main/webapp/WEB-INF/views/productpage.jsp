<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>


<!DOCTYPE HTML>
<html>
<head>
<title>Product Detail</title>
<jsp:include page="headTag.jsp"></jsp:include>
</head>
<body>
	<!-- container -->
	<!-- header -->
	<jsp:include page="logoRow.jsp"></jsp:include>
	<!-- sub-header -->
	<jsp:include page="navigationRow.jsp"></jsp:include>
	<!-- /sub-header -->
	<!-- content -->
	<!-- details -->
	<div class="details">

		<div class="details-cate">
			<div class="container">
				<ul>
					<li><a href="${pageContext.request.contextPath}/">Home</a></li>
					<li><a href="#">Arizume</a></li>
					<li><a href="#">Fern Clamper Bracelet</a></li>
				</ul>
			</div>
		</div>
		<!-- product-single-details -->
		<div class="product-single-details">
			<div class="container">
				<div class="product-single-details-left">
					<!----details-product-slider--->
					<!-- Include the Etalage files -->

					<script src="${pageContext.request.contextPath}/resources/js/jquery.etalage.min.js"></script>
					<!-- Include the Etalage files -->
					<script>
						jQuery(document)
								.ready(function($) {
									$('#etalage').etalage({
										thumb_image_width : 300,
										thumb_image_height : 400,
										source_image_width : 900,
										source_image_height : 1000,
										show_hint : true,
										click_callback : function(image_anchor,instance_id) {
											alert('Callback example:\nYou clicked on an image with the anchor: "'+ image_anchor+ '"\n(in Etalage instance: "'+ instance_id+ '")');}
									});
									// This is for the dropdown list example:
									$('.dropdownlist').change(function() {etalage_show($(this).find('option:selected').attr('class'));
									});
								});
					</script>
					<!----//details-product-slider--->
					<div class="details-left">
						<div class="details-left-slider">
							<ul id="etalage" class="etalage"style="display: block; width: 314px; height: 552px;">
							
								<li class="etalage_thumb thumb_1 etalage_thumb_active" style="display: list-item; opacity: 1; background-image: none;">
								<a href="optionallink.html">
									<img class="etalage_thumb_image" src="${pageContext.request.contextPath}/resources/images/product-slide/${product.getPRODUCTPHOTO()}" style="display: inline; width: 300px; height: 400px; opacity: 1;">
									<img class="etalage_source_image" src="${pageContext.request.contextPath}/resources/images/product-slide/${product.getPRODUCTPHOTO()}">
								</a>
							</li>
							
							<li class="etalage_thumb thumb_2 etalage_thumb_active" style="display: none; opacity: 0; background-image: none;">
								<img class="etalage_thumb_image" src="${pageContext.request.contextPath}/resources/images/product-slide/${product.getPRODUCTPHOTO()}" style="display: inline; width: 300px; height: 400px; opacity: 1;">
								<img class="etalage_source_image" src="${pageContext.request.contextPath}/resources/images/product-slide/${product.getPRODUCTPHOTO()}">
							</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="product-single-details-right">
					<h2>${product.getPRODUCTNAME() }</h2>
					<p>
						Description:<span> ${product.getPRODUCTDESC() }</span>
					</p>
					<ul class="r-list">
						<li id="rateYo"> <span></span>Rating</li>
						<li class="heart"><span></span>Add to Watchlist</li>
					</ul>
					<!-- price-details -->
					<div class="price-details">
						<div class="price-details-left">
							<p>Product Code : ${product.getPRODUCTCODE() }</p>
							<p>Best price : ${product.getPRODUCTPRICE() }</p>
							<p>Weight : ${product.getPRODUCTWEIGHT() } gm</p>
							<p>Metal : ${product.getPRODUCTMETAL() }</p>
						</div>
						<div class="price-details-right">
							<a href="${pageContext.request.contextPath}/cart.html/buy/${product.getPRODUCTID() }" class="btn btn-info" role="button">Order Now</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<!-- price-details -->
					<!-- product-description -->
					<div class="product-description">
						<h3>More Dscription:</h3>
						<!-- des-tabs -->
						<div class="des-tabs">
							<div class="tab1 tab">
								<h4>Style Note</h4>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry. Lorem Ipsum has been the industry's
									standard dummy text ever since the 1500s, when an unknown
									printer took a galley of type and scrambled it to make a type
									specimen book. It has survived not only five centuries, but
									also the leap into electronic typesetting, remaining
									essentially unchanged. I</p>
							</div>
							<div class="tab2 tab">
								<h4>Product Details</h4>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry. Lorem Ipsum has been the industry's
									standard dummy text ever since the 1500s, when an unknown
									printer took a galley of type and scrambled it to make a type
									specimen book. It has survived not only five centuries, but
									also the leap into electronic typesetting, remaining
									essentially unchanged. I</p>
							</div>
							<div class="tab3 tab">
								<h4>Material and Care</h4>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry. Lorem Ipsum has been the industry's
									standard dummy text ever since the 1500s, when an unknown
									printer took a galley of type and scrambled it to make a type
									specimen book. It has survived not only five centuries, but
									also the leap into electronic typesetting, remaining
									essentially unchanged. I</p>
							</div>
						</div>
						<!-- des-tabs -->
						<!-- script-for-tabs -->
						<script>
							$(document).ready(function() {
								$(".tab2 p").hide();
								$(".tab3 p").hide();
								$(".tab2 h4").click(function() {
									$(".tab2 p").slideToggle(300);
									$(".tab1 p").hide();
									$(".tab3 p").hide();
								});
								$(".tab1 h4").click(function() {
									$(".tab1 p").slideToggle(300);
									$(".tab2 p").hide();
									$(".tab3 p").hide();
								});
								$(".tab3 h4").click(function() {
									$(".tab3 p").slideToggle(300);
									$(".tab2 p").hide();
									$(".tab1 p").hide();
								});
							});
						</script>
						<!-- script-for-tabs -->
					</div>
					<!-- product-description -->
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- product-single-details -->
	</div>
	<!-- details -->
	<!-- content -->
	<!-- footer -->
	<jsp:include page="footerRow.jsp"></jsp:include>
	<!-- copy-right -->
	<!-- container -->
</body>
</html>

