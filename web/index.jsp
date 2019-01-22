<%-- 
    Document   : index
    Created on : Jan 18, 2019, 3:32:13 AM
    Author     : quanglinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>VN Express Private</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <a href="https://vnexpress.net"><img src="https://s.vnecdn.net/vnexpress/i/v20/logos/vne_logo_rss.png"/></a>
                <form action="NewsList" method="GET">
                    <input class="btn btn-light" type="submit" value="Trang Chủ"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="thoi-su"/>
                    <input class="btn btn-light" type="submit" value="Thời Sự"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="the-gioi"/>
                    <input class="btn btn-light" type="submit" value="Thế Giới"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="kinh-doanh"/>
                    <input class="btn btn-light" type="submit" value="Kinh Doanh"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="startup"/>
                    <input class="btn btn-light" type="submit" value="Startup"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="giai-tri"/>
                    <input class="btn btn-light" type="submit" value="Giải Trí"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="the-thao"/>
                    <input class="btn btn-light" type="submit" value="Thể Thao"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="phap-luat"/>
                    <input class="btn btn-light" type="submit" value="Pháp Luật"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="giao-duc"/>
                    <input class="btn btn-light" type="submit" value="Giáo Dục"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="suc-khoe"/>
                    <input class="btn btn-light" type="submit" value="Sức Khỏe"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="doi-song"/>
                    <input class="btn btn-light" type="submit" value="Đời Sống"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="du-lich"/>
                    <input class="btn btn-light" type="submit" value="Du Lịch"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="khoa-hoc"/>
                    <input class="btn btn-light" type="submit" value="Khoa Học"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="so-hoa"/>
                    <input class="btn btn-light" type="submit" value="Số Hóa"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="xe"/>
                    <input class="btn btn-light" type="submit" value="Xe"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="cong-dong"/>
                    <input class="btn btn-light" type="submit" value="Cộng Đồng"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="tam-su"/>
                    <input class="btn btn-light" type="submit" value="Tâm Sự"/></br>
                </form>
                <form action="NewsList" method="GET">
                    <input type="hidden" name="type" value="cuoi"/>
                    <input class="btn btn-light" type="submit" value="Cười"/></br>
                </form>
            </div><br/>
            <div class="row">
                <s:iterator value="newsList" var="news" >
                    <div class="col-md-4" style="margin-bottom: 50px">
                        <h4><a href="<s:property value="link"/>" style="text-decoration: none"><s:property value="title"/></a></h4>
                        <i><small><s:property value="pubDate"/></small></i>
                        <div><s:property value="description"/></div>
                    </div>
                </s:iterator>
            </div>
        </div>
        
        
    </body>
</html>
