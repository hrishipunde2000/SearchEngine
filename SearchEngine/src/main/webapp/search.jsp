<%@ page import="com.hp.SearchResult" %>
<%@ page import="java.util.ArrayList" %>
<html>
<body>
<head>
    <link rel = "stylesheet" type = "text/css" href = "style.css">

</head>
<h1>Search Engine</h1>
<form action = "Search">
    <input type= "text" name = "keyword"> </input>
    <button type= "submit">Search</button>
</form>
<form action = "History">
    <button type= "submit">History</button>
</form>

<table border=2 class="resultTable">
    <tr>
        <th>Title</th>
        <th>Link</th>
    </tr>

    <%
        ArrayList<SearchResult> results=(ArrayList<SearchResult>)request.getAttribute("results");
        for(SearchResult result:results) {
    %>

    <tr>
        <td><%=(result.getTitle())%></td>
        <td><a href="<%=(result.getLink())%>"><%=(result.getLink())%></a></td>


    </tr>
    <%
        }
    %>
</table>

</body>
</html>