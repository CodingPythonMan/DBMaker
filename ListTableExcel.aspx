<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListTableExcel.aspx.cs" Inherits="ListTableExcel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <script>
        function downloadExcel(){
            alert("액셀 다운!");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>아아</td>
            </tr>
            <tr>
                <td>호호</td>
            </tr>
        </table>
        <button onclick="downloadExcel()">액셀 다운로드</button>
    </form>
</body>
</html>
