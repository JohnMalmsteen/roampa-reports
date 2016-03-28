<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<body>
 
	<h1>Users</h1>
 
	<c:forEach items="${userList}" var="user">
		<p>
			${user.username}: ${user.gender}
		</p>
	</c:forEach>
 
</body>
</html>