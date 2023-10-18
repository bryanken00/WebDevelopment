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

  function passingData(event) {
    event.preventDefault();
    //if default


    //else
    var lastNameInput = document.querySelector('[name="regFormLastName"]');
    var firstNameInput = document.querySelector('[name="regFormFirstName"]');
    var miInput = document.querySelector('[name="regFormM"]');

    var contactInput = document.querySelector('[name="regFormContact"]');
    var emailInput = document.querySelector('[name="regFormEmail"]');

    var brandInput = document.querySelector('.productDes');

    
    var streetInput = document.querySelector('[name="address"]');
    var zipcodeInput = document.querySelector('[name="zipC"]');
    

    var regionSelect = document.querySelector('.regFormRegion');
    var selectedOption = regionSelect.options[regionSelect.selectedIndex];
    var selectedRegion = selectedOption.textContent;

    var provideSelect = document.querySelector('.regFormProvince');
    var selectedOption1 = provideSelect.options[provideSelect.selectedIndex];
    var selectedProvince = selectedOption1.textContent;

    var citySelect = document.querySelector('.regFormCity');
    var selectedOption2 = citySelect.options[citySelect.selectedIndex];
    var selectedCity = selectedOption2.textContent;

    var BrgySelect = document.querySelector('.regFormBarangay');
    var selectedOption3 = BrgySelect.options[BrgySelect.selectedIndex];
    var selectedBrgy = selectedOption3.textContent;



    var firstName = firstNameInput.value;
    var middleName = miInput.value;
    var lastName = lastNameInput.value;
    var contact = contactInput.value;
    var email = emailInput.value;
    var Region = selectedRegion;
    var provide = selectedProvince;
    var city = selectedCity;
    var brgy = selectedBrgy;
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
      brand.trim() === '' ||
      Region.trim() === '' ||
      provide.trim() === '' ||
      city.trim() === '' ||
      brgy.trim() === ''
      ) {
      return;
      }
      // Send values to PHP script
      var xhr = new XMLHttpRequest();
      xhr.open('POST', '../includesPHP/preReg.php', true);
      xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
      
      xhr.onreadystatechange = function() {
          if (xhr.readyState === 4) {
              if (xhr.status === 200) {
                  // Request was successful; handle the response
                  var response = xhr.responseText;
                  alert(response);
                  if(response == 'Pre-Registration Complete')
                    window.location.href = '../purchaseDone';
              } else {
                  // Request failed; handle the error
                  alert('Error: Request failed with status ' + xhr.status);
              }
          }
      };
    
    var queryString = 'RegionName=' + encodeURIComponent(Region) +
    '&ProvinceName=' + encodeURIComponent(provide) +
    '&CityName=' + encodeURIComponent(city) +
    '&BarangayName=' + encodeURIComponent(brgy) +
    '&LastName=' + encodeURIComponent(lastName) +
    '&FirstName=' + encodeURIComponent(firstName) +
    '&MI=' + encodeURIComponent(middleName) +
    '&Contact=' + encodeURIComponent(contact) +
    '&Email=' + encodeURIComponent(email) +
    '&Street=' + encodeURIComponent(street) +
    '&Zipcode=' + encodeURIComponent(zipcode) +
    '&Brand=' + encodeURIComponent(brand);
    
    xhr.send(queryString);
  }