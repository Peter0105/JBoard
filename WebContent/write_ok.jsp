<%@ page import = "java.sql.*"  %>

    <%
        request.setCharacterEncoding("utf-8");

        Class.forName("com.mysql.jdbc.Driver");

        String url = "jdbc:mysql://14.63.169.27:3306/jhma";
        String id = "jhma";
        String pass = "jhma";

        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String title = request.getParameter("title");
        String memo = request.getParameter("memo");

        try{
            Connection conn = DriverManager.getConnection(url,id,pass);

            String sql = "INSERT INTO board(USERNAME,PASSWORD,TITLE,MEMO) VALUES(?,?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, name);
            pstmt.setString(2, password);
            pstmt.setString(3, title);
            pstmt.setString(4, memo);

            pstmt.execute();
            pstmt.close();

            conn.close();
        } catch(SQLException e){
            out.println(e.toString());
        }
    %>

    
    <script language=javascript>
    	self.window.alert("Save completed");
    	location.href="list.jsp";
    </script>