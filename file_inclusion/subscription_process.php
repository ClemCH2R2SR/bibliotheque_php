<?php
require_once(__DIR__ . '/../classes/Utils.php');
require_once(__DIR__ . '/../classes/Errors.php');
require_once(__DIR__ . '/../db.php');

// if ($_SERVER['REQUEST_METHOD'] !== 'POST') 
// {
//     Utils::redirect('login_and_subscription.php');
// }


try {
    $pdo = getConnection();

    $pseudo = $_POST['pseudo'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirmPassword = $_POST['repeat_password'];

    if($password === $confirmPassword)
    {

        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
    
    
        // PREPARATION
        $query = "INSERT INTO users (`username`, `email`, `password`) VALUES (:pseudo, :email, :hashedPassword)";
        $stmtInsert = $pdo->prepare($query);
        // EXECUTION
        $stmtInsert->execute([
            'pseudo' => $pseudo,
            'email' => $email,
            'hashedPassword' => $hashedPassword
        ]);
    
        Utils::redirect("login_and_subscription.php?succes=" . Utils::SUCCES_INSCRIPTION);
    }
    else
    {
        Utils::redirect("login_and_subscription.php?error=" . Errors::NOT_SAME_PASSWORD_CONFIRMATION);
    }



} catch (PDOException) 
{
    Utils::redirect('login_and_subscription.php?error=' . Errors::FAILED_INSCRIPTIONAL);
}