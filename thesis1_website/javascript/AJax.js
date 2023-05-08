$(document).ready(function() {
    $('.addCart').click(function() {
      var productID = $(this).attr('id');
      var productImg = $(this).siblings('.productImgCon').find('img').attr('src');
      var productLabel = $(this).siblings('.productLbl').text();
      var productWeight = $(this).siblings('.weight').text();
      var productPrice = $(this).siblings('.price').text();
  
      // Make an AJAX request to the AddtoCart.php file with the data
      $.ajax({
        url: '../includesPHP/AddtoCart.php',
        type: 'POST',
        data: {
          productImg: productImg,
          productLabel: productLabel,
          productWeight: productWeight,
          productPrice: productPrice
        },
        success: function(response) {
          // Handle the response from the server
          console.log(response);
        },
        error: function(xhr, status, error) {
          // Handle the error
          console.log(xhr.responseText);
        }
      });
    });
  });