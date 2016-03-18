<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<! DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<script language = "javascript">
    function writeCheck()
    {
        var form = document.writeform;

        if(!form.name.value)
        {
            alert("please Write the name");
            form.name.focus();
            return;
        }

        if(!form.password.value)
        {
            alert("please Write the password");
            form.password.focus();
            return;
        }

        if(!form.title.value)
        {
            alert("please Write the title");
            form.title.focus();
            return;
        }

        if(!form.memo.value)
        {
            alert("please Write the contents");
            form.memo.focus();
            return;
        }

        form.submit();
    }
</script>


<html>
    <head>
        <title>
            게시판
        </title>
    </head>

    <body>
        <table>
            <form name=writeform method=post action="write_ok.jsp">
                <tr>
                    <td>
                        <table width="100%" cellpadding="0" cellspacing="0" border="0">
                            <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center">
                                <td width="5"><img src="img/table_left.gif" width="5" height="30"/></td>
                                <td>Write</td>
                                <td width="5"><img src="img/table_right.gif" width="5" height="30" /></td>
                            </tr>
                        </table>

                        <table>
                            <tr>
                                <td>&nbsp;</td>
                                <td align="center">Title</td>
                                <td><input name="title" size="50" maxlength="100"></td>
                                <td>&nbsp;</td>
                            </tr>

                            <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>

                            <tr>
                                <td>&nbsp;</td>
                                <td align="center">Name</td>
                                <td><input name="name" size="50" maxlength="50"></td>
                                <td>&nbsp;</td>
                            </tr>

                            <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>

                            <tr>
                                <td>&nbsp;</td>
                                <td align="center">PassWord</td>
                                <td><input name="password" size="50" maxlength="50"></td>
                                <td>&nbsp;</td>
                            </tr>
                            
                            <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>

                            <tr>
                                <td>&nbsp;</td>
                                <td algin="center">Contents</td>
                                <td><textarea name="memo" cols="50" rows="13"></textarea></td>
                                <td>&nbsp;</td>
                            </tr>

                            <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
                            <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
                            <tr align="center">
                                <td>&nbsp;</td>
                                <td colspan="2"><input type=button value="submit" OnClick="javascript:writeCheck();">
                                <input type=button value="cancel" Onclick="javascript:history.back(-1)">
                                <td>&nbsp;</td></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </form>
        </table>
    </body>
</html>