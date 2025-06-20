<?php
session_start(); // Start the session for message flashing

require_once 'db_config.php';

$name = $description = "";
$name_err = $description_err = "";
$item_id = null;

// Check if the request method is POST
if($_SERVER["REQUEST_METHOD"] == "POST"){
    // Validate and retrieve ID
    if(isset($_POST["id"]) && !empty(trim($_POST["id"]))){
        $item_id = trim($_POST["id"]);
    } else {
        $_SESSION['error_message'] = "Error: Item ID was not provided for update.";
        header("location: index.php"); // Or a generic error page
        exit();
    }

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

    // If there are validation errors, store them in session and redirect back to edit form
    if(!empty($name_err) || !empty($description_err)){
        $_SESSION['name_err'] = $name_err;
        $_SESSION['description_err'] = $description_err;
        // Store current (but invalid) values to repopulate form, though edit.php fetches fresh from DB
        // $_SESSION['form_name_val'] = $name;
        // $_SESSION['form_description_val'] = $description;
        header("location: edit.php?id=" . $item_id);
        exit();
    }

    // Prepare an update statement
    $sql = "UPDATE items SET name = ?, description = ? WHERE id = ?";

    if($stmt = mysqli_prepare($link, $sql)){
        mysqli_stmt_bind_param($stmt, "ssi", $param_name, $param_description, $param_id);

        // Set parameters
        $param_name = $name;
        $param_description = $description;
        $param_id = $item_id;

        // Attempt to execute the prepared statement
        if(mysqli_stmt_execute($stmt)){
            $_SESSION['success_message'] = "Item updated successfully.";
            header("location: index.php");
            exit();
        } else{
            $_SESSION['error_message'] = "Something went wrong. Please try again later. SQL Error: " . mysqli_error($link);
            header("location: edit.php?id=" . $item_id);
            exit();
        }
        mysqli_stmt_close($stmt);
    } else {
        $_SESSION['error_message'] = "Error preparing update statement: " . mysqli_error($link);
        header("location: edit.php?id=" . $item_id);
        exit();
    }

    mysqli_close($link);

} else {
    // If the request is not POST, redirect to index or show an error
    $_SESSION['error_message'] = "Invalid request method for update.";
    header("location: index.php");
    exit();
}
?>
