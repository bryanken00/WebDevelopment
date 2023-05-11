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


// Account Profile
const profileBtn = document.querySelector('#userProfileCon');
let profileShow = false;
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