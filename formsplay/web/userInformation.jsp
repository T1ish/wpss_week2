<%-- 
    Document   : userInformation
    Created on : Nov 15, 2016, 9:16:20 AM
    Author     : Z
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String firstname = request.getParameter("fornavn"); %>
<% String lastname = request.getParameter("efternavn"); %>
<% String fullname = firstname + " " + lastname; %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= firstname %>'s information</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <nav>
                <%= fullname %>
                <br>
                <a href="index.html" >Logout</a>
            </nav>
        </header>
        
        <main>
            <h1>Information vedrørende <%= firstname %></h1>
            <% if (!request.getParameter("billedurl").isEmpty()){ %>
                <img src="<%=request.getParameter("billedurl")%>" alt="Billedet viser personen" class="center">
            <% } %>
            <table>
                <tr><th>Fornavn</th>    <td><%= firstname %></td></tr>
                <tr><th>Efternavn</th>  <td><%= lastname %></td></tr>
                <tr><th>Fødselsår</th>    <td><%= request.getParameter("birthyear") %></td></tr>
                <tr><th>Køn</th>    <td><%= request.getParameter("gender") %></td></tr>
                <tr><th>Højde</th>    <td><%= request.getParameter("height") %>cm</td></tr>
                <tr><th>By</th>         <td><%= request.getParameter("by") %></td></tr>
                <tr><th>Email</th>    <td><%= request.getParameter("email") %></td></tr>
                <tr><th>Mobil</th>    <td><%= request.getParameter("mobil") %></td></tr>
                <tr><th>Programmeringserfaring</th>
                    <td>
                        <ul>
                            <% for (int i = 0; i < request.getParameterValues("programming").length; i++) { %>
                            <li><%= request.getParameterValues("programming")[i] %></li>
                            <% } %>
                        </ul>
                    </td>
                </tr>
                <tr><th>Om personen</th>    <td><%= request.getParameter("beskrivelse") %></td></tr>
            </table>
        </main>
        
        <footer></footer>
    </body>
</html>
