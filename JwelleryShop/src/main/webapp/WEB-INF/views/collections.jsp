<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Jewel Collections</title>
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
	<div class="collections">
				<div class="collections-head">
					<div class="container">
						<div class="collections-head-left">
							<img src="${pageContext.request.contextPath}/resources/images/iteam.png" title="name" />
						</div>
						<div class="collections-head-right">
							<h2><span>Arizume</span><br><span>Mexican Silver</span></h2>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<!-- categories -->
				<div class="categories">
					<div class="container">
						<div class="categories-left">
							<ul>
								<li><a href="${pageContext.request.contextPath}/">Home</a></li>
								<li><a href="${pageContext.request.contextPath}/collections.html">Collections</a></li>
								
							</ul>
						</div>
						<div class="categories-right">
							<ul>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li class="view"><a href="#">View All</a></li>
								<li class="options">
									<select>
										<option>Sorted by</option>
										<option>1</option>
										<option>2</option>
										<option>3</option>
									</select>
								</li>
							</ul>
							<div class="clearfix"> </div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<!-- categories -->
				<!-- iteam-grids -->
				<div class="iteam-grids">
					<div class="container">
					<c:forEach var="plist" items="${productList1 }">
						<div class="col-md-3">
							<div class="iteam-grid text-center">
								<a href="${pageContext.request.contextPath}/product/${plist.getPRODUCTID() }"><img src="${pageContext.request.contextPath}/resources/images/${plist.getPRODUCTPHOTO()}" title="${plist.getPRODUCTNAME()}" /></a>
								<span>${plist.getPRODUCTNAME()}</span>
								<label>PRICE ${plist.getPRODUCTPRICE()}</label>
								<ul>
									<li><a class="cart" href="${pageContext.request.contextPath}/cart.html/buy/${plist.getPRODUCTID()}">Add to cart</a></li>
									<li><a class="more" href="${pageContext.request.contextPath}/product/${plist.getPRODUCTID() }">More</a></li>
								</ul>
								<div class="clearfix"> </div>
							</div>
						</div>
						</c:forEach>
						<div class="clearfix"> </div>
					</div>
				</div>
				<!-- iteam-grids -->
				<div class="categories">
					<div class="container">
						<div class="categories-left">
							<ul>
								<li><a href="${pageContext.request.contextPath}/">Home</a></li>
								<li><a href="${pageContext.request.contextPath}/collections.html">Collections</a></li>

							</ul>
						</div>
						<div class="categories-right">
							<ul>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li class="view"><a href="#">View All</a></li>
								<li class="options">
									<select>
										<option>Sorted by</option>
										<option>1</option>
										<option>2</option>
										<option>3</option>
									</select>
								</li>
							</ul>
							<div class="clearfix"> </div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
		</div>
		<!-- content -->
		<!-- footer -->
		<jsp:include page="footerRow.jsp"></jsp:include>
</body>
</html>


