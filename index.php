<!DOCTYPE html>
<?php
//session_start();
//extract($_GET);
?>
<html>
<title>Clotheline</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/component.css">
<style>
.button {
    background-color: white;
    border-color: #555555;
    width:95%;
    color: black;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    transition-duration: 0.4s;
    cursor: pointer;
    border-radius: 5px;
}
.button:hover {
    background-color: #555555;
    color: white;
}
.class1 {
    background-color: white;
    border: none;
    margin: none;
    font: serif;
    width: 100%;
    font-size: 20px;
    margin: 4px 2px;
    display: block;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    border-radius: 5px;    
}
</style>
<body class="w3-content" style="max-width:1200px" onload="init()">

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3;width:250px" id="mySidebar">
  <div class="w3-container w3-display-container w3-padding-16" onclick="window.location.replace('index.php')">
    <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
      <h3 class="w3-wide class1" href="index.php"><b>Clotheline</b></h3>
  </div>
    <div id="login">
        <button class="button" id="loginbtn" style="border-color:#555555;" onclick="obj.select('signin.php')">Log In</button>
    </div>
  <div class="w3-padding-64 w3-large w3-text-grey" style="font-weight:bold">
    <a href="#" onclick="obj.select('Shirts.php')" class="w3-bar-item w3-button">Shirts</a>
    <a href="#" onclick="obj.select('Tshirts.php')" class="w3-bar-item w3-button">T-Shirts</a>
    <a href="#" onclick="obj.select('Jeans.php')" class="w3-bar-item w3-button" id="myBtn">Jeans</a>
    <a href="#" class="w3-bar-item w3-button">Jackets</a>
    <a href="#" class="w3-bar-item w3-button">Gymwear</a>
    <a href="#" class="w3-bar-item w3-button">Blazers</a>
    <a href="#" class="w3-bar-item w3-button">Shoes</a>
  </div>
  <a href="#footer" class="w3-bar-item w3-button w3-padding">Contact</a> 
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding" onclick="document.getElementById('newsletter').style.display='block'">Newsletter</a> 
  <a href="#footer"  class="w3-bar-item w3-button w3-padding">Subscribe</a>
</nav>

<!-- Top menu on small screens -->
<header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
  <div class="w3-bar-item w3-padding-24 w3-wide" href="index.php">Clotheline</div>
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding-24 w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></a>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:250px">

  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:83px"></div>
  
  <!-- Top header -->
  <header class="w3-container w3-xlarge">
    <p class="w3-left" id="cat"></p>
    <p class="w3-right">
      <i class="fa fa-shopping-cart w3-margin-right"></i>
      <i class="fa fa-search"></i>
    </p>
  </header>

  <!-- Image header -->
  <div class="w3-display-container w3-container">
    <img src="/Project/images/canvas1.jpg" alt="Jeans" style="width:100%">
    <div class="w3-display-topleft w3-text-white" style="padding:24px 48px">
      <h1 class="w3-jumbo w3-hide-small">New arrivals</h1>
      <h1 class="w3-hide-large w3-hide-medium">New arrivals</h1>
      <h1 class="w3-hide-small">COLLECTION 2016</h1>
      <p><a href="#jeans" class="w3-button w3-black w3-padding-large w3-large">SHOP NOW</a></p>
    </div>
  </div>

  <div class="w3-container w3-text-grey" id="jeans">
    <p id="numItem"></p>
  </div>

  <!-- Product grid -->
  <div class="w3-row w3-grayscale" id="w3-row w3-grayscale">
  </div>

  <!-- Subscribe section -->
  <div class="w3-container w3-black w3-padding-32">
    <h1>Subscribe</h1>
    <p>To get special offers and VIP treatment:</p>
    <p><input class="w3-input w3-border" type="text" placeholder="Enter e-mail" style="width:100%"></p>
    <button type="button" class="w3-button w3-red w3-margin-bottom">Subscribe</button>
  </div>
  
  <!-- Footer -->
  <footer class="w3-padding-64 w3-light-grey w3-small w3-center" id="footer">
    <div class="w3-row-padding">
      <div class="w3-col s4">
        <h4>Contact</h4>
        <p>Questions? Go ahead.</p>
        <form action="/action_page.php" target="_blank">
          <p><input class="w3-input w3-border" type="text" placeholder="Name" name="Name" required></p>
          <p><input class="w3-input w3-border" type="text" placeholder="Email" name="Email" required></p>
          <p><input class="w3-input w3-border" type="text" placeholder="Subject" name="Subject" required></p>
          <p><input class="w3-input w3-border" type="text" placeholder="Message" name="Message" required></p>
          <button type="submit" class="w3-button w3-block w3-black">Send</button>
        </form>
      </div>

      <div class="w3-col s4">
        <h4>About</h4>
        <p><a href="#">About us</a></p>
        <p><a href="#">We're hiring</a></p>
        <p><a href="#">Support</a></p>
        <p><a href="#">Find store</a></p>
        <p><a href="#">Shipment</a></p>
        <p><a href="#">Payment</a></p>
        <p><a href="#">Gift card</a></p>
        <p><a href="#">Return</a></p>
        <p><a href="#">Help</a></p>
      </div>

      <div class="w3-col s4 w3-justify">
        <h4>Store</h4>
        <p><i class="fa fa-fw fa-map-marker"></i> Clotheline, Bangalore-560 077</p>
        <p><i class="fa fa-fw fa-phone"></i> 9044123123</p>
        <p><i class="fa fa-fw fa-envelope"></i> example@mail.com</p>
        <br>
        <i class="fa fa-facebook-official w3-hover-opacity w3-large"></i>
        <i class="fa fa-instagram w3-hover-opacity w3-large"></i>
        <i class="fa fa-snapchat w3-hover-opacity w3-large"></i>
        <i class="fa fa-pinterest-p w3-hover-opacity w3-large"></i>
        <i class="fa fa-twitter w3-hover-opacity w3-large"></i>
        <i class="fa fa-linkedin w3-hover-opacity w3-large"></i>
      </div>
    </div>
  </footer>

  <!-- End page content -->
