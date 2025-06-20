<?php session_start(); // Start session to access session variables ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Venus CRUD App</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
    <?php
    // Display success message
    if(isset($_SESSION['success_message'])){
        echo '<div class="message-success">' . htmlspecialchars($_SESSION['success_message']) . '</div>';
        unset($_SESSION['success_message']); // Clear the message after displaying
    }

    // Display error message
    if(isset($_SESSION['error_message'])){
        echo '<div class="message-error">' . htmlspecialchars($_SESSION['error_message']) . '</div>';
        unset($_SESSION['error_message']); // Clear the message after displaying
    }
    ?>
    <h1>Welcome to Venus CRUD App</h1>

    <h2>Add New Item</h2>
    <form action="create.php" method="post">
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div>
            <label for="description">Description:</label>
            <textarea id="description" name="description" required></textarea>
        </div>
        <div>
            <button type="submit">Add Item</button>
        </div>
    </form>

    <h2>Existing Items</h2>
    <?php
    // Include database configuration
    require_once 'db_config.php';

    // Attempt select query execution
    $sql = "SELECT id, name, description, created_at FROM items ORDER BY created_at DESC";
    if($result = mysqli_query($link, $sql)){
        if(mysqli_num_rows($result) > 0){
            echo "<table>";
                echo "<thead>";
                    echo "<tr>";
                        echo "<th>ID</th>";
                        echo "<th>Name</th>";
                        echo "<th>Description</th>";
                        echo "<th>Created At</th>";
                        echo "<th>Actions</th>";
                    echo "</tr>";
                echo "</thead>";
                echo "<tbody>";
                while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                        echo "<td>" . htmlspecialchars($row['id']) . "</td>";
                        echo "<td>" . htmlspecialchars($row['name']) . "</td>";
                        echo "<td>" . htmlspecialchars($row['description']) . "</td>";
                        echo "<td>" . htmlspecialchars($row['created_at']) . "</td>";
                        echo "<td>";
                        echo "<a href='edit.php?id=" . htmlspecialchars($row['id']) . "'>Edit</a> | ";
                        echo "<a href='delete.php?id=" . htmlspecialchars($row['id']) . "' onclick=\"return confirm('Are you sure you want to delete this item?');\">Delete</a>";
                        echo "</td>";
                    echo "</tr>";
                }
                echo "</tbody>";
            echo "</table>";
            // Free result set
            mysqli_free_result($result);
        } else{
            echo "<p>No items found.</p>";
        }
    } else{
        echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
    }

    // Close connection
    mysqli_close($link);
    ?>
    </div> <!-- close .container -->
</body>
</html>