<?php
    include('../includesPHP/database.php');

    $regionName = $_POST['RegionName'];
    $provinceName = $_POST['ProvinceName'];
    $cityName = $_POST['CityName'];
    $barangayName = $_POST['BarangayName'];
    $street = $_POST['Street'];
    $zipcode = $_POST['Zipcode'];

    $lastName = $_POST['LastName'];
    $firstName = $_POST['FirstName'];
    $mi = $_POST['MI'];

    $contact = $_POST['Contact'];
    $email = $_POST['Email'];
    $brand = $_POST['Brand'];
    
    $sql = "INSERT INTO tblpreregistration(Firstname,Middlename,Lastname,Contactnum,Emailadd,Region,Province,City,Barangay,Street,Zipcode,Brand,Status)
    VALUES('$firstName','$mi','$lastName','$contact','$email','$regionName','$provinceName','$cityName','$barangayName','$street','$zipcode','$brand','pending')";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
?>
