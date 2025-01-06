<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div id="carouselExampleFade" class="carousel slide carousel-fade"
		data-bs-ride="carousel">
		<div class="container p-3">
			<p class="text-center fs-2 text-success">
				<b><i>ABOUT SHREE HOSPITAL</i></b>
			</p>

			<div class="row">
				<div class="col-md-16 p-9">
					<div class="row">
						<div class="col-md-12">
							<div class="card paint-card">
								<div class="card-body">
									<p class="fs-5">
										<b>Our Story</b>
									</p>
									<p>
										<i>ShreeSidd Healthcare Institute Limited ("Shree
											Healthcare") is one of India's largest healthcare
											organizations. We operate 17 healthcare facilities (3400+
											beds) across the karnataka, Haryana, Punjab, Uttarakhand and
											Maharashtra. Almost 85% of our bed capacity is in Metro/Tier
											1 cities. Apart from hospitals, Shree Healthcare also
											operates a homecare business and pathology business under
											brand names ShreeHome and Shree Labs respectively. ShreeHome
											offers health and wellness services at home while Max Lab
											provides Pathology Services outside our hospital network.
											Shree Healthcare is promoted and led by Appu as its Chairman
											and Managing director </i>
									</p>
								</div>
							</div>
						</div>


					</div>
				</div>

			</div>
		</div>

	</div>
	<div class="container p-2">
		<p class="text-center fs-2 text-success">
			<b><i>Chairman's Message</i></b>
		</p>

		<div class="col-md-6 mt-2">
			<div class="card paint-card">
				<div class="card-body">
					<p class="fs-5">
						<b><i>WE CARE WE CURE</i></b>
					</p>
					<p>
						<i>At Shree Healthcare, our vision is to be the most well
							regarded healthcare provider in India committed to the highest
							standards of clinical excellence and patient care, supported by
							latest technology and cutting edge research. We ask more of
							ourselves, so we can give more to our patients. We push the
							boundaries of excellence in everything we do, so we can deliver
							the highest standards in patient-centred care. Every day we come
							to honour a higher purpose - To serve. To excel.<br><br>
							<pre>                         Chairman & Managing Director</pre>
							
							<pre><b><i>                                            Shreesidd</i></b></pre>
							</i> 
					</p>
				</div>
			</div>
		
		</div>
	</div>
	<img alt="" src="img/abt .jpg" height="500px" width="1300px">
	<%@include file="component/footer.jsp"%>
</body>
</html>
</body>
</html>