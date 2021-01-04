<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>administrator</title>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        a{
            color: black;
        }
        a:hover{
            text-decoration: none;
            color: black;
        }
        table{
            width: 500px;
            text-align: center;
            align-items: center;
        }
        .update form{
            align-items: flex-start;
        }
        .update{
            padding: 20px;
            margin-top: 20px;
            margin-bottom: 20px;
        }
        .add{
            padding-top: 20px;;
        }
        .header{
            width: 300px;
            margin: auto;
            font-size: 2em;
            color: white;
            text-shadow: 1px 1px 2px black,0 0 25px blue , 0 0 5px darkblue;
        }
        .font1{
            color: black;
        }
        .container{
            position: relative;
            height: 95vh;
        }
        button.icon{
            position: absolute;
            right: 35px;
            bottom: 87px;
        }

    </style>
</head>
<body>
<div class="header">
    <p>新闻管理页面</p>
</div>
<div class="container ">
    <div class="query">
        <table class="table table-hover ">
            <thead class=" thead-dark">
            <tr>
                <th scope="col">#</th>
                <th scope="col">标题</th>
                <th scope="col">日期</th>
                <th scope="col">删除</th>
                <th scope="col">修改</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="n" items="${news}" varStatus="v">
                <tr>
                    <th scope="row">${n.id}</th>
                    <td><a href="getNews?nid=${n.id}" >${n.title}</a></td>
                    <td><fmt:formatDate pattern="yyyy-MM-dd" value="${n.date}"></fmt:formatDate></td>
                    <td><a href="deleteNews?nid=${n.id}" class="btn btn-danger btn-sm" >删除</a></td>
                    <td><a href="ManageNews" class="btn btn-danger btn-sm " >修改</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <button class="icon btn btn-info" id="addButton">+</button>
    <div class="add" id="add" style="display: none">
        <form action="addNews" method="post" class="form-inline mb-2" >
            <div class="form-group mb-2">
                <label for="staticEmail2" >Title&nbsp;&nbsp;</label>
                <input type="text"  class="form-control" id="staticEmail2" name="title" required>
            </div>
            <div class="form-group mx-sm-3 mb-2">
                <label for="inputPassword2" >Date&nbsp;&nbsp;</label>
                <input type="text" class="form-control" id="inputPassword2" name="date" required>
            </div>
            <button type="submit" class="btn btn-outline-primary mb-2 font1" >添加新闻</button>
        </form>
    </div>
    <div class="update ">
        <form action="updateNews" method="post" class="row" >
            <select name="newsId" class="custom-select col-md-6">
                <option value="">请选择新闻</option>
                <c:forEach var="n" items="${news}">
                    <option value="${n.id}" >${n.title}</option>
                </c:forEach>
            </select>
            <div class="form-group row " style="margin-bottom: 0">
                <label for="staticEmail" class="col-sm-4 col-form-label">new title: </label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="staticEmail" placeholder="新的新闻标题" name="title" required>
                </div>
            </div>
            <button type="submit" class="btn btn-outline-info font1" >提交</button>
        </form>
    </div>
</div>
<script>
    $(function (){
        $("#addButton").click(()=>{
            $("#add").fadeToggle();
        })
    })
</script>
</body>
</html>