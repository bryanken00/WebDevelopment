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
        refreshCartItems();
   }else{
       cartbtn.style.display = 'none';
       cartShow = true;
  }
}

function refreshCartItems() {
  $.ajax({
    url: '../includesPHP/cartData.php',
    method: 'GET',
    dataType: 'html',
    success: function (response) {
      const cartItems = document.querySelector('.cartItem');
      cartItems.innerHTML = response;
    },
    error: function (error) {
      console.log(error);
    }
  });
}

// Cart Item (delete)
function deleteCartItem(prodName, prodVariant){


  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
          console.log(this.responseText);
      }
  };
  xhttp.open("POST", "../includesPHP/deleteCartItem.php", true);
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send("prodName=" + prodName + "&prodVariant=" + prodVariant);

  //refresh the cartItem
  refreshCartItems();
}

// start of cart
// add minus the quantity


function quantityAdd(index) {
  var total = 0;
  var quantityInputs = document.getElementsByClassName('quantityNo');
  var priceElements = document.getElementsByClassName('iPrice');
  var checkboxes = document.getElementsByClassName('productCheckbox');


  let quantity = parseInt(quantityInputs[index].value);

  
  
  if (quantity >= 0) {
    quantityInputs[index].value = quantity + 1;
    for (var i = 0; i < checkboxes.length; i++) {
      let quantity_ = parseInt(quantityInputs[i].value);
      let price = parseFloat(priceElements[i].textContent.replace('₱', ''));
      if(checkboxes[i].checked){
        let subtotal = (quantity_) * price;
        total += subtotal;
        // console.log(finalTotal);
      }
    }
  }
  if (quantity  <= -1)
  quantityInputs[index].value = 0;
  
  document.querySelector('.productTotal').textContent = 'Total: ₱' + total.toFixed(2);
}



// Minus
function quantityMinus(index) {


  var total = 0;
  var quantityInputs = document.getElementsByClassName('quantityNo');
  var priceElements = document.getElementsByClassName('iPrice');
  var checkboxes = document.getElementsByClassName('productCheckbox');


  let quantity = parseInt(quantityInputs[index].value);

  
  
  if (quantity > 0) {
    quantityInputs[index].value = quantity - 1;
    for (var i = 0; i < checkboxes.length; i++) {
      let quantity_ = parseInt(quantityInputs[i].value);
      let price = parseFloat(priceElements[i].textContent.replace('₱', ''));
      if(checkboxes[i].checked){
        let subtotal = (quantity_) * price;
        total += subtotal;
        // console.log(finalTotal);
      }
    }
  }
  if (quantity  <= -1)
  quantityInputs[index].value = 0;
  
  document.querySelector('.productTotal').textContent = 'Total: ₱' + total.toFixed(2);

  // var total = 0;
  // var quantityInputs = document.getElementsByClassName('quantityNo');
  // var priceElements = document.getElementsByClassName('iPrice');
  // var checkboxes = document.getElementsByClassName('productCheckbox');

  // let quantity = parseInt(quantityInputs[index].value);
  // let price = parseFloat(priceElements[index].textContent.replace('₱', ''));
  
  // if (quantity >= 0) {
  //   let subtotal = (quantity - 1) * price;
  //   total += subtotal;
  //   let finalTotal = toTotal + total;
  //   quantityInputs[index].value = quantity - 1;
  //   if (checkboxes[index].checked)
  //     document.querySelector('.productTotal').textContent = 'Total: ₱' + finalTotal.toFixed(2);
  // }
}

// Check all box

function checkAllBox(){
  var checkboxes = document.getElementsByClassName('productCheckbox');
  var checkAllBox = document.getElementById('productCheckboxAll');
  
  var total = 0;
  var quantityInputs = document.getElementsByClassName('quantityNo');
  var priceElements = document.getElementsByClassName('iPrice');

  for (var i = 0; i < checkboxes.length; i++) {
    checkboxes[i].checked = checkAllBox.checked;
    let quantity_ = parseInt(quantityInputs[i].value);
    let price = parseFloat(priceElements[i].textContent.replace('₱', ''));
    if(checkboxes[i].checked){
      let subtotal = (quantity_) * price;
      total += subtotal;
    }
  }
  document.querySelector('.productTotal').textContent = 'Total: ₱' + total.toFixed(2);
}
// click checkbox

