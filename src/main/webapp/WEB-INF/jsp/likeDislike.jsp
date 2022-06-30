
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.like,
.dislike {
display: inline-block;
    margin-bottom: 0;
    font-weight: normal;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    background: lightgreen;
    border: 1px solid transparent;
    white-space: nowrap;
    padding: 6px 12px;
    margin-left:255px;
    font-size: 25px;
    line-height: 1.428571429;
    border-radius: 4px;
  
}
.qty1,
.qty2 {
    border: none;
    width:45px;
   
    background: transparent;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="row">
<div class="column">
    <a class="like"><span class="glyphicon glyphicon-thumbs-up"></span>  
        Like <input class="qty1" name="qty1" readonly="readonly" type="text" value=${param.myVar} />
      
    </a>
    </div>
    <div class="column">
    <a class="dislike"><span class="glyphicon glyphicon-thumbs-down"></span> 
        Dislike <input class="qty2"  name="qty2" readonly="readonly" type="text" value="1" />
       
    </a>
    </div>
</div>

<p>${param.myVar}</p>
<script type="text/javascript">
$(function () {
     $(".like").click(function () {
         var input = $(this).find('.qty1');
         input.val(parseInt(input.val())+ 1);
     });

     $(".dislike").click(function () {
         var input = $(this).find('.qty2');
         input.val(input.val() - 1);
     });
});
</script>
</body>
</html>