const addCartBtns = document.querySelectorAll('.addCart');
addCartBtns.forEach(function(btn) {
  btn.addEventListener('click', function() {
    const productLbl = btn.parentElement.querySelector('.productLbl').textContent;
    const weight = btn.parentElement.querySelector('.weight').textContent;
    const price = btn.parentElement.querySelector('.price').textContent;

    const xhr = new XMLHttpRequest();
    xhr.open('POST', '../includesPHP/AddtoCart.php');
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.onload = function() {
      console.log(xhr.responseText);
    };
    const data = `productLbl=${encodeURIComponent(productLbl)}&weight=${encodeURIComponent(weight)}&price=${encodeURIComponent(price)}`;
    xhr.send(data);
  });
});