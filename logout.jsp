<%
    session.removeAttribute("user");
    session.removeAttribute("type");
    response.sendRedirect("index.jsp");
%>