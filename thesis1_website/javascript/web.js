// scrolling navbar:
const navBar = document.querySelector("div.topNav");

document.addEventListener("scroll", 
() => {
    if(window.scrollY > 36) {
        navBar.classList.add("scrolling");
    }else{
        navBar.classList.remove("scrolling");
    }
})

// Cart:
const cartbtn = document.querySelector('#cartContent');

let cartShow = true;

let cartfunc = function(){
   if(cartShow){
        cartbtn.style.display = 'block';
        cartShow = false;
   }else{
       cartbtn.style.display = 'none';
       cartShow = true;
  }
}

//check out

const checkOutBtn = document.querySelector('#checkOutCon');

let checkOutShow = true;

let checkOutBtnFunc = function(){
  if(checkOutShow){
      checkOutBtn.style.display = 'block';
      checkOutShow = false;
  }else{
      checkOutBtn.style.display = 'none';
      checkOutShow = true;
  }
}

//to pay

const toPaybtn = document.querySelector('#toPay');

let toPayShow = true;

let toPayFunc = function(){
  if(toPayShow){
    toPaybtn.style.display = 'block';
    toPayShow = false;
  }else{
    toPaybtn.style.display = 'none';
    toPayShow = true;
  }
}


//login

const logInBtn = document.querySelector('#logInCon');

let logInShow = true;

let logInBtnFunc = function(){
  if(logInShow){
    logInBtn.style.display = 'block';
    logInShow = false;
  }else{
    logInBtn.style.display = 'none';
    logInShow = true;
  }
}

//accout setting

const accSettingBtn = document.querySelector('#AccountNSecurity');

let accSettingShow = true;

let accSettingButtonFunc = function(){
  if(accSettingShow){
    accSettingBtn.style.display = 'block';
    accSettingShow = false;
  }else{
    accSettingBtn.style.display = 'none';
    accSettingShow = true;
  }
}

//edit Name

const editNameBtn = document.querySelector('#editName');

let editNameShow = true;

let editNameBtnFunc = function(){
  if(editNameShow){
    editNameBtn.style.display = 'block';
    editNameShow = false;
  }else{
    editNameBtn.style.display = 'none';
    editNameShow = false;
  }
}

//edit email

const editEmailBtn = document.querySelector('#editEmail');

let editEmailShow = true;

let editEmailBtnFunc = function(){
  if(editEmailShow){
    editEmailBtn.style.display = 'block';
    editEmailShow = false;
  }else{
    editEmailBtn.style.display = 'none';
    editEmailShow = false;
  }
}

//edit phone

const editPhoneBtn = document.querySelector('#editPhone');

let editPhoneShow = true;

let editPhoneBtnFunc = function(){
  if(editPhoneShow){
    editPhoneBtn.style.display = 'block';
    editPhoneShow = false;
  }else{
    editPhoneBtn.style.display = 'none';
    editPhoneShow = false;
  }
}

//edit Password

const editPasswordBtn = document.querySelector('#editPassword');

let editPasswordShow = true;

let editPasswordBtnFunc = function(){
  if(editPasswordShow){
    editPasswordBtn.style.display = 'block';
    editPasswordShow = false;
  }else{
    editPasswordBtn.style.display = 'none';
    editPasswordShow = false;
  }
}

// Account Profile
const profileBtn = document.querySelector('#userProfileCon');
let profileShow = true;
let profileBtnFunc = function(){
  if(profileShow){
    profileBtn.style.display = 'block';
    profileShow = false;
  }else{
    profileBtn.style.display = 'none';
    profileShow = true;
  }
}

//about

const abtbtn = document.querySelector('#aboutUs');

let abtShow = true;

let abtfunc = function(){
    if(abtShow){
        abtbtn.style.display = 'block';
        abtShow = false;
    }else{
        abtbtn.style.display = 'none';
        abtShow = true;
    }
}

//product dropdown

const category = document.querySelector('#productDropdown');

let catShow = true;

let catFunc = function(){
    if(catShow){
        category.style.display = 'block';
        catShow = false;
    }else{
        category.style.display = 'none';
        catShow = true;
    }
}

//carousel

let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}