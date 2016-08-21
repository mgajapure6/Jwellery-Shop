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
	<!-- content -->
	<div class="container">
		<br>
		<table class="table text-center">
			<thead>
				<tr class="info">
					<th class="text-center">Product Code</th>
					<th class="text-center">Image</th>
					<th class="text-center">Name</th>
					<th class="text-center">Unit Price</th>
					<th class="text-center">Quantity</th>
					<th class="text-center">Sub-Total</th>
					<th class="text-center">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="total" value="0"></c:set>
				<c:forEach var="item" items="${sessionScope.cart}" varStatus="i">
					<c:set var="total"
						value="${total + item.getProduct().getPRODUCTPRICE() * item.getQuentity() }"></c:set>
					<tr>
						<th class="text-center">${item.getProduct().getPRODUCTCODE()}</th>
						<td><img class="etalage_thumb_image"
							src="${pageContext.request.contextPath}/resources/images/${item.getProduct().getPRODUCTPHOTO()}"
							style="display: inline; width: 60px; height: 70px; opacity: 1;"></td>
						<td>${item.getProduct().getPRODUCTNAME()}</td>
						<td>Rs: ${item.getProduct().getPRODUCTPRICE()}</td>
						<td><a
							href="${pageContext.request.contextPath}/cart.html/itemplus/${item.getProduct().getPRODUCTID()}"><img
								src="${pageContext.request.contextPath}/resources/images/plus.png"></a>&nbsp;<a
							href="${pageContext.request.contextPath}/cart.html/itemminus/${item.getProduct().getPRODUCTID()}"><img
								src="${pageContext.request.contextPath}/resources/images/minus.png"></a><br />
							<br /> <b>${item.getQuentity()}</b></td>
						<td><b>Rs: ${item.getProduct().getPRODUCTPRICE() * item.getQuentity()}
						</b></td>
						<td><a
							href="${pageContext.request.contextPath}/cart.html/delete/${i.index }"
							class="btn btn-danger" role="button">Remove</a></td>
					</tr>

				</c:forEach>
				<tr class="danger">
					<td>Total Items :
						<h1>${sessionScope.cart.size() }</h1>
					</td>
					<td>
					</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>Total Price : Rs:
						<h2>${total}</h2>
					</td>
				</tr>
			</tbody>
		</table>
		<table>
			<tr>
				<td><a
					href="${pageContext.request.contextPath}/collections.html/"
					class="btn btn-primary" role="button">Continue Shopping</a></td>
				<td><a
					href="${pageContext.request.contextPath}/checkout/Address"
					class="btn btn-primary" role="button">Checkout now</a></td>


			</tr>
		</table>
		<div></div>
		<br>
		<div></div>

	</div>
	<!-- content -->
	<!-- footer -->
	<jsp:include page="footerRow.jsp"></jsp:include>
	<!-- copy-right -->
	<!-- container -->

</body>
</html>


