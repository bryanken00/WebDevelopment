// $(document).ready(function() {
//     $('.addCart').click(function() {
//       var productID = $(this).attr('id'); // dipa naset pag may database na
//       var productImg = $(this).siblings('.productImgCon').find('img').attr('src');
//       var productLabel = $(this).closest('.gridProduct').find('.productLbl').text();
//       var productWeight = $(this).closest('.gridProduct').find('.weight').text();
//       var productPrice = $(this).closest('.gridProduct').find('.price').text();
//       var currentPath = window.location.pathname;
//       var pathComponents = currentPath.split('/');
//       var dirName = pathComponents[pathComponents.length - 2];
//       var prodQuantity = 1;
  
//       // Make an AJAX request to the AddtoCart.php file with the data
//       $.ajax({
//         url: '../includesPHP/AddtoCart.php',
//         type: 'POST',
//         data: {
//           productImg: productImg,
//           productLabel: productLabel,
//           productWeight: productWeight,
//           productPrice: productPrice,
//           prodQuantity: prodQuantity,
//           dirName: dirName
//         },
//         success: function(response) {
//           // Handle the response from the server
//           console.log(response);
//         },
//         error: function(xhr, status, error) {
//           // Handle the error
//           console.log(xhr.responseText);
//         }
//       });
//     });
//   });


$(document).ready(function() {
  $('.addCart').click(function() {
    var addButton = $(this); // The clicked button

    // Create the spinner element
    var spinner = $('<div class="spinner"></div>');
    for (var i = 0; i < 10; i++) {
      spinner.append('<div></div>');
    }

    // Disable the button and append the spinner
    addButton.prop('disabled', true);
    addButton.text('');
    addButton.after(spinner);

    var productLabel = addButton.closest('.gridProduct').find('.productLbl').text();
    var productWeight = addButton.closest('.gridProduct').find('.weight').text();
    var prodQuantity = 1;

    // Make an AJAX request to the AddtoCart.php file with the data
    $.ajax({
      url: '../includesPHP/AddtoCart.php',
      type: 'POST',
      data: {
        productLabel: productLabel,
        productWeight: productWeight,
        prodQuantity: prodQuantity,
      },
      success: function(response) {
        // Handle the response from the server
        // console.log(response);
        alert(response);

        // Enable the button and hide the spinner with a time delay
        setTimeout(function() {
          addButton.prop('disabled', false);
          addButton.text('Add to Cart');
          spinner.hide();
        }, 2000); // Adjust the delay (in milliseconds) as needed
      },
      error: function(xhr, status, error) {
        // Handle the error
        console.log(xhr.responseText);

        // Enable the button and hide the spinner with a time delay
        setTimeout(function() {
          addButton.prop('disabled', false);
          addButton.text('Add to Cart');
          spinner.hide();
        }, 2000); // Adjust the delay (in milliseconds) as needed
      }
    });
  });
});

function addCartHomePage(button){
  {
    var addButton = $(button); // The clicked button
    // Create the spinner element
    var spinner = $('<div class="spinner"></div>');
    for (var i = 0; i < 10; i++) {
      spinner.append('<div></div>');
    }

    // Disable the button and append the spinner
    addButton.prop('disabled', true);
    addButton.text('');
    addButton.after(spinner);

    var productLabel = addButton.data('product-name');
    var productWeight = addButton.data('product-variant');
    var prodQuantity = 1;

    // Make an AJAX request to the AddtoCart.php file with the data
    $.ajax({
      url: '../includesPHP/AddtoCart.php',
      type: 'POST',
      data: {
        productLabel: productLabel,
        productWeight: productWeight,
        prodQuantity: prodQuantity,
      },
      success: function(response) {
        // Handle the response from the server
        // console.log(response);
        alert(response);

        // Enable the button and hide the spinner with a time delay
        setTimeout(function() {
          addButton.prop('disabled', false);
          addButton.text('Add to Cart');
          spinner.hide();
        }, 2000); // Adjust the delay (in milliseconds) as needed
      },
      error: function(xhr, status, error) {
        // Handle the error
        console.log(xhr.responseText);

        // Enable the button and hide the spinner with a time delay
        setTimeout(function() {
          addButton.prop('disabled', false);
          addButton.text('Add to Cart');
          spinner.hide();
        }, 2000); // Adjust the delay (in milliseconds) as needed
      }
    });
  }
}

function LogoutFunction() {
  $.ajax({
    url: "../includesPHP/logout.php",
    type: "POST",
    success: function(response) {
      // Handle the response from the PHP script
      console.log(response);
      location.reload();
    },
    error: function(xhr, status, error) {
      // Handle any errors that occur during the AJAX request
      console.error(error);
    }
  });
}


function LogoutFunction() {
  $.ajax({
    url: "../includesPHP/logout.php",
    type: "POST",
    success: function(response) {
      // Handle the response from the PHP script
      console.log(response);
      location.reload();
    },
    error: function(xhr, status, error) {
      // Handle any errors that occur during the AJAX request
      console.error(error);
    }
  });
}
