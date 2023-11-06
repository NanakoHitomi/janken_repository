<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String userHand=(String)request.getAttribute("userHand");
userHand=userHand==null? "":userHand;
String pcHand=(String)request.getAttribute("pcHand");
pcHand=pcHand==null? "":pcHand;
String result=(String)request.getAttribute("result");
result=result==null? "":result;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<link rel="stylesheet" type="text/css" href="styles.css">
<script src="js/janken.js"></script>
<title>じゃんけん</title>
</head>
<body>
<form action="/janken/Main" method="post">
<h2>じゃんけん</h2>
<h3> あなたはなに出す？</h3>

<input type="radio" name="hand" value="0" <%=userHand.equals("rock")? "checked":"" %>>rock
<input type="radio" name="hand" value="1" <%=userHand.equals("scissors")? "checked":"" %>>scissors
<input type="radio" name="hand" value="2" <%=userHand.equals("paper")? "checked":"" %>>paper
<input type="submit" value="送信">
</form>
<%if(result.length() >0){%>

<p>私:<%=userHand %></p>
<input type="hidden" name="hand" value="" />
<img src="./images/${userHand}.png">
<p>相手:<%=pcHand %>
<img src="./images/${pcHand}.png">
</p>

<h2><%=result %></h2>
<%} %>
</body>
</html>
