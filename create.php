<?php
// Include database configuration
require_once 'db_config.php';

// Attempt to connect to MySQL database - $link is already defined in db_config.php

// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

// Create items table if it doesn't exist
$createTableSql = "CREATE TABLE IF NOT EXISTS items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)";

if(!mysqli_query($link, $createTableSql)){
    echo "ERROR: Could not able to execute $createTableSql. " . mysqli_error($link);
    // In a real app, you might want to handle this error more gracefully
}

$name = $description = "";
$name_err = $description_err = $general_err = "";

// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){

    // Validate name
    if(empty(trim($_POST["name"]))){
        $name_err = "Please enter a name.";
    } else{
        $name = trim($_POST["name"]);
    }

    // Validate description
    if(empty(trim($_POST["description"]))){
        $description_err = "Please enter a description.";
    } else{
        $description = trim($_POST["description"]);
    }

    // Check input errors before inserting in database
    if(empty($name_err) && empty($description_err)){

        // Prepare an insert statement
        $sql = "INSERT INTO items (name, description) VALUES (?, ?)";

        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "ss", $param_name, $param_description);

            // Set parameters
            $param_name = $name;
            $param_description = $description;

            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Records created successfully. Redirect to landing page
                header("location: index.php");
                exit();
            } else{
                $general_err = "Something went wrong. Please try again later.";
            }

            // Close statement
            mysqli_stmt_close($stmt);
        } else {
            $general_err = "Error preparing statement: " . mysqli_error($link);
        }
    }

    // Close connection
    mysqli_close($link);

    // If there were errors, display them (or handle them as needed)
    // This part is tricky because we'd ideally redirect back to a form on index.php
    // For simplicity here, if errors occur, we might just show them on a blank page or redirect with error flags.
    if(!empty($name_err) || !empty($description_err) || !empty($general_err)) {
        // For now, just echo errors if any. A better way is to pass them back to index.php
        echo $name_err . "<br>";
        echo $description_err . "<br>";
        echo $general_err . "<br>";
        echo '<a href="index.php">Back to form</a>';
    }

} else {
    // If the request is not POST, redirect to index or show an error
    // For this task, we assume it's accessed via the form POST.
    // If accessed directly via GET, it might show a blank page or errors if db_config.php has issues.
    // Let's add a simple message for direct GET access.
    if($_SERVER["REQUEST_METHOD"] == "GET"){
        // Optionally, check if table exists and display status
        $checkTableSql = "SHOW TABLES LIKE 'items'";
        $result = mysqli_query($link, $checkTableSql);
        if(mysqli_num_rows($result) > 0){
            echo "Table 'items' exists.<br>";
        } else {
            echo "Table 'items' does not exist. It should be created if not.<br>";
        }
        echo "create.php is intended to be accessed via a POST request from the form in index.php.";
        mysqli_close($link);
    }
}
?>
