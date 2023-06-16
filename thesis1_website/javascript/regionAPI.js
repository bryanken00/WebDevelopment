var regionID = 0;
var provinceID = 0;
var cityID = 0;


function myFunction() {
  // Static variables
  myFunction.RegionName = '';
  myFunction.ProvinceName = '';
  myFunction.CityName = '';
  myFunction.BarangayName = '';
}

window.onload = loadRegions;

function loadRegions() {
    var regionSelect = document.getElementById("regionSelect");
    regionSelect.innerHTML = '<option value="Default">Region</option>';
    fetch("https://psgc.gitlab.io/api/regions")
      .then(function (response) {
        return response.json();
      })
      .then(function (data) {
        data.forEach(function (region) {
            var option = document.createElement("option");
            option.value = region.code;
            option.text = region.name;
            regionSelect.appendChild(option);
        });
      })
      .catch(function (error) {
        console.error("Error:", error);
      });
  }

function loadProvinces() {
    var provinceSelect = document.getElementById("provinceSelect");
    provinceSelect.innerHTML = '<option value="Default">Province</option>';
    fetch("https://psgc.gitlab.io/api/provinces/")
      .then(function (response) {
        return response.json();
      })
      .then(function (data) {
        data.forEach(function (province) {
            if(regionID == province.regionCode){
                var option = document.createElement("option");
                option.value = province.code;
                option.text = province.name;
                provinceSelect.appendChild(option);
            }
        });
      })
      .catch(function (error) {
        console.error("Error:", error);
      });
  }

function loadCities() {
  var citySelect = document.getElementById("citySelect");
  citySelect.innerHTML = '<option value="Default">City</option>';
  fetch("https://psgc.gitlab.io/api/municipalities/")
    .then(function (response) {
      return response.json();
    })
    .then(function (data) {
      data.forEach(function (city) {
          if(provinceID == city.provinceCode){
              var option = document.createElement("option");
              option.value = city.code;
              option.text = city.name;
              citySelect.appendChild(option);
          }
      });
    })
    .catch(function (error) {
      console.error("Error:", error);
    });
  }

  function loadBarangays() {
    var barangaySelect = document.getElementById("barangaySelect");
    barangaySelect.innerHTML = '<option value="Default">Barangay</option>';
    fetch("https://psgc.gitlab.io/api/barangays/")
      .then(function (response) {
        return response.json();
      })
      .then(function (data) {
        data.forEach(function (barangay) {
            if(cityID == barangay.municipalityCode){
                var option = document.createElement("option");
                option.value = barangay.code;
                option.text = barangay.name;
                barangaySelect.appendChild(option);
            }
        });
      })
      .catch(function (error) {
        console.error("Error:", error);
      });
  }


  document.getElementById("regionSelect").addEventListener("change", function () {
    regionID = parseInt(this.value);
    myFunction.RegionName = this.options[this.selectedIndex].text; // Set the RegionName value
    loadProvinces();
  });
  
  document.getElementById("provinceSelect").addEventListener("change", function () {
    provinceID = parseInt(this.value);
    myFunction.ProvinceName = this.options[this.selectedIndex].text; // Set the ProvinceName value
    loadCities();
  });
  
  document.getElementById("citySelect").addEventListener("change", function () {
    cityID = parseInt(this.value);
    myFunction.CityName = this.options[this.selectedIndex].text; // Set the CityName value
    loadBarangays();
  });
  
  document.getElementById("barangaySelect").addEventListener("change", function () {
    myFunction.BarangayName = this.options[this.selectedIndex].text; // Set the BarangayName value
  });

  function passingData() {

    //if default


    //else
    var lastNameInput = document.querySelector('.regFormLastName');
    var firstNameInput = document.querySelector('.regFormFirstName');
    var miInput = document.querySelector('.regFormMI');
    var contactInput = document.querySelector('.regFormContact');
    var emailInput = document.querySelector('.regFormEmail');
    var streetInput = document.querySelector('.address2');
    var zipcodeInput = document.querySelector('.zipc');
    var brandInput = document.querySelector('.prodes');

    var lastName = lastNameInput.value;
    var firstName = firstNameInput.value;
    var mi = miInput.value;
    var contact = contactInput.value;
    var email = emailInput.value;
    var street = streetInput.value;
    var zipcode = zipcodeInput.value;
    var brand = brandInput.value;
    if (
      lastName.trim() === '' ||
      firstName.trim() === '' ||
      contact.trim() === '' ||
      email.trim() === '' ||
      street.trim() === '' ||
      zipcode.trim() === '' ||
      brand.trim() === '' ) {
      return;
  }
      // Send values to PHP script
    var xhr = new XMLHttpRequest();
    xhr.open('POST', '../includesPHP/preReg.php', true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.onreadystatechange = function() {
      if (xhr.readyState === 4 && xhr.status === 200) {
        console.log('Session values stored successfully!');
      }
    };
    
    xhr.send(
      'RegionName=' + encodeURIComponent(myFunction.RegionName) +
      '&ProvinceName=' + encodeURIComponent(myFunction.ProvinceName) +
      '&CityName=' + encodeURIComponent(myFunction.CityName) +
      '&BarangayName=' + encodeURIComponent(myFunction.BarangayName) +
      '&LastName=' + encodeURIComponent(lastName) +
      '&FirstName=' + encodeURIComponent(firstName) +
      '&MI=' + encodeURIComponent(mi) +
      '&Contact=' + encodeURIComponent(contact) +
      '&Email=' + encodeURIComponent(email) +
      '&Street=' + encodeURIComponent(street) +
      '&Zipcode=' + encodeURIComponent(zipcode) +
      '&Brand=' + encodeURIComponent(brand)
    );
    window.location.href = '../purchaseDone';
  }