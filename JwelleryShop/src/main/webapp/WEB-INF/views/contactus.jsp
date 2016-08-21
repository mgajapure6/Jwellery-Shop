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
	<div class="contact">
		<div class="container">
			<div class="contact-head text-center">
				<h2>Contact us</h2>
				<span>Find our store location or Contact us by filling the form below.</span>
			</div>
			<!----- contact-grids ----->
			<div class="contact-grids">
				<div class="contact-map">
					<iframe src="https://www.google.com/maps/embed/v1/place?q=Satyam+Apartment,+Mula+Road,+Khadki,+Pune,+Maharashtra,+India&key=AIzaSyAN0om9mFmy1QN6Wf54tXAowK4eT0ZUPrU">
					</iframe>
				</div>
				<!----- contact-form ------>
				<div class="contact-form">
					<form>
						<div class="contact-form-row">
							<div>
								<span>Name :</span> <input type="text" class="text"
									value="Your Name here" onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = 'Your Name here';}">
							</div>
							<div>
								<span>Email :</span> <input type="text" class="text"
									value="Your Email here" onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = 'Your Email here';}">
							</div>
							<div>
								<span>Subject :</span> <input type="text" class="text"
									value="Your Subject here" onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = 'Your Subject here';}">
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
						<div class="contact-form-row2">
							<span>Message :</span>
							<textarea> </textarea>
						</div>
						<input type="submit" value="send">
					</form>
				</div>
				<!----- contact-form ------>
			</div>
			<!----- contact-grids ----->
		</div>
	</div>
	>

	<!-- content -->
	<!-- footer -->
	<jsp:include page="footerRow.jsp"></jsp:include>
	<!-- copy-right -->
	<!-- container -->

</body>
</html>


