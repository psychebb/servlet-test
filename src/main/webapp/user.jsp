<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Servlet Learning Post Page</title>
</head>
<body>

<span class="error">${error}</span>
<br>
<form action="user" method="post">
  <label>name</label><input type="text" name="name">
  <label>year</label><input type="number" name="year" value=${year}>
  <label>month</label><input type="number" name="month" value=${month}>
  <label>date</label><input type="number" name="date" value=${date}>
  <input type="submit" value="submit">
</form>
</body>
</html>
