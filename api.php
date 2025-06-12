<?php
include('db.php');

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

header("Content-Type: application/json");

$method = $_SERVER['REQUEST_METHOD'];
$input = json_decode(file_get_contents('php://input'), true);

switch ($method) {
    case 'GET':
        if (isset($_GET['Name'])) {
            $Name = $conn->real_escape_string($_GET['Name']);
            $result = $conn->query("SELECT * FROM hahmot WHERE Name='$Name'");
            $data = $result->fetch_assoc();
            echo json_encode($data);
        } else {
            $result = $conn->query("SELECT * FROM hahmot");
            $hahmot = [];
            while ($row = $result->fetch_assoc()) {
                $hahmot[] = $row;
            }
            echo json_encode($hahmot);
        }
        break;

    case 'POST':

        if (!isset($input['Name'], $input['Element'], $input['Weapon'], $input['Rarity'])) {
            echo json_encode(["error" => "Missing required fields"]);
            break;
        }

        $Name = $input['Name'];
        $Element = $input['Element'];
        $Weapon = $input['Weapon'];
        $Rarity = $input['Rarity'];
        $WeaponImage = $input['WeaponImage'];
        $ElementImage = $input['ElementImage'];
        $SmallImage = $input['SmallImage'];
        $BigImage = $input['BigImage'];

        $stmt = $conn->prepare("INSERT INTO hahmot (Name, Element, Weapon, Rarity, WeaponImage, ElementImage, SmallImage, BigImage) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("sssissss", $Name, $Element, $Weapon, $Rarity, $WeaponImage, $ElementImage, $SmallImage, $BigImage);

        if ($stmt->execute()) {
            echo json_encode(["message" => "Character added successfully"]);
        } else {
            echo json_encode(["error" => $stmt->error]);
        }

        $stmt->close();
        break;

    case 'PUT':
        if (!isset($_GET['Name'])) {
            echo json_encode(["error" => "Missing Name parameter"]);
            break;
        }
        if (!isset($input['Element'], $input['Weapon'], $input['Rarity'])) {
            echo json_encode(["error" => "Missing fields in request body"]);
            break;
        }

        $Name = $input['Name'];
        $Element = $input['Element'];
        $Weapon = $input['Weapon'];
        $Rarity = $input['Rarity'];
        $WeaponImage = $input['WeaponImage'];
        $ElementImage = $input['ElementImage'];
        $SmallImage = $input['SmallImage'];
        $BigImage = $input['BigImage'];


        $stmt = $conn->prepare("UPDATE hahmot SET Element=?, Weapon=?, Rarity=?, WeaponImage=?, ElementImage=?, SmallImage=?, BigImage=? WHERE Name=?");
        $stmt->bind_param("ssisssss", $Element, $Weapon, $Rarity, $WeaponImage, $ElementImage, $SmallImage, $BigImage, $Name);

        if ($stmt->execute()) {
            echo json_encode(["message" => "Character updated successfully"]);
        } else {
            echo json_encode(["error" => $stmt->error]);
        }

        $stmt->close();
        break;

    case 'DELETE':
        if (!isset($_GET['Name'])) {
            echo json_encode(["error" => "Missing Name parameter"]);
            break;
        }

        $Name = $_GET['Name'];

        $stmt = $conn->prepare("DELETE FROM hahmot WHERE Name=?");
        $stmt->bind_param("s", $Name);

        if ($stmt->execute()) {
            echo json_encode(["message" => "Character deleted successfully"]);
        } else {
            echo json_encode(["error" => $stmt->error]);
        }

        $stmt->close();
        break;

    default:
        echo json_encode(["message" => "Invalid request method"]);
        break;
}

$conn->close();
?>