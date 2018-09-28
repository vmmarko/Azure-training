<!DOCTYPE html>
<html>
<head>
<title>Azure training - Hello World!</title>
</head>
<body>
	<div>
		<h1>Hello Vladislav & WoltersKluwer TEAM!</h1>
	</div>
	<div>
		<img src"https://wolterskluwer.com/webfiles/1536676296662/images/logo/wolters-kluwer-logo-full.png" alt="Logo" width="334" height="96" border="10">
	</div>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
</body>
