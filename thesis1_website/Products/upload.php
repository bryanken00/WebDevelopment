<?php
$targetDirectory = "resources/"; // The directory where you want to save the uploaded files
$targetFile = $targetDirectory . basename($_FILES["file"]["name"]);

if (move_uploaded_file($_FILES["file"]["tmp_name"], $targetFile)) {
    echo "File uploaded successfully.";
} else {
    echo "Error uploading file.";
}
?>
