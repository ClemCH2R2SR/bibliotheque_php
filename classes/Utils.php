<?php
class Utils
{

    public const SUCCES_INSCRIPTION = "Votre inscription a bien été effectuée";
    public const SUCCES_LOGIN = "Vous etes connecté";
    
    public static function redirect(string $location): void
    {
        header('Location: ' . $location);
        exit;
    }
}