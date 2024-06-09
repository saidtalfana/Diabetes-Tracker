<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
   <style>

       .form-div{
           width: 100%;
           height: 100vh;
           background-color: rgb(255, 255, 255);
           display: flex;
           justify-content: center;
           align-items: center;}
       form{
           background-color: #eaeaea;
           width: 41%;
           height: 50vh;
           border: 1px solid black;
           border-bottom-left-radius: 34px;
           border-bottom: 4px solid black;
           border-top-right-radius: 34px;
           display: flex;
           flex-direction: column;
           justify-content: space-evenly;
           align-items: center;
           box-shadow: 3px 4px 2px rgb(157, 156, 156),-3px -4px 0px white;
           transition: 1s;

       }
       form:hover{
           box-shadow: none;

       }
       .form-input{
           display: flex;
           justify-content: space-between;
           width: 71%;



       }
       input{
           width: 271px;
           height: 25px;
           border: none;
           padding: 0 11px;
           border-bottom: 4px solid black;
       }
       form button{
           width: 87px;
           height: 45px;
           box-shadow: 1px 1px ;transition: 1s;
       }
       form button:hover{
           box-shadow: none;

       }
   </style>
   </head>
<body>
<div class="form-div">
    <form name="add-form" onsubmit="return validateForm()" action="save" method="post">
    <div class="form-input">
        <label for="date">Date:</label>
        <input type="date" id="date" name="date">
    </div>
    <div class="form-input">
        <label for="time">Time:</label>
        <input type="time" id="time" name="time">
    </div>
    <div class="form-input">
        <label for="glucoseLevel">Level:</label>
        <input type="number" id="glucoseLevel" name="glucoseLevel" step="0.1" placeholder="enter your glucoseLevel">
    </div>
    <div class="form-input">
        <label for="idDibate">User Id:</label>
        <input type="number" id="idDibate" name="user.idDiabete" step="0.1" placeholder="enter User Id">
    </div>
    <button>valider</button>
</form>
</div>
<script>
    function validateForm(){
        const d=document.forms["add-form"]["date"].value;
        if (d==""){
            alert("your date is empty");
            return false;
        }

        const t=document.forms["add-form"]["time"].value;
        if (t==""){
            alert("your time is empty");
            return false;
        }
        const l=document.forms["add-form"]["glucoseLevel"].value;
        if (l==""){
            alert("your glucoseLevel is empty");
            return false;
        }
        const userId=document.forms["add-form"]["user.idDiabete"].value;
        if (userId==""){
            alert("your UserId is empty");
            return false;
        }
        return true;
    }
</script>
</body>

</html>