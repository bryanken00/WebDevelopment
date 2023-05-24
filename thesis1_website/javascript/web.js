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

function quantityAdd(index){
  var quantity = document.getElementsByClassName('quantityNo');
  let i = parseInt(quantity[index].value) + 1; // Access the first element with class 'quantityNo'

  if(i > 0)
  quantity[index].value = i;
  else{
    
  }
}

function quantityMinus(index){
  var quantity = document.getElementsByClassName('quantityNo');
  let i = parseInt(quantity[index].value) - 1; // Access the first element with class 'quantityNo'

  if(i > 0)
  quantity[index].value = i;
  else{
    
  }
}

//check out

const checkOutBtn = document.querySelector('#checkOutCon');

let checkOutShow = true;

let checkOutBtnFunc = function(){

  var checkboxes = document.getElementsByClassName('productCheckbox');

  var counter = 0;
  for (var i = 0; i < checkboxes.length; i++) {
    if (checkboxes[i].checked) {
      counter++;
    }
  }

  if(counter == 0){
    window.alert('Please check your order');
  }else{
    window.location.href = '../OrderCheckout';
    getCheckedCheckboxes();
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


// place order

function placeOrder(){
    
}

//place order
function submitForm(event) {
  event.preventDefault(); // Prevent the default form submission

  var form = event.target;
  var formData = new FormData(form);

  fetch('../includesPHP/placeOrder.php', {
      method: 'POST',
      body: formData
  })
  .then(function(response) {
      // Handle the response from the PHP script
      return response.text();
  })
  .then(function(data) {
      // Process the response as needed
      console.log(data);
  })
  .catch(function(error) {
      // Handle any errors that occur during the request
      console.error('Error:', error);
  });

  window.location.href = '../purchaseDone';
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
    editPhoneShow = true;
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



// AJAX

function getCheckedCheckboxes() {
  var checkboxes = document.getElementsByClassName('productCheckbox');
  var checkedCheckboxesData = [];

  for (var i = 0; i < checkboxes.length; i++) {
      if (checkboxes[i].checked) {
          var checkboxIndex = i;
          var itemElement = document.getElementsByClassName('itemName')[checkboxIndex];
          var itemName = itemElement.getElementsByClassName('iName')[0].textContent;
          var itemDetails = itemElement.getElementsByClassName('iDetails')[0].textContent;
          var itemPrice = itemElement.getElementsByClassName('iPrice')[0].textContent;
          var productImgSrc = document.getElementsByClassName('sampleImg')[checkboxIndex].src;
          var quantityNo = document.getElementsByClassName('quantityNo')[checkboxIndex].value;

          var checkboxData = {
              itemName: itemName,
              itemDetails: itemDetails,
              itemPrice: itemPrice,
              productImg: productImgSrc,
              quantityNo: quantityNo
          };

          checkedCheckboxesData.push(checkboxData);
      }
  }

  // Send the data to PHP using AJAX
  var xhr = new XMLHttpRequest();
  xhr.open('POST', '../includesPHP/CheckoutData.php', true);
  xhr.setRequestHeader('Content-Type', 'application/json');
  xhr.send(JSON.stringify(checkedCheckboxesData));
}


function EditName() {
  var firstName = $('#editFirstName').val();
  var lastName = $('#editLastName').val();
  var hiddenID = $('#hiddenID').val();

  $.ajax({
      url: '../includesPHP/Editprofile.php',
      method: 'POST',
      data: {
        firstName: firstName,
        lastName: lastName,
        hiddenID: hiddenID,
        identifier: "EditName"
      },
      success: function(response) {
          console.log(response);
      },
      error: function(xhr, status, error) {
          console.error(error);
      }
  });
}

function EditContact() {
  var phone = $('#editUserPhone').val();
  var hiddenID = $('#hiddenID').val();
  $.ajax({
      url: '../includesPHP/Editprofile.php',
      method: 'POST',
      data: {
        phone: phone,
        hiddenID: hiddenID,
        identifier: "EditContact"
      },
      success: function(response) {
          console.log(response);
      },
      error: function(xhr, status, error) {
          console.error(error);
      }
  });
}


function EditPassword() {
var password1 = $('#editUserPassword').val();
var password2 = $('#confirmPassword').val();
  if(password1 == password2){
    ifMatchpass();
  }else{
    $('#errorMessage').html('<p>Passwords do not match.</p>');
  }
}

function ifMatchpass(){
  var password = $('#editUserPassword').val();
  var hiddenID = $('#hiddenID').val();
  $.ajax({
      url: '../includesPHP/Editprofile.php',
      method: 'POST',
      data: {
        password: password,
        hiddenID: hiddenID,
        identifier: "EditPassword"
      },
      success: function(response) {
          console.log(response);
      },
      error: function(xhr, status, error) {
          console.error(error);
      }
  });
}