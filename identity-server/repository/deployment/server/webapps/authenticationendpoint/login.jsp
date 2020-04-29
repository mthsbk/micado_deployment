<%  
String relyingParty = request.getParameter("relyingParty");

if (relyingParty.equals("migrants.micadoproject.eu")) {
    RequestDispatcher dispatcher = request.getRequestDispatcher("migrants_micadoproject.jsp");
    dispatcher.forward(request, response);
} else {
    RequestDispatcher dispatcher = request.getRequestDispatcher("default_login.jsp");
    dispatcher.forward(request, response);
} 
    %>
