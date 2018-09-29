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
		<img src="wolters-kluwer-logo-large-dark.png" alt="" width="334" height="96" border="0">
	</div>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
        <p>
            Test:
            <%= HelloAppTest.testMain()  %></p>
        </p>
</body>
