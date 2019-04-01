<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.*" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

        <%  	
		  // Retreive the list from the get Attribute
			ArrayList<String> listcontentid = (java.util.ArrayList<String>) request.getAttribute("contentid");
            ArrayList<String> contentlist = (java.util.ArrayList<String>) request.getAttribute("content");
        %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Dreamy Mashrooma, Gallery of dreamers anonymous users
	content. Privacy safe content sharing platform.</title>
<link rel="shortcut icon" type="png"
	href="https://img.icons8.com/cotton/64/000000/moon.png" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="https://viralpatel.net/blogs/demo/jquery/jquery.shorten.1.0.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
	
		$(".card-text").shorten();
	
	});
	
	$(".card-text").shorten({
		"showChars" : 200
	});


	$(".card-text").shorten({
		"showChars" : 150,
		"moreText"	: "See More",
	});

	$(".card-text").shorten({
		"showChars" : 50,
		"moreText"	: "See More",
		"lessText"	: "Less",
	});
	
    function redirect(){
    window.location = "/GalleryDisplayAnonymousUserContent";
    }
</script>
<style>
body {
	font: 13px 'AmericanTypewriter', Cambria, Georgia;
	line-height: 30px;
}

.headingTitle {
	color: #F98866;
	font-family: fantasy;
	font-weight: normal;
	margin: 15px 15px 15px 15px;
	text-align: center;
	padding: 15px 15px 15px 15px;
}

#spacer {
	margin: 25px 25px 25px 25px;
}

#spacer:HOVER {
	opacity: 0.4;
	filter: alpha(opacity = 50);
	background-color: #C7DB00;
	border-radius: 15px 15px 15px 15px;
	box-shadow: 5px 10px #FA4032;
}

.card-title {
	padding: 10px 25px 10px 25px;
}

.card-text {
	padding: 10px 25px 10px 25px;
}
</style>
</head>


<body onload="redirect();">

	<h1 class="headingTitle">Dreamy Mushrooma :: User's Gallery</h1>
	
	<div class="container">
		<div class="row">
		<% if(listcontentid == null || listcontentid.isEmpty()){ %>
		<b> Fail proof - below is the default content that display if there is not content registered. </b>
		<div class="col-md-6">
				<div class="card" id="spacer">
					<div class="card-block">
						<h5 class="card-title">
							Submission ID => <b>D4812341</b>
						</h5>
						<p class="card-text">
							In this dream, I was driving pretty fast on a super dark highway. I wasn’t speeding but the car was definitely cruising at a good pace. I seemed to pass every car on the roadway with relative ease. With each car passed I experienced a euphoric wave. Somehow I felt as if I was advancing closer towards my destination. Funny thing is, it was never clear what my destination was because there weren’t any signs. This road had no mile markers of any kind nor did I notice exit ramps. It seemed to be nothing more than a long highway.
							I became so wrapped up in my performance and rate of advancement I didn’t notice the road began to get bumpy. In fact, the highway wasn’t well-kept at all but that didn’t slow me down. I continued ahead and before too long, there were no more cars in front of me. I was the only driver for miles. Only the long dark highway remained.
						</p>
					</div>
				</div>

				<div class="card" id="spacer">
					<div class="card-block">
						<h5 class="card-title">
							Submission ID => <b>D523139</b>
						</h5>
						<p class="card-text">Moments later, it began to rain. Not drizzle but a torrential downpour. I had to slow down because the rain was everywhere! It was the thick heavy rain. The type of rain that causes wiper blades on the highest setting sound as if they are a slow steady rhythm. I couldn’t see but a few feet in front of the vehicle.
						Out of nowhere, a bolt of lightning struck the cliff side causing rocks, mud, and brush to break loose. The debris barreled towards the road causing me to immediately slam on the brakes. Now the car was at a complete stop.
						The rain slowed down becoming a light drizzle, I got out of the car to assess the damages to road. I was amazed to see a complete section of the road destroyed. There was no way forward! Where the bumpy highway once stood was now a chasm. It was clear, I wouldn’t be able to take this highway the entire of my way. I had no choice but to find an alternative route.</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-6">
				<div class="card" id="spacer">
					<div class="card-block">
						<h5 class="card-title">
							Submission ID => <b>D0371031</b>
						</h5>
						<p class="card-text">
							Attempting to recall whether I passed an off ramp or overlooked a road sign, I remembered all of the cars I had passed. None of them had seen the lighting strike so they aware unaware the mudslide created a chasm in the road. To them, this was nothing but a bad rainstorm but I knew better. Maybe I should have focused on myself and continued my journey but I felt obligated to warn them.
							I hopped back into my car, swung it around, and sped towards the oncoming traffic. It didn’t take long before I noticed the first set of oncoming headlights in the distance. I tried flashing my bright lights but that didn’t do much because the driver never slowed down. It barreled ahead passing me. The next car I approached I tried a combination of flashing headlights and repeatedly honking my horn. They kept going! I was a little frustrated but mainly concerned for their wellbeing so I anxiously stopped my car on the shoulder. I got out waving my hands and yelling “the road is out” and “don’t go that way” but nothing worked. They kept moving.
						</p>
					</div>
				</div>

				<div class="card" id="spacer">
					<div class="card-block">
						<h5 class="card-title">
							Submission ID => <b>D523139</b>
						</h5>
						<p class="card-text">
						sorry, i am late today. I want to tell you about my yesterday's horrible dream. Actually, i saw a dream yesterday about an accident of a little cute puppy ever seen in my life. it is really difficult to describe the process. i saw a pup so little and cute in my dream passing the road to get to his mother, on the other side of the road. Suddenly!!! a car passed over it and nothing was left expect the dead body and blood on the surface of the road. After it i was not able to sleep the rest of the night and i keep on shivering. it was really a bad ,bad dream ever. well, i gotta go . bye!!!!
						</p>
						</div>
				</div>
			</div>
			
		<% }else{ %>
		<b> User contents are not empty </b>
		<% for(int i = 0; i < listcontentid.size(); i++) { %>
			<div class="col-md-6">
				<div class="card" id="spacer">
					<div class="card-block">
						<h5 class="card-title">
							Submission ID => <b><%= listcontentid.get(i) %></b>
						</h5>
						<p class="card-text">
							<%= contentlist.get(i) %>
						</p>
					</div>
				</div>

				<div class="card" id="spacer">
					<div class="card-block">
						<h5 class="card-title">
							Submission ID => <b><%= listcontentid.get(i) %></b>
						</h5>
						<p class="card-text"><%= contentlist.get(i) %></p>
					</div>
				</div>
			</div>
			 <% } %>
		<%} %>
		
		</div>
	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

</body>
</html>