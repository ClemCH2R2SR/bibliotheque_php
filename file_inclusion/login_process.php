<?php
require_once(__DIR__ . '/../classes/Utils.php');
require_once(__DIR__ . '/../classes/Errors.php');
require_once(__DIR__ . '/../db.php');


try {
        $pdo = getConnection();

        if(isset($_POST['pseudo_or_mail']) && isset($_POST['password']))
        {
            $pseudoOrMail = $_POST['pseudo_or_mail'];
            $password = $_POST['password'];
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
        
            
            // PREPARATION
            $query = "SELECT password FROM users WHERE username = $pseudoOrMail ;";
            $stmt = $pdo->prepare($query);
            // EXECUTION
            $stmt->execute();
            
            
        
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