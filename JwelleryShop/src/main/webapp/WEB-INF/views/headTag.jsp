<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!----webfonts--->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,700,800,400,600'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Satisfy'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/etalage.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/styleSignupLogin.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.rateyo.css">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.rateyo.js"></script>
<!---//webfonts--->

<!---
						<!----sreen-gallery-cursual---->
<!-- requried-jsfiles-for owl -->
<link
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resources/js/owl.carousel.js"></script>
<script>
	$(document).ready(function() {
		$("#owl-demo").owlCarousel({
			items : 5,
			lazyLoad : true,
			autoPlay : true,
			navigation : true,
			navigationText : false,
			pagination : false,
		});
	});
</script>
<!-- //requried-jsfiles-for owl -->

<script
	src="${pageContext.request.contextPath}/resources/js/responsiveslides.min.js"></script>
<script type="text/javascript">
$(function () { 
	$("#rateYo").rateYo({ 
		rating: 3.5 ,
		starWidth: "25px" ,
		halfStar: true ,
		maxValue: 10
		}); 
	});
	
//Getter
var maxValue = $("#rateYo").rateYo("option", "maxValue"); //returns 1
 
// Setter
$("#rateYo").rateYo("option", "maxValue", 10); //returns a jQuery Element
</script>
