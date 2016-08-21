<div class="sub-header">
			<div class="container">
				<!-- top-nav -->
				<div class="top-nav">
					<span class="menu"> </span>
					<ul>
						<li ${action eq 'home' ? 'class="active"' : ''}><a href="${pageContext.request.contextPath}/">Home</a></li>
						<li ${action eq 'aboutus' ? 'class="active"' : ''}><a href="${pageContext.request.contextPath}/about_us.html">About us</a></li>
						<li ${action eq 'whatsnew' ? 'class="active"' : ''}><a href="${pageContext.request.contextPath}/whats_new.html">What's new</a></li>
						<li ${action eq 'collections' ? 'class="active"' : ''}><a href="${pageContext.request.contextPath}/collections.html">Jewel Collections</a></li>
						<li ${action eq 'club' ? 'class="active"' : ''}><a href="${pageContext.request.contextPath}/club.html">MGJewellers Club</a></li>
						<li ${action eq 'location' ? 'class="active"' : ''}><a href="${pageContext.request.contextPath}/location.html">Store Location</a></li>
						<li ${action eq 'contactus' ? 'class="active"' : ''}><a href="${pageContext.request.contextPath}/contact_us.html">Contact us</a></li>
					</ul>
					<div class="clearfix"> </div>
				</div>
				<!-- top-nav -->
				<!-- script-for-nav -->
				<script>
					$(document).ready(function(){
						$("span.menu").click(function(){
							$(".top-nav ul").slideToggle(300);
						});
					});
				</script>
				<!-- script-for-nav -->
				<!-- search-form -->
				<div class="search-form">
					<form action="${pageContext.request.contextPath}/searchResult.html" >
						<input type="text" class="text" value="Keyword or product code" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Keyword or product code';}">
						<input type="submit" value="" />
					</form>
				</div>
				<div class="clearfix"> </div>
				<!-- /search-form -->
			</div>
		</div>