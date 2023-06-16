var regionID = 0;
var provinceID = 0;
var cityID = 0;
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
            option.value = region.code; // Use the appropriate property as the option value
            option.text = region.name;
            regionSelect.appendChild(option);
        });
      })
      .catch(function (error) {
        console.error("Error:", error);
      });
  }


document.getElementById("regionSelect").addEventListener("change", function () {
  regionID = parseInt(this.value);
  loadProvinces();
});

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

document.getElementById("provinceSelect").addEventListener("change", function () {
    provinceID = parseInt(this.value);
    loadCities();
});



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

document.getElementById("citySelect").addEventListener("change", function () {
    cityID = parseInt(this.value);
    loadBarangays();
});

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
  