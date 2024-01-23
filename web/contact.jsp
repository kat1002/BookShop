<%-- 
    Document   : contact
    Created on : Jan 23, 2024, 11:17:43 AM
    Author     : kat1002
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<title>KAT | CONTACT</title>
	<link rel="stylesheet" href="css/contact.css">
	<link rel="stylesheet" href="css/shop.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
        <%@include file = "header.jsp" %>
	<main>
		<p class="title">CONTACT US</p>
		<div class="row">
			<div class="column1">
				<div class="border-line">
					<p class="title4">INFORMATION</p>
					<p class="cmt3">We encourage and assist musicians at every stage of their careers, and by fostering
						communities among people, we may help to deepen the bonds between people, culture, and music.
					</p>
				</div>
				<div class="border-line">
					<p class="icon2"><i class="fa-solid fa-location-dot"></i></p>
					<p class="cmt3">Dai Hoc FPT Ha Noi</p>
					<iframe
						src="https://www.google.com/maps/place/Tr%C6%B0%E1%BB%9Dng+%C4%90%E1%BA%A1i+h%E1%BB%8Dc+FPT/@21.0124959,105.5228,17z/data=!3m1!4b1!4m6!3m5!1s0x3135abc60e7d3f19:0x2be9d7d0b5abcbf4!8m2!3d21.0124959!4d105.5253749!16s%2Fm%2F02rsytm?hl=vi&entry=ttu"
						width="325" height="200" style="border:0;" allowfullscreen="" loading="lazy"
						referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
				<div class="border-line">
					<p class="icon2"><i class="fa-solid fa-phone"></i></p>
					<p class="cmt3">Hotline: 012 3456 789</p>
				</div>
			</div>
			<div class="column2">
				<p class="title4" style="padding:0 30px;">SEND YOUR COMMENTS</p>
				<form class="form">
					<p type="Name:"><input placeholder="Write your name here.." required></input></p>
					<p type="Email:"><input placeholder="Let us know how to contact you back.." required></input></p>
					<p type="Message:"><input placeholder="What would you like to tell us.." required></input></p>
					<input type="submit" value="Submit"> 
				</form>
			</div>
		</div>
	</main>
    <%@include file="footer.jsp" %>
</body>

</html>
