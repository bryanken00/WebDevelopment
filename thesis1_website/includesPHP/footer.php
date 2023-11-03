<?php
header("Access-Control-Allow-Origin: *");
?>

<!-- Messenger Chat plugin Code -->
<div id="fb-root"></div>

<!-- Your Chat plugin code -->
<div id="fb-customer-chat" class="fb-customerchat">
</div>

<script>
  var chatbox = document.getElementById('fb-customer-chat');
  chatbox.setAttribute("page_id", "105295015927223");
  chatbox.setAttribute("attribution", "biz_inbox");
</script>

<!-- Your SDK code -->
<script>
  window.fbAsyncInit = function() {
    FB.init({
      xfbml            : true,
      version          : 'v18.0'
    });
  };

  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>

<div class="footer">

    <div class="inFooter">
        
        <div class="col">

            <img src="../image\logo/KBN_Logo.png" class="logof">

        </div>

        <div class="col">

            <p class="fTitle">Information</p>

            <div class="col1-info">
                <a class="footerIcn"><i class="fa-sharp fa-solid fa-location-dot"></i></a>
                <p class="col1-txt">Binangonan, Philippines, 1940</p>
            </div>

            <div class="col1-info">
                <a class="footerIcn"><i class="fa-solid fa-phone"></i></a>
                <p class="col1-txt">286961198</p>
            </div>

            <div class="col1-info">
                <a class="footerIcn"><i class="fa-solid fa-envelope"></i></a>
                <p class="col1-txt">kbnskinessentialsltdco@gmail.com</p>
            </div>

        </div>

        <div class="col">

            <p class="fTitle">Offers</p>

            <p><a class="fContent">Manufacture</a></p>
            <p><a class="fContent" href="../courierSide/index.php">Employee Login</a></p>

        </div>

        <div class="col">

            <p class="fTitle">Privacy Policy</p>

            <p><a class="fContent">Website Privacy Policy</a></p>
            <p><a class="fContent">Request for Return</a></p>
            <p><a class="fContent">Legibility and Validity</a></p>

        </div>

    </div>

</div>

<div class="conGrid-inner">
    <p class="cp">Copyright 2023 All Rights Reserved.</p>
</div>
