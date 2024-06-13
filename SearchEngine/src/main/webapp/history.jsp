<%@page import = "java.util.ArrayList"%>
<%@page import = "com.hp.HistoryResult"%>
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

<table border = 2 class="resultTable">
    <tr>
        <th>keyword</th>
        <th>Link</th>
    </tr>
        <%
                //Get results from history servlet
                ArrayList<HistoryResult> results = (ArrayList<HistoryResult>)request.getAttribute("results");
                //Iterate for every data present in results array
                for(HistoryResult result:results){
            %>
    <tr>
        <td><%= (result.getKeyword())%></td>
        <td><a href="<%=(result.getLink())%>"><%=(result.getLink())%></a></td>
    </tr>
        <%
                }
            %>
</table>

</body>
</html>
