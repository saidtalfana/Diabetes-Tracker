<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style/style.css">
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
          .apps{
              width: 100%;
              height: 250px;
              display: flex;
              flex-direction: column;
              justify-content: center;
              align-items: center;
          }
          .apps-icons{
              width: 38%;
              display: flex;
              justify-content: space-between;
              align-items: center;
              margin-top: 20px;
          }
          .info{
              background-color: #eaeaea;
              width:70%;
              height: 55vh;
              display: flex;
              justify-content: space-evenly;
              align-items: center;

          }
          .info img{
              width: 260px;
              height: 280px;
          }

          .info div{
              width: 60%;
              height:  150px;
              display: flex;
              flex-direction: column;
              justify-content: space-evenly;
              align-items: center;
          }

          #info-btn{
              color: black;
              background-color: #4892E0;
              border-style: none;
              padding: 10px 20px;
              border-radius: 4px;
              cursor: pointer;
          }
          .devices{
              margin-top: 100px;
              width: 100%;
              height: 90vh;
              display: flex;
              flex-direction: column;
              justify-content: space-between;
              align-items: center;

          }
          .main-devices{
              width: 70%;
              height: 70vh;
              background-color: #eaeaea;
              display: flex;
              justify-content: space-evenly;
              align-items: center;
          }
          .card{
              width: 27%;
              height: 60vh;
              background-color: white;
              display: flex;
              flex-direction: column;
              justify-content: space-evenly;
              align-items: center;
              margin-bottom: 5px;
              box-shadow:  1px 1px 4px rgb(0, 0, 0), -1px -1px 4px rgb(255, 255, 255);
              transition: 1s;
          }
          .card:hover{
              box-shadow: none;
          }
          .device-img{
              width: 70%;
              height: auto;
          }
          .about{
              width: 70%;
              height: 60vh;
              background-color: #eaeaea;
              margin: 45px 0px;
              display: flex;
          }
          .about-left{
              width: 50%;
              height: 60vh;
              display: flex;
              flex-direction: column;
              justify-content: space-evenly;
              align-items: center;
          }
          .about-left p{
              line-height: 30px;
              margin:0 24px;
          }
          .about-left h1{
              border-bottom: 3px solid bisque;
              padding: 7px 0;
          }
          .about-img{
              width: 50%;
              height: 60vh;
              display: flex;
              justify-content: center;
              align-items: center;
          }
          #about-img{
              width: 400px;
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
<h3 id="logo3">Glycemonie</h3>
 <ul>
            <li><a href="http://localhost:8081/Diabetes_Tracker_war_exploded/">Home</a></li>
            <li><a href="http://localhost:8081/Diabetes_Tracker_war_exploded/list">My Results</a></li>
            <li><a href="http://localhost:8081/Diabetes_Tracker_war_exploded/showForm">Test</a></li>
        </ul>
        <div class="icon-div">
            <a class="icon" href=""><img class="icon"src="https://i.ibb.co/vmTGNL4/youtube.png">
            </a>
            <a href="" class="icon"><img class="icon" src="https://i.ibb.co/ZWfKq7T/twitter-1.png">
            </a>
            <a href="" class="icon"><img class="icon" src="https://i.ibb.co/tHz4LxQ/twitter.png">
            </a>

        </div>
    </nav>
<div class="div-main">
     <div class="main-left">
        <h1>Your diabetes data, simply there</h1>
        <P>Welcome, the diabetes management app made for people with diabetes by people with diabetes.
           Together, we make diabetes suck less!</P>
           <button >learn more</button>
     </div>
     <div class="main-right">
        <img id="img" src="https://i.ibb.co/wYDvncn/diabete-amg.png">
     </div>
</div>
<div class="apps">
    <h1>Download our app now!
    </h1>
    <div class="apps-icons">
         <img src="https://i.ibb.co/7tD0ff4/apps-d.png" >
         <img src="https://i.ibb.co/mNmBqmX/apps-i.png" >
    </div>
</div>
<div class="info">
    <img src="https://i.ibb.co/4PPDsf7/phone-comp.png" >

    <div>
        <h1>Ready for more freedom?
        </h1>
        <p>Control is out now. Check the compatible
            phones and deliver your bolus directly from your Android.</p>

        <button id="info-btn"><a>learn more</a></button>
    </div>

</div>
<div class="devices">
    <h1>The best combination for synchronising your values </h1>
    <p>Get mySugr PRO for free with these devices!
         </p>
    <div class="main-devices">
       <div class="card">
        <img class="device-img" src="https://i.ibb.co/pr5Sd7h/device1.png">
        <h3>Accu Chek &#8477;  Guide</h3>
       </div>
       <div class="card">
        <img class="device-img" src="https://i.ibb.co/Yph5sTQ/device3.png">
        <h3>Accu Chek &#8477;  Instant</h3>
       </div>
       <div class="card">
        <img class="device-img" src="https://i.ibb.co/M7mkbMX/device2.png">
        <h3>Accu Chek &#8477; Mobile</h3>
       </div>

    </div>

</div>
<div class="about">
<div class="about-left">
    <h1>About us</h1>
    <p>
        we are a dedicated team of healthcare professionals, technologists, and individuals who are passionate about improving the lives of people with diabetes. Our team combines medical
         expertise with innovative technology to create a user-friendly platform that simplifies diabetes management.
    </p>
</div>
<div class="about-img">
    <img id="about-img" src="https://i.ibb.co/QmFjP8s/about-image.jpg" >
</div>
</div>
<footer>
    <h3 id="logo" style="align-self: center;">Glycemonie</h3>
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

</body>
</html>