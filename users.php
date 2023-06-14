<?php
require_once 'dbconfig.php';
require_once 'classes/User.php';

// Databaseverbinding maken
try {
    $db = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Fout bij het verbinden met de database: " . $e->getMessage();
    exit;
}

// Object maken + Gebruikers ophalen
$user = new User($db);
$users = $user->getAllUsers();

// Gebruiker verwijderen
if (isset($_GET['delete'])) {
    $userId = $_GET['delete'];
    $user->deleteUser($userId);
    header("Location: users.php");
    exit;
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Gebruikers</title>
</head>
<body>
<h1>Gebruikers</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Gebruikersnaam</th>
        <th>Acties</th>
    </tr>
    <?php foreach ($users as $user) : ?>
        <tr>
            <td><?php echo $user['id']; ?></td>
            <td><?php echo $user['username']; ?></td>
            <td>
                <a href="users.php?delete=<?php echo $user['id']; ?>">Verwijderen</a>
            </td>
        </tr>
    <?php endforeach; ?>
</table>
</body>
</html>