</div>

<!-- Newsletter Modal -->
<div id="newsletter" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom" style="padding:32px">
    <div class="w3-container w3-white w3-center">
      <i onclick="document.getElementById('newsletter').style.display='none'" class="fa fa-remove w3-right w3-button w3-transparent w3-xxlarge"></i>
      <h2 class="w3-wide">NEWSLETTER</h2>
      <p>Join our mailing list to receive updates on new arrivals and special offers.</p>
      <p><input class="w3-input w3-border" type="text" placeholder="Enter e-mail"></p>
      <button type="button" class="w3-button w3-padding-large w3-red w3-margin-bottom" onclick="document.getElementById('newsletter').style.display='none'">Subscribe</button>
    </div>
  </div>
</div>

<script>
// Accordion 
//var obj = new obj();
console.log("in Script");
function init(){
    //console.log("in init");
    obj = new Products();
    obj.getItems("All")
    c=setInterval(obj.getItems,120000)
}
function Products(){
    this.getItems=function(category){
        //console.log("in getItems");
        obj.clearItems();
        var xhr = new XMLHttpRequest();
        st="getproducts.php?category="+category;
        //console.log(st);
        xhr.open("GET",st,true);
        xhr.onreadystatechange=obj.setItems;
        xhr.send();
        document.getElementById("cat").innerHTML = category;
    },
    this.clearItems = function(){
        console.log("In clearItems");
        var e = document.querySelector(".w3-col");
        var first = e.firstElementChild;
        while(first){
            //console.log(first);
            e.removeChild(first); 
            first = e.firstElementChild;
        }
        document.getElementById("numItem").innerHTML=="";
    },
    this.setItems=function(){
        if(this.readyState==4 && this.status==200){
            console.log("in setItems");
            div1=document.getElementById("w3-row w3-grayscale");
            var prod = JSON.parse(this.response);
            prod = prod.split(";");
            //console.log(prod);
            document.getElementById("numItem").innerHTML = prod.length-1+" items"
            for(var i=0;i<prod.length-1;i++){
                //console.log(prod[i].split("::")[1].substring(1,prod[i].split("::")[1].length-1).split(",")[3].split(":")[1]);
                cdiv2=document.createElement("div");
                cdiv2.classList.value="w3-display-container";
                li=prod[i].split("::")[1].substring(1,prod[i].split("::")[1].length-1).split(",");
                //console.log(li);
                cdiv=document.createElement("div");
                cdiv.classList.value="w3-container";
                im=document.createElement("img");
                //console.log(li[3]);
                im.src=li[3].split(":")[1];
                im.alt=li[1].split(":")[1];
                //im.style.width=50%; im.style.height=50%;
                cdiv2.appendChild(im);
                butt=document.createElement("div");
                butt.classList.value="w3-display-middle w3-display-hover";
                
                st=li[1].split(":")[1];
                //console.log(st);
                pa=document.createElement("p");
                pa.appendChild(document.createTextNode(st));
                pa.appendChild(document.createElement("br"));
                pa.appendChild(document.createElement("b").appendChild(document.createTextNode("Rs."+li[4].split(":")[1])))
                cdiv.appendChild(cdiv2);
                cdiv1=document.createElement("div");
                cdiv1.classList.value="w3-col l3 s6";
                cdiv.appendChild(pa);
                cdiv1.appendChild(cdiv);
                //cdiv1.style="width=100%";
                div1.appendChild(cdiv1);                                
            }
        }
    },
    this.select=function(category){
        st="http://localhost/Project1/"+category;
        window.location.replace(st);
    }
}
/*function myAccFunc() {
    console.log("in myAccFunc");
    var x = document.getElementById("demoAcc");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else {
    x.className = x.className.replace(" w3-show", "");
  }
}*/

// Click on the "Jeans" link on page load to open the accordion for demo purposes
//document.getElementById("myBtn").click();
    function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}
</script>