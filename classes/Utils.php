<?php
class Utils
{

    public const SUCCES_INSCRIPTION = "Votre inscription a bien été effectuée";
    public static function redirect(string $location): void
    {
        header('Location: ' . $location);
        exit;
    }
}