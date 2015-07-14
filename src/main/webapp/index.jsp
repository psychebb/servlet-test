<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Servlet Learning</title>
  </head>
  <body>
  This is a ${method} page, please fill in your birthday & name

  <form action="user" method="post">
    <label>name</label><input type="text" name="name">
    <label>year</label><input type="number" name="year">
    <label>month</label><input type="number" name="month">
    <label>date</label><input type="number" name="date">
    <input type="submit" value="submit">
  </form>
  </body>
</html>
