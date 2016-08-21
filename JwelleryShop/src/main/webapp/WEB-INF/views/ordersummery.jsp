<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE HTML>
<html>
<head>
<title>${tital}</title>
<jsp:include page="headTag.jsp"></jsp:include>
</head>
<body>
	<!-- container -->
	<!-- header -->
	<jsp:include page="logoRow.jsp"></jsp:include>
	<!-- sub-header -->
	<jsp:include page="navigationRow.jsp"></jsp:include>
	<!-- /sub-header -->

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="text-center">
					<h3>Shipping Address</h3>
				</div>
				<table class="table ">
					<tr>
						<td>Pin code : </td><td><b>${address.getPincode() }</b></td>
					</tr>
					<tr>
						<td>Full Address : </td><td><b>${address.getCaddress() }</b></td>
					</tr>
					<tr>
						<td>Land mark : </td><td><b>${address.getLandmark() }</b></td>
					</tr>
					<tr>
						<td>Country : </td><td><b>${address.getCountry() }</b></td>
					</tr>
					<tr><td></td><td></td></tr>
				</table>
			</div>
			<div class="col-md-4">
				<div class="text-center">
					<h3>Shipping Date</h3>
				</div>
				<table class="table ">
					<tr>
						<td>Order Date : </td><td><b>${orderdate}</b></td>
					</tr>
					<tr>
						<td>Shipping Date : </td><td><b>${shippingdate}</b></td>
					</tr>
					<tr><td></td><td></td></tr>
				</table>
			</div>
			<div class="col-md-4">
				<div class="text-center">
					<h3>Customer Detail</h3>
				</div>
				<table class="table ">
					<tr>
						<td>Name : </td><td><b>${customer.getName() }</b></td>
					</tr>
					<tr>
						<td>E-mail : </td><td><b>${customer.getEmail() }</b></td>
					</tr>
					<tr>
						<td>Mobile Number : </td><td><b>${customer.getContactno() }</b></td>
					</tr>
					<tr><td></td><td></td></tr>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="text-center">
					<h3>Cart Items</h3>
				</div>
				<table class="table text-center">
					<thead>
						<tr class="info">
							<th class="text-center">Product Code</th>
							<th class="text-center">Image</th>
							<th class="text-center">Name</th>
							<th class="text-center">Unit Price</th>
							<th class="text-center">Quantity</th>
							<th class="text-center">Sub-Total</th>
							
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
								<td>${item.getQuentity()}</td>
								<td><b>Rs: ${item.getProduct().getPRODUCTPRICE() * item.getQuentity()}
								</b></td>
								
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
							
							<td>Total Price 
							<c:set var="totalPrice" value="${total}" scope="session"  />
								<h2> Rs: ${total}</h2>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div align="center"><a href="${pageContext.request.contextPath}/checkout/thankyou" class="btn btn-success" style="width: 300px; height: 40px">Conform this Order</a></div>
			</div>
		</div>
	</div>
	<br>
	<!-- content -->
	<!-- footer -->
	<jsp:include page="footerRow.jsp"></jsp:include>
	<!-- copy-right -->
	<!-- container -->
</body>
</html>
