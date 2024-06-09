<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diabetes List</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;

    }
    body{
        background-color: white;
        color: #222;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    nav{
        background-color: #eaeaea;
        width: 100%;
        height: 50px;
        border: 1px solid black;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding:  0 45px;
    }


    .icon{
        width: 15px;
        height: 15px;
    }
    .icon:hover{
        cursor: pointer;
    }

    ul{
        width: 30%;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }


    li{

        padding: 10px 20px;


    }
    li:hover{
        border: none;

        border-bottom: 1px solid black;




    }
    ul li,a{
        text-decoration: none;
        list-style:none;
        color: black;
    }

    .icon-div{
        width: 10%;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .div-main{
        background-color: #eaeaea;
        width: 100%;
        height: 80vh;
        display: flex;
    }
    .main-left{
        width: 50%;
        height: 80vh;
        display: flex;
        flex-direction: column;
        justify-content:center;
        align-items: center;
    }
    .main-left h1{
        color: black;
        margin-bottom: 20px;
    }
    .main-left p{
        color: black;
        margin:20px 45px ;
        line-height: 35px;
        font-size: 18px;
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    }
    .main-left button{
        color: white;
        padding: 14px 30px;
        background-color:#4892E0;
        border-style: none;
        border-radius: 4px;
        box-shadow: 2px 2px 1px rgb(110, 108, 108) ;
        transition: 0.8s;
    }
    .main-left button:hover{
        box-shadow: none;
        cursor: pointer;
    }
    .main-right{
        width: 50%;
        height: 80vh;
        display:flex;
        justify-content: center;
        align-items: center;
    }
    #img{
        width: 80%;
        height:auto;
        border-top-right-radius: 50px;
        border-bottom-left-radius: 50px;
    }
    .list-card{
        border: 1px solid black;
        width: 100%;
        height: auto;
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        margin-top: 20px;


    }
    .card{
        width: 300px;
        height: 140px;
        border: 1px solid black;
        background-color: #eaeaea;
        margin: 14px 20px;
        display: flex;
        box-shadow: 1px 2px 2px rgb(170, 170, 170);
        transition: 0.9s;
    }
    .card:hover{
        box-shadow: none;

    }
    .card-left{
        width: 67%;
        height: 137px;
        border-top-right-radius: 40px;
        background-color: #eaeaea;
        display: flex;
        flex-direction: column;
        justify-content: space-evenly;
        align-items: center;

    }

    .card-right{
        background-color: rgb(255, 255, 255);
        width: 33%;
        height: 137px;
        border-bottom-left-radius: 40px;
        display: flex;
        flex-direction: column;
        justify-content: space-evenly;
        align-items: center;

    }
    .card-right input{
        margin-top: 20px;
        padding: 5px 10px;
        border: none;
        background-color:#eaeaea ;
        border-radius: 3px;
        box-shadow: 1px 2px 2px rgb(95, 90, 90);
        transition: 0.9s;

    }
    .card-right input:hover{
        box-shadow: none;

    }
    .chart_js{
        margin-top: 40px;
        margin-bottom: 40px;
        width: 100%;
        height: 80vh;
        background-color: #eaeaea;
        display: flex;
        justify-content: center;
        align-items: center;

    }
    .chart-c{
        width: 77%;
        height: 70vh;
        background-color: white;
        border: 1px solid black;

    }


    footer{
        width: 100%;
        height: 60vh;
        background-color: #eaeaea;
        display: flex;
        flex-direction: column;
        justify-content: space-evenly;

    }
    #line{
        border-bottom: 1px solid gray;
    }
    .main-footer{


        display: flex;
        justify-content: space-around;
    }
    .footer-inf{
        height: 27vh;
        display: flex;
        flex-direction: column;
        line-height: 50px;
    }
    #diabete_day{
        width: 250px;
    }
</style>
</head>
<body>
<nav>
    <h3 id="logo">Glycemonie</h3>
    <ul>
        <li><a href="http://localhost:8081/Diabetes_Tracker_war_exploded/">Home</a></li>
        <li><a href="http://localhost:8081/Diabetes_Tracker_war_exploded/list">My Results</a></li>
        <li><a href="http://localhost:8081/Diabetes_Tracker_war_exploded/showForm">Test</a></li>
    </ul>
    <div class="icon-div">
        <a class="icon" href=""><img class="icon" src="https://i.ibb.co/vmTGNL4/youtube.png">
        </a>
        <a href="" class="icon"><img class="icon" src="https://i.ibb.co/ZWfKq7T/twitter-1.png">
        </a>
        <a href="" class="icon"><img class="icon" src="https://i.ibb.co/tHz4LxQ/twitter.png">
        </a>

    </div>
</nav>
<div class="div-main">
    <div class="main-left">
        <h1>Your Test is here, simply Easily</h1>
        <P>Welcome, the diabetes management test made for people with diabetes by people with diabetes.
            Together, we make diabetes suck less!</P>
        <button >learn more</button>
    </div>
    <div class="main-right">
        <img id="img" src="https://i.ibb.co/KbndWRn/list-img.png">
    </div>
</div>
<div class="list-card">
<c:forEach items="${diabetes}" var="diabete">
<div class="card">
        <div class="card-left">
            <h5>Date is :<span>${diabete.date}</span></h5>
            <h5>Time is :<span>${diabete.time}</span></h5>

        </div>
        <div class="card-right">
            <h5>Your level :<br><br><span id="hmd">${diabete.glucoseLevel}</span>
                <br><span ></span>
            </h5>
            <a href="delete?diabeteId=${diabete.id}"><input type="button" value="Delete" ></a>

        </div>
    </div>
</c:forEach>
</div>
<div class="chart_js">
    <div class="chart-c">
        <canvas id="myChart"></canvas>
    </div>


</div>

<footer>
    <h3 id="logo1" style="align-self: center;">Glycemonie</h3>
    <div id="line"></div>
    <div class="main-footer">
        <img id="diabete_day" src="https://i.ibb.co/zFSKQbf/diabete-day.png">
        <div class="footer-inf">
            <h1>Company</h1>
            <a href="">Us from the start</a>
            <a href="">Contact</a>
        </div>
        <div class="footer-inf">
            <h1>Careers</h1>
            <a href="">Work with us</a>
        </div >
        <div class="footer-inf">
            <h1>Discover</h1>
            <a href="">Blog</a>
            <a href="">for media</a>
            <a href="">Science & research</a>
        </div>
    </div>
    <div></div>


</footer>
<script>
    

</script>
<script>
    document.addEventListener('DOMContentLoaded', (event) => {

        const labels = [
            <c:forEach var="gl" items="${diabetes}" varStatus="status">
            "${gl.date}"<c:if test="${!status.last}">,</c:if>
            </c:forEach>
        ];

        const Level= [
            <c:forEach var="gl" items="${diabetes}" varStatus="status">
            ${gl.glucoseLevel}<c:if test="${!status.last}">,</c:if>
            </c:forEach>
        ];


        const data = {
            labels: labels, datasets: [
                {
                    label: 'Level',
                    data: Level,
                    fill: true,
                    borderColor: 'rgb(255, 99, 132)',
                    backgroundColor: 'rgba(255, 99, 132, 0.2)',
                }
            ]
        };  const config = {
            type: 'line',
            data: data,
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Glycemie Levels Over Time'
                    }
                }
            },
        };

        const ctx = document.getElementById('myChart').getContext('2d');
        new Chart(ctx, config);
    });
</script>
</body>
</html>




















