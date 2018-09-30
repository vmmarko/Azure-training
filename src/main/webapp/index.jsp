<!DOCTYPE html>
<html>
    <head>
        <title>Azure training - Hello World!</title>
    </head>
    <body>
    <center>
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
            <%
            Cookie cookie = null;
            Cookie[] cookies = null;
         
            // Get an array of Cookies associated with the this domain
            cookies = request.getCookies();
         
            if( cookies != null ) {
               out.println("<h2> Found Cookies Name and Value</h2>");
            
               for (int i = 0; i < cookies.length; i++) {
                  cookie = cookies[i];
               
                  if((cookie.getName( )).compareTo("first_name") == 0 ) {
                     cookie.setMaxAge(0);
                     response.addCookie(cookie);
                     out.print("Deleted cookie: " + 
                     cookie.getName( ) + "<br/>");
                  }
                  out.print("Name : " + cookie.getName( ) + ",  ");
                  out.print("Value: " + cookie.getValue( )+" <br/>");
               }
            } else {
               out.println(
               "<h2>No cookies founds</h2>");
            }
            %>
        </p>
        <P>
            <%
         Integer hitsCount = (Integer)application.getAttribute("hitCounter");
         if( hitsCount ==null || hitsCount == 0 ) {
            /* First visit */
            out.println("Welcome to my website!");
            hitsCount = 1;
         } else {
            /* return visit */
            out.println("Welcome back to my website!");
            hitsCount += 1;
         }
         application.setAttribute("hitCounter", hitsCount);
            %>
        <p>Total number of visits: <%= hitsCount%></p>
    </center>
</P>
</body>
