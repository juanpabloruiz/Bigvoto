<?php
session_start(); // Start the session for message flashing

require_once 'db_config.php';

// Check if ID is provided and is not empty
if(isset($_GET["id"]) && !empty(trim($_GET["id"]))){
    $item_id = trim($_GET["id"]);

    // Prepare a delete statement
    $sql = "DELETE FROM items WHERE id = ?";

    if($stmt = mysqli_prepare($link, $sql)){
        // Bind variables to the prepared statement as parameters
        mysqli_stmt_bind_param($stmt, "i", $param_id);

        // Set parameters
        $param_id = $item_id;

        // Attempt to execute the prepared statement
        if(mysqli_stmt_execute($stmt)){
            // Check if any row was actually deleted
            if(mysqli_stmt_affected_rows($stmt) > 0){
                $_SESSION['success_message'] = "Item deleted successfully.";
            } else {
                // This could happen if the ID doesn't exist, which might not be an "error"
                // but rather an indication that the item was already gone.
                // For simplicity, we'll treat it as a success of the operation.
                // Alternatively, you could set a specific message:
                // $_SESSION['error_message'] = "No item found with that ID to delete, or it was already deleted.";
                $_SESSION['success_message'] = "Item deletion process completed (item may have already been removed).";

            }
        } else{
            $_SESSION['error_message'] = "Error deleting item. SQL Error: " . mysqli_error($link);
        }
        // Close statement
        mysqli_stmt_close($stmt);
    } else {
         $_SESSION['error_message'] = "Error preparing delete statement: " . mysqli_error($link);
    }

    // Close connection
    mysqli_close($link);

} else {
    // URL doesn't contain id parameter or it's empty
    $_SESSION['error_message'] = "Invalid request: Item ID not provided or empty.";
}

// Redirect back to index.php to show messages
header("location: index.php");
exit();
?>
