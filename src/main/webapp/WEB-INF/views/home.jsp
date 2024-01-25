<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #bannerdiv{width: 100%;padding-bottom: 10px;}
    #bannerimg{width: 100%;height: 300px;}
    body{width: 100%;}
    #main{width: 800px; margin: 0 auto; }
    #board,tr,th{border: 1px solid black;border-collapse: collapse;}
    #board,tr,td{border: 1px solid black;border-collapse: collapse;}
    #board{margin: 0 auto;}
    #items{display: grid; grid-template-columns: auto auto auto;
        column-gap: 10px}
    #title{display: inline-block; width:100%; text-align:center; }
    #cell  { float:right; display: inline-block; } 
    ul li { list-style-type : none; float: left; 
    		outline: 1px dotted green; margin-left: 20px; }
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
</script>
<body>
    <!-- 메뉴 -->
	<%@ include file="/WEB-INF/include/menu.jsp" %>
    <div id="main">
        <b id="title" style="padding-bottom: 10px; font-size: 20px;">애견펫</b><br>
        <div id="maintable">
            <div id="maintableheader">
                <table>
                    <tr style="background-color: lightgray">
                        <td style="padding: 7.5px; width: 70px; text-align: center; ">
                        전체
                        </td>
                        <td style="padding: 7.5px; width: 70px; text-align: center; ">
                        강아지
                        </td>
                        <td style="padding: 7.5px; width: 70px; text-align: center; ">
                        고양이
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

	</body>
</html>