function clickCheckbox(){
  var total = 0;
  var quantityInputs = document.getElementsByClassName('quantityNo');
  var priceElements = document.getElementsByClassName('iPrice');
  var checkboxes = document.getElementsByClassName('productCheckbox');
  
  for (var i = 0; i < checkboxes.length; i++) {
    let quantity_ = parseInt(quantityInputs[i].value);
    let price = parseFloat(priceElements[i].textContent.replace('₱', ''));
    if(checkboxes[i].checked){
      let subtotal = (quantity_) * price;
      total += subtotal;
    }
  }
  document.querySelector('.productTotal').textContent = 'Total: ₱' + total.toFixed(2);
}


// end of cart

//check out

const checkOutBtn = document.querySelector('#checkOutCon');

let checkOutShow = true;

let checkOutBtnFunc = function(){

  var checkboxes = document.getElementsByClassName('productCheckbox');

  var counter = 0;
  for (var i = 0; i < checkboxes.length; i++) {
    if (checkboxes[i].checked) {
      console.log(i);
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

//setting container

const settingBtn = document.querySelector('#settingCon');

let settingShow = true;

let settingBtnFunc = function(){
  if(settingShow){
    settingBtn.style.display = 'block';
    settingShow = false;
  }else{
    settingBtn.style.display = 'none';
    settingShow = true;
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
    userProfileCon.style.display = 'none';
    accSettingBtn.style.display = 'block';
    accSettingShow = false;
  }else{
    accSettingBtn.style.display = 'none';
    userProfileCon.style.display = 'block';
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
    editNameShow = true;
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
    editEmailShow = true;
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
    editPasswordShow = true;
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

//confirmation pop up message

const confirmationPopUp = document.querySelector('#completed-confirmation');

let confirmationShow = true;

let confirmationPopUpFunc = function(){
  if(confirmationShow){
    confirmationPopUp.style.display = 'block';
    confirmationShow = false;
  }else{
    confirmationPopUp.style.display = 'none';
    confirmationShow = true;
  }
}


//courier account setting

const courierAccSettingUserName = document.querySelector('#edit-pop-up-UserName');

let courierAccSettingShowUserName = true;

let courierAccSettingFunc = function(){
  if(courierAccSettingShowUserName){
    courierAccSettingUserName.style.display = 'block';
    courierAccSettingShowUserName = false;
  }else{
    courierAccSettingUserName.style.display = 'none';
    courierAccSettingShowUserName = true;
  }
}

const courierAccSettingName = document.querySelector('#edit-pop-up-Name');

let courierAccSettingShowName = true;

let courierAccSettingNameFunc = function(){
  if(courierAccSettingShowName){
    courierAccSettingName.style.display = 'block';
    courierAccSettingShowName = false;
  }else{
    courierAccSettingName.style.display = 'none';
    courierAccSettingShowName = true;
  }
}

const courierAccSettingContactNo = document.querySelector('#edit-pop-up-ContactNo');

let courierAccSettingShowContactNo = true;

let courierAccSettingContactNoFunc = function(){
  if(courierAccSettingShowContactNo){
    courierAccSettingContactNo.style.display = 'block';
    courierAccSettingShowContactNo = false;
  }else{
    courierAccSettingContactNo.style.display = 'none';
    courierAccSettingShowContactNo = true;
  }
}

const courierAccSettingemail = document.querySelector('#edit-pop-up-email');

let courierAccSettingShowemail = true;

let courierAccSettingemailFunc = function(){
  if(courierAccSettingShowemail){
    courierAccSettingemail.style.display = 'block';
    courierAccSettingShowemail = false;
  }else{
    courierAccSettingemail.style.display = 'none';
    courierAccSettingShowemail = true;
  }
}

const courierAccSettingpasswordl = document.querySelector('#edit-pop-up-password');

let courierAccSettingShowpassword = true;

let courierAccSettingpasswordFunc = function(){
  if(courierAccSettingShowpassword){
    courierAccSettingpasswordl.style.display = 'block';
    courierAccSettingShowpassword = false;
  }else{
    courierAccSettingpasswordl.style.display = 'none';
    courierAccSettingShowpassword = true;
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

//courier user setting and logout btn

const courierUser = document.querySelector('#courierSide-user-setting-con');

let courierUserShow = true;

let courierUserFunction = function(){
  if(courierUserShow){
    courierUser.style.display ='block';
    courierUserShow = false;
  }else{
    courierUser.style.display = 'none';
    courierUserShow = true;
  }
}

//product dropdown

const category = document.querySelector('#productDropdown');

let catShow = true;

let catFuncEnter = function() {
  if(catShow){
    category.style.display = 'block';
    catShow = false;
  } else{
    category.style.display = 'none';
    catShow = true;
  }
}

const searchBar = document.querySelector('#seach-pop-up');
const searchBarInput = document.querySelector('.searchInput');

let searchBarShow = false;
let isSearchBarVisible = false;

function toggleSearchBar() {
  if (isSearchBarVisible) {
    searchBar.style.display = 'none';
    isSearchBarVisible = false;
    document.removeEventListener('click', outsideClickHandler);
  } else {
    searchBar.style.display = 'block';
    isSearchBarVisible = true;
    document.addEventListener('click', outsideClickHandler);
  }
}

function outsideClickHandler(event) {
  // Check if the click target is the searchBar or its parent
  if (
    event.target !== searchBar &&
    !searchBar.contains(event.target) &&
    event.target !== searchBarInput
  ) {
    toggleSearchBar(); // Hide the search bar when clicking outside
  }
}

// Add a click event listener to the input element
searchBarInput.addEventListener('click', function (event) {
  event.stopPropagation(); // Prevent the click event from propagating
  toggleSearchBar();
});


const searchInput = document.getElementById("searchInput");

searchInput.addEventListener("keyup", function(event) {
  if (event.key === "Enter") {
    // Get the search query from the input field
    const searchQuery = searchInput.value.trim(); // Trim to remove leading/trailing whitespace

    // Check if the search query is not empty
    if (searchQuery !== "") {
      // Send an AJAX request with the search query as a parameter
      $.ajax({
        url: '../searchBar/searchList.php?search=' + searchQuery,
        method: 'GET',
        data: { query: searchQuery }, // Pass the search query as a parameter
        dataType: 'html',
        success: function (response) {
            // Update the content of the 'seach-pop-up' div with search results
            $('#seach-pop-up').html(response);
        },
        error: function (error) {
            console.log(error);
        }
      });
    }
  }
});

function searchSize(count) {
  // console.log(count);
  var searchPopUp = document.getElementById('seach-pop-up');
  var height = count * 38;
  searchPopUp.style.height = height + 'px';
}


/*let catFuncEnter = function() {
  category.style.display = 'block';
  catShow = false;
  if(catShow){
    category.style.display = 'block';
    catShow = false;
  } else{
    category.style.display = 'none';
    catShow = true;
  }
}

let catFuncExit = function() {
  category.style.display = 'none';
  catShow = true;
} */


// rebranding category btn

const rebrandingCatBtn = document.querySelectorAll('#rebrandingCat');
    let rebrandingCatShow = true;

    let rebrandingBtnFunc = function(){
      rebrandingCatBtn.forEach(function(btn) {
        if(rebrandingCatShow){
          btn.style.display = 'block';
          rebrandingCatShow = false;
        }else{
          btn.style.display = 'none';
          rebrandingCatShow = true;
        }
      });
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


function filterProducts(category) {
  var products = document.getElementsByClassName('gridProduct');
  var productload = document.getElementsByClassName('text-center');

  for (var i = 0; i < products.length; i++) {
    var productCategory = products[i].id;
    if (category === 'none' || productCategory === category) {
      products[i].style.display = 'block';
    } else {
      products[i].style.display = 'none';
    }
  }

  // Now, iterate through productload elements and set their display property
  for (var j = 0; j < productload.length; j++) {
    if (category === 'none' || productCategory === category) {
      productload[j].style.display = 'block';
    } else {
      productload[j].style.display = 'none';
    }
  }
}

const addButton = document.getElementById('addCart');
const spinner = document.querySelector('.spinner');

addButton.addEventListener('click', function () {
  // Disable the button
  addButton.disabled = true;
  
  // Hide the button text and show the spinner
  addButton.textContent = '';
  spinner.style.display = 'block';

  // Simulate loading for a few seconds (replace this with your actual loading logic)
  setTimeout(function () {
    // Enable the button
    addButton.disabled = false;

    // Show the button text and hide the spinner
    addButton.textContent = 'Add to Cart';
    spinner.style.display = 'none';
  }, 3000); // Adjust the delay as needed
});



function callPHP(cancelRef_) {
  var cancelRef = cancelRef_; // Replace 'your_cancel_value' with the actual value you want to send
  var CancelReason = document.getElementById("CancelReason").value;

  console.log(CancelReason);

  var xhr = new XMLHttpRequest();
  xhr.open('GET', '../IncludesPHP/cancelFunction.php?cancel=' + cancelRef + '&Reason=' + CancelReason , true);
  xhr.onreadystatechange = function() {
    if (xhr.readyState === 4 && xhr.status === 200) {
      console.log(xhr.responseText);
    }
  };
  xhr.send();
}




// RETURN
//input value set max
function enforceMaxValue(input) {
  const max = parseFloat(input.getAttribute("max"));
  let value = parseFloat(input.value);
  if (isNaN(value) || value < 0) {
      value = 0;
  } else if (value > max) {
      value = max;
  }
  input.value = value;
}





                    
                    