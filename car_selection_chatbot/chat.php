<?php
session_start();
$conn = new mysqli("localhost", "root", "", "car_db");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Reset session if it's a fresh load
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    session_destroy();
    session_start();
    $_SESSION['step'] = 1;
    $_SESSION['data'] = [];
    exit;
}

if (!isset($_SESSION['step'])) $_SESSION['step'] = 1;
if (!isset($_SESSION['data'])) $_SESSION['data'] = [];

$message = strtolower(trim($_POST['message']));

switch ($_SESSION['step']) {
    case 1:
        $_SESSION['step'] = 2;
        echo "💰 What is your budget in ₹ (e.g., 800000)?";
        break;
    case 2:
        $_SESSION['data']['budget'] = intval($message);
        $_SESSION['step'] = 3;
        echo "⛽ Preferred fuel type? (Petrol/Diesel/Electric)";
        break;
    case 3:
        $_SESSION['data']['fuel'] = ucfirst($message);
        $_SESSION['step'] = 4;
        echo "⚙️ Transmission type? (Manual/Automatic)";
        break;
    case 4:
        $_SESSION['data']['transmission'] = ucfirst($message);
        $_SESSION['step'] = 5;
        echo "🚘 Preferred brand? (or type 'Any')";
        break;
    case 5:
        $_SESSION['data']['brand'] = ucfirst($message);
        $budget = $_SESSION['data']['budget'];
        $fuel = $_SESSION['data']['fuel'];
        $trans = $_SESSION['data']['transmission'];
        $brand = $_SESSION['data']['brand'];

        $query = "SELECT * FROM cars WHERE price <= $budget AND fuel_type = '$fuel' AND transmission = '$trans'";
        if ($brand !== "Any") {
            $query .= " AND brand = '$brand'";
        }

        $result = $conn->query($query);
        if ($result->num_rows > 0) {
            echo "<strong>✅ Recommended Cars:</strong><br>";
            while ($row = $result->fetch_assoc()) {
                echo "🔹 " . $row['name'] . " (" . $row['brand'] . ", ₹" . number_format($row['price']) . ", " . $row['fuel_type'] . ", " . $row['transmission'] . ")<br>";
            }
        } else {
            echo "❌ Sorry, no matching cars found.";
        }

        // Reset session for next conversation
        $_SESSION['step'] = 1;
        $_SESSION['data'] = [];
        break;
}
$conn->close();
?>
