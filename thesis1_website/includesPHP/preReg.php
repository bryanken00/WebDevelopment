<?php
    include('../includesPHP/database.php');

// Retrieve the values from the POST request
$regionName = $_POST['RegionName'];
$provinceName = $_POST['ProvinceName'];
$cityName = $_POST['CityName'];
$barangayName = $_POST['BarangayName'];

$lastName = $_POST['LastName'];
$firstName = $_POST['FirstName'];
$mi = $_POST['MI'];
$contact = $_POST['Contact'];
$email = $_POST['Email'];
$street = $_POST['Street'];
$zipcode = $_POST['Zipcode'];
$brand = $_POST['Brand'];

// Echo the values
// echo "Region Name: " . $regionName . "<br>";
// echo "Province Name: " . $provinceName . "<br>";
// echo "City Name: " . $cityName . "<br>";
// echo "Barangay Name: " . $barangayName . "<br>";
// echo "Last Name: " . $lastName . "<br>";
// echo "First Name: " . $firstName . "<br>";
// echo "MI: " . $mi . "<br>";
// echo "Contact: " . $contact . "<br>";
// echo "Email: " . $email . "<br>";
// echo "Street: " . $street . "<br>";
// echo "Zipcode: " . $zipcode . "<br>";
// echo "Brand: " . $brand . "<br>";

    $sql = "INSERT INTO tblpreregistration(Firstname,Middlename,Lastname,Contactnum,Emailadd,Region,Province,City,Barangay,Street,Zipcode,Brand,Status) VALUES('$firstName','$mi','$lastName','$contact','$email','$regionName','$provinceName','$cityName','$barangayName','$street','$zipcode','$brand','pending')";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
?>
