<%-- 
    Document   : eventos_verificalogin
    Created on : 24/04/2018, 23:41:02
    Author     : Amanda
--%>

<%
    if (session.getAttribute("login") != "true"){
    session.setAttribute("mensagem","Acesso negado a usu�rios n�o cadstrados!");%>
    <jsp:forward page="/index.jsp"></jsp:forward>
    <%}%>


