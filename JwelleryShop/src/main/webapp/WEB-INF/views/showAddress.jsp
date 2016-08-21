<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Shipping Address</title>
<jsp:include page="headTag.jsp"></jsp:include>
</head>
<body>
	<!-- container -->
	<!-- header -->
	<jsp:include page="logoRow.jsp"></jsp:include>
	<!-- sub-header -->
	<jsp:include page="navigationRow.jsp"></jsp:include>
	<!-- /sub-header -->


	<div class="iteam-grids">
		<div class="container">
			<c:forEach var="alist" items="${addressList }">
				<div class="col-md-3">
					<div class="iteam-grid text-center">
						<p style="color: red;">${error }</p>
						<table class="table table-bordered">
							<tr>
								<td>Pin-code : ${alist.getPincode() }</td>
							</tr>
							<tr>
								<td>Full Address : ${alist.getCaddress() }</td>
							</tr>
							<tr>
								<td>LandMark : ${alist.getLandmark() }</td>
							</tr>
							<tr>
								<td>Country : ${alist.getCountry() }</td>
							</tr>
							<tr>
								<td>
									<a
									href="${pageContext.request.contextPath }/checkout/Address/${alist.getAid() }"
									class="btn btn-primary" style="width: 200px"> Delete this Address</a>
									
									<a
									href="${pageContext.request.contextPath }/checkout/ordersummery/${alist.getAid() }"
									class="btn btn-success" style="width: 200px"> Continue with this Address</a>
									</td>
							</tr>
						</table>
						<div class="clearfix"></div>
					</div>
				</div>
			</c:forEach>
			<div class="clearfix"></div>

		</div>

	</div>
	<div align="center">
		<a href="${pageContext.request.contextPath }/checkout/shippingAddress"
			class="btn btn-warning">+ Add New Shipping Address</a>
	</div>

	<br>
	<!-- content -->
	<!-- footer -->
	<jsp:include page="footerRow.jsp"></jsp:include>
	<!-- copy-right -->
	<!-- container -->

</body>
</html>