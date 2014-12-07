<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.sql.*"%>
<%
	String errorMsg = null;
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String dbUrl = "jdbc:mysql://localhost:3306/member_data";
	String dbUser = "login";
	String dbPassword = "12345";
	String userid = "";
	String userpwd = "";
	
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("id");
	String delete = request.getParameter("delete");
	List<String> submit = new ArrayList<String>();
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
		stmt = conn.prepareStatement("select submit from schedule");
		rs = stmt.executeQuery();
		while(rs.next()){
			submit.add(rs.getString("submit"));
		}
		stmt.close();
		rs.close();
		for(int i=0;i<submit.size();i++){
			if(submit.get(i).equals(delete)){
				stmt = conn.prepareStatement("delete from schedule where submit =?");
				stmt.setString(1,submit.get(i));
				stmt.executeUpdate();
				stmt.close();
			}
		}
	}catch(SQLException e){
	}finally{
		if(rs != null)try{rs.close();}catch(SQLException e){errorMsg = "SQL 에러" + e.getMessage();}
		if(stmt != null)try{stmt.close();}catch(SQLException e){errorMsg = "SQL 에러" + e.getMessage();}
		if(conn != null)try{conn.close();}catch(SQLException e){errorMsg = "SQL 에러" + e.getMessage();}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HCP calendar</title>
</head>
<body>
	<script type="text/javascript">
	 	alert("삭제되었습니다");
		parent.location.replace("../calander/calander.jsp");
 	</script>
</body>
</html>
