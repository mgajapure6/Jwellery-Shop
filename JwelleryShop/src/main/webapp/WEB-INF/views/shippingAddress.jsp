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


	<div class="container">

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="header-left-top">
					<div class="sign-up">
						<h3 align="center">Shipping Address</h3>
					</div>

					<div class="clear"></div>
				</div>
				<div class="header-left-bottom">
					<h3 align="center">
						Provide your shipping address here
					</h3>
					<div>
						<h3 style="color: red;">${error }</h3>
					</div>
					<div class="header-left-bottom">

						<form action="${pageContext.request.contextPath }/checkout/shippingAddress"
							method="post">
							<input type="text" name="pincode" 
								placeholder="Area Pincode" required="required" style="padding-left: 4px;"/> 
								
							<textarea rows="4" cols="71" name="caddress"  style="padding-left: 4px;" placeholder="Full Address" required="required"></textarea>
							<input
								type="text" name="landmark" 
								placeholder="Nearby landmark" style="padding-left: 4px; margin-top: 10px;" required="required" /> 
								
							<input
								type="text" name="Country" 
								placeholder="Country" style="padding-left: 4px;" required="required" />
								
							 <input type="submit" value="Submit your Address">
							  <input type="reset" value="Reset your Address">
						</form>
					</div>
					
				</div>

			</div>
			<div class="col-md-2"></div>
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


