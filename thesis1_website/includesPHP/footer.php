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

            <div class="fContent">
                <a class="footerIcn"><i class="fa-sharp fa-solid fa-location-dot"></i></a>
                <p class="col1-txt">Binangonan, Philippines, 1940</p>
            </div>

            <div class="fContent">
                <a class="footerIcn"><i class="fa-solid fa-phone"></i></a>
                <p class="col1-txt">286961198</p>
            </div>

            <div class="fContent">
                <a class="footerIcn"><i class="fa-solid fa-envelope"></i></a>
                <p class="col1-txt">kbnskinessentialsltdco@gmail.com</p>
            </div>

            <div class="fContent">
              <a class="fContent-icn" href="https://www.facebook.com/profile.php?id=100057657780574"><i class="fa-brands fa-facebook"></i></a>
              <a class="fContent-icn" href="https://www.instagram.com/kissedbynaturepasig/"><i class="fa-brands fa-instagram"></i></a>
            </div>

        </div>

        <div class="col">

            <p class="fTitle">Offers</p>

            <div class="fContent">
              <a class="col1-txt2" href="../about">Manufacture</a>
            </div>

            <div class="fContent">
              <a class="col1-txt2" href="../courierSide/index.php">Employee Login</a>
            </div>

        </div>

        <div class="col">

            <p class="fTitle">Privacy Policy</p>

            <div class="fContent">
                <a class="col1-txt2">Website Privacy Policy</a>
            </div>

            <div class="fContent">
                <a class="col1-txt2">Request for Return</a>
            </div>

        </div>

    </div>

</div>

<div class="conGrid-inner">
    <p class="cp">Copyright 2023 All Rights Reserved.</p>
</div>
