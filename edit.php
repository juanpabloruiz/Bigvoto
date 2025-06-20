<?php
session_start(); // Start the session for message flashing

require_once 'db_config.php';

$name = $description = "";
$name_err = $description_err = $general_err = "";
$item_id = null;

// Check if ID is provided
if(isset($_GET["id"]) && !empty(trim($_GET["id"]))){
    $item_id = trim($_GET["id"]);

    // Prepare a select statement
    $sql = "SELECT id, name, description FROM items WHERE id = ?";
    if($stmt = mysqli_prepare($link, $sql)){
        mysqli_stmt_bind_param($stmt, "i", $param_id);
        $param_id = $item_id;

        if(mysqli_stmt_execute($stmt)){
            $result = mysqli_stmt_get_result($stmt);

            if(mysqli_num_rows($result) == 1){
                $row = mysqli_fetch_assoc($result);
                $name = $row['name'];
                $description = $row['description'];
            } else{
                // URL doesn't contain valid id. Redirect to error page or display message
                $_SESSION['error_message'] = "Error: Item not found.";
                // For simplicity, we'll just output an error and a link back.
                // A dedicated error page or a redirect to index.php with a message would be better.
                $general_err = "Invalid item ID specified.";
            }
        } else{
            $general_err = "Oops! Something went wrong. Please try again later.";
        }
        mysqli_stmt_close($stmt);
    } else {
        $general_err = "Error preparing statement: " . mysqli_error($link);
    }
} else {
    // URL doesn't contain id parameter.
    $general_err = "No item ID specified for editing.";
}

// Display session messages if any
if(isset($_SESSION['error_message'])){
    $general_err = $_SESSION['error_message'];
    unset($_SESSION['error_message']);
}
if(isset($_SESSION['name_err'])){
    $name_err = $_SESSION['name_err'];
    unset($_SESSION['name_err']);
}
if(isset($_SESSION['description_err'])){
    $description_err = $_SESSION['description_err'];
    unset($_SESSION['description_err']);
}

// mysqli_close($link); // Connection will be closed by update.php or if script ends here without POST
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Item - Venus CRUD App</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
    <h1>Edit Item</h1>

    <?php if(!empty($general_err)): ?>
        <div class="message-error"><?php echo htmlspecialchars($general_err); ?></div>
    <?php endif; ?>

    <?php if($item_id && empty($general_err)): // Only show form if item_id is valid and no major error occurred ?>
    <form action="update.php" method="post">
        <input type="hidden" name="id" value="<?php echo htmlspecialchars($item_id); ?>">
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="<?php echo htmlspecialchars($name); ?>" required>
            <?php if(!empty($name_err)): ?><div class="message-error"><?php echo htmlspecialchars($name_err); ?></div><?php endif; ?>
        </div>
        <div>
            <label for="description">Description:</label>
            <textarea id="description" name="description" required><?php echo htmlspecialchars($description); ?></textarea>
            <?php if(!empty($description_err)): ?><div class="message-error"><?php echo htmlspecialchars($description_err); ?></div><?php endif; ?>
        </div>
        <div>
            <button type="submit">Update Item</button>
        </div>
    </form>
    <?php endif; ?>

    <p><a href="index.php">Back to List</a></p>
    </div> <!-- close .container -->
</body>
</html>
