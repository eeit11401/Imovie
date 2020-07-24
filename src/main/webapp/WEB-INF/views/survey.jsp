<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>jQuery UI Controlgroup - Toolbar</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC:wght@600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        * {
            padding: 0px;
            margin: 0px;
        }

        #zoom-button {
            width: 80px;
        }

        #fontname-button,
        #fontsize-button {
            width: 100px;
        }

        .toolbar {
            font-size: .75em;
        }

        #page {
            width: 440px;
            height: 450px;
            border: 1px solid #888;
            box-shadow: 7px 7px 3px #ccc;
            font-family: "Lucida Grande";
            zoom: 100%;
            white-space: pre-line;
            overflow: scroll;
        }

        .wrap {
            width: 588px;
        }

        .fontcss0723 {
            font-family: 'Noto Sans TC', sans-serif;
        }

        .fontcss072347 {
            font-family: 'Noto Serif TC', serif;
        }
    </style>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
</head>

<body style="background:#FFBD9D;">
    <form action="<c:url value='/insertComment' />" method="POST" style="padding: 10px;margin: 30px auto;width: 700px;border-radius: 35px;background-color:		#FCFCFC;">
        <div>
            <h1 class="fontcss072347" style="margin: 10px auto;">滿意度回饋 </h1>
        </div>
        <div style="display:block;margin: 40px auto;" class="wrap">
            <div>
                <h6 style="text-align: right;">時間  ${orderDate}</h6>
                <h4 class="fontcss0723">包廂房型：${roomName}</h4>
                <h4 class="fontcss0723">觀看電影：${movieName}</h4>
            </div>
            <br>
            <br>
            <div class="fontcss0723" style="font-size: 20px;"><label style="color:#F26536;">* 對此次觀影體驗的滿意度 ： </label><br>
                <input checked="checked" style="height: 15px;width: 15px;margin-left:70px ;" name='satisfy' type="radio" value="5">5分(滿分)
                <input style="height: 15px;width: 15px;" name='satisfy' type="radio" value="4">4分
                <input style="height: 15px;width: 15px;" name='satisfy' type="radio" value="3">3分
                <input style="height: 15px;width: 15px;" name='satisfy' type="radio" value="2">2分
                <input style="height: 15px;width: 15px;" name='satisfy' type="radio" value="1">1分
            </div>
            <br>


            <div style="width: 500px;" class="toolbar">
                <label class="fontcss0723" style="font-size: 20px;color:#F26536;">* 意見回饋 ： </label><br><br>

                
            </div>
            <div>
            <textarea style='font-size:25px' id="page" name='comment' rows="6" cols="40"></textarea>
                
            </div>
            <tr style="display: block;">
                <td>
                    <Input style="color:black" id='sendButton' type='submit' class="btn btn-outline-primary fontcss0723" name='send' value='提交'>
                    <form action="<c:url value='/surveyCancle' />" method="GET">
                        <Input style="color:black" id='cancle' type='submit' class="btn btn-outline-danger fontcss0723" name='no' value='取消'>
                    </form>
                </td>
            </tr>
        </div>
    </form>
    <script>
        console.log($("#page").val());
    </script>
</body>

</html>