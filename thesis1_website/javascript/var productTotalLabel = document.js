var productTotalLabel = document.querySelector('.productTotal');
var productTotalText = productTotalLabel.textContent;
var toTotal = parseFloat(productTotalText.match(/\d+\.\d+/)[0]);
// start of cart
// add minus the quantity
function quantityAdd(index) {
  var total = 0;
  var quantityInputs = document.getElementsByClassName('quantityNo');
  var priceElements = document.getElementsByClassName('iPrice');
  var checkboxes = document.getElementsByClassName('productCheckbox');

  let quantity = parseInt(quantityInputs[index].value);
  let price = parseFloat(priceElements[index].textContent.replace('₱', ''));
  
  
  if (quantity >= 0) {
    let subtotal = (quantity) * price;
    total += subtotal;
    let finalTotal = total + toTotal;
    quantityInputs[index].value = quantity + 1;
    if(checkboxes[index].checked)
      document.querySelector('.productTotal').textContent = 'Total: ₱' + finalTotal.toFixed(2);
  }
}


function quantityMinus(index) {
  var total = 0;
  var quantityInputs = document.getElementsByClassName('quantityNo');
  var priceElements = document.getElementsByClassName('iPrice');
  var checkboxes = document.getElementsByClassName('productCheckbox');

  let quantity = parseInt(quantityInputs[index].value);
  let price = parseFloat(priceElements[index].textContent.replace('₱', ''));
  
  if (quantity >= 0) {
    let subtotal = (quantity - 1) * price;
    total += subtotal;
    let finalTotal = toTotal + total;
    quantityInputs[index].value = quantity - 1;
    if (checkboxes[index].checked)
      document.querySelector('.productTotal').textContent = 'Total: ₱' + finalTotal.toFixed(2);
  }
}