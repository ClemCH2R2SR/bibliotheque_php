<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com?plugins=typography"></script>
    <title>
        <?php
            echo $title ?? "Entrainement";
        ?>
    </title>
</head>
<body>
<?php
require_once __DIR__ . '/navbar.php';
?>