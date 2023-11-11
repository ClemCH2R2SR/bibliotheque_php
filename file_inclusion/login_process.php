<?php
require_once(__DIR__ . '/../classes/Utils.php');
require_once(__DIR__ . '/../classes/Errors.php');
require_once(__DIR__ . '/../db.php');


try {
        if(isset($_POST['pseudo_or_mail']) && isset($_POST['password']))
        {
            $pdo = getConnection();
            $pseudoOrMail = $_POST['pseudo_or_mail'];
            $password = $_POST['password'];
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
            
            
            $query = "SELECT password FROM users WHERE username = :pseudoOrMail";
            $stmt = $pdo->prepare($query);
            $stmt->bindParam(':pseudoOrMail', $pseudoOrMail);
            $stmt->execute();
            $pseudo = $stmt->fetch(PDO::FETCH_ASSOC);
            

            $query = "SELECT password FROM users WHERE email = :pseudoOrMail";
            $stmt = $pdo->prepare($query);
            $stmt->bindParam(':pseudoOrMail', $pseudoOrMail);
            $stmt->execute();
            $mail = $stmt->fetch(PDO::FETCH_ASSOC);

            if (!empty($pseudo) || !empty($mail)) {
                if (password_verify($password, $pseudo['password']) || password_verify($password, $mail['password'])) {
                    // Mot de passe correct
                    Utils::redirect("login_and_subscription.php?succes=" . Utils::SUCCES_LOGIN);
                } else {
                    // Mot de passe incorrect
                    Utils::redirect("login_and_subscription.php?error=" . Errors::WRONG_PASSWORD);
                }
            } else {
                // 404 not found
                Utils::redirect("login_and_subscription.php?error=" . Errors::USER_NOT_FOUND);
            }
        }
    } catch (PDOException) 
        {
            Utils::redirect('login_and_subscription.php?error=' . Errors::FAILED_LOGIN);
        }