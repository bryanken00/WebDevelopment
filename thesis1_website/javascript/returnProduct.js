
const retcon = document.querySelector('#ret-reason-cat');

let retconshow = true;

let retconfunc = function(){
  if(retconshow){
    retcon.style.display = 'block';
    retconshow = false;
  }else{
    retcon.style.display = 'none';
    retconshow = true;
  }
}



function returnConfirm(ref){
  var userResponse = window.confirm("The data is correct?");

  if (userResponse) {
    var selectedItems = [];
    var checkboxes = document.querySelectorAll('input[type="checkbox"]');

    checkboxes.forEach(function (checkbox, index) {
        if (checkbox.checked) {
            var row = checkbox.closest("tr");
            var prodName = row.querySelector("#ProdName").textContent;
            var prodVariant = row.querySelector("#ProdVariant").textContent;
            var prodQuantity = row.querySelector("#prodQuantity").value;

            selectedItems.push({
                productName: prodName,
                variant: prodVariant,
                quantity: prodQuantity
            });
        }
    });

    var data = JSON.stringify(selectedItems);

    var inputField = document.getElementById("reason");
    var category = "null";
    var Reason = inputField.value;

    var fileInput1 = document.querySelector('input[name="image1"]');
    var fileInput2 = document.querySelector('input[name="image2"]');
    var fileInput3 = document.querySelector('input[name="image3"]');

    var fileName1 = fileInput1.files[0] ? fileInput1.files[0].name : '';
    var fileName2 = fileInput2.files[0] ? fileInput2.files[0].name : '';
    var fileName3 = fileInput3.files[0] ? fileInput3.files[0].name : '';



    $.ajax({
      type: "POST",
      url: '../purchaseRecord/returnProcess.php?ref=' + ref,
      data: {
        Category: category,
        Reason: Reason,
        SelectedItems: data,
        img1: fileInput1,
        img2: fileInput2,
        img3: fileInput3
      },
      success: function(response) {
          console.log(response);
      },
      error: function(xhr, textStatus, errorThrown) {
          console.error("Error: " + errorThrown);
      }
  });

  } else {
      return;
  }
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