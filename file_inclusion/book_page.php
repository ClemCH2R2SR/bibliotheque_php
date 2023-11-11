<?php
require_once(__DIR__ . '/../layout/header.php');
require_once(__DIR__ . '/../db.php');
require_once(__DIR__ . '/../functions/query_bd.php');
const BR_TAG = "<br/>";
// RECUPERER TOUT LES GET ET LES ATTRIBUER A DES VARIABLES (dynamiquement)

$title              = $_GET['title'];
$author             = $_GET['author'];
$releaseYearDate    = $_GET['releaseYearDate'];
for($i = 1; isset($_GET['category' . $i]); $i++)
{
    ${"category" . $i} = $_GET['category' . $i];
}

?>

<div class="pt-32 my-16 max-w-3xl mx-auto bg-white rounded-md p-6 shadow-md">
        <h1 class="text-2xl font-bold mb-4"><?php echo $title?></h1>

        <!-- Div contenant une image fixe -->
        <div class="mb-4">
            <img src="https://picsum.photos/300/250" alt="Image du livre" class="w-full h-64 object-cover">
        </div>

        <!-- Div contenant le nom de l'auteur, l'année de publication et les catégories -->
        <div class="mb-4">
            <p><span class="font-semibold">Auteur:</span><?php echo $author?></p>
            <p><span class="font-semibold">Année de publication:</span><?php echo $releaseYearDate?></p>
            <p><span class="font-semibold">Catégorie(s):</span><?php for($i=1; isset(${"category" . $i}); $i++)
                                                                    {
                                                                        echo (${"category" . $i} . BR_TAG);
                                                                    }
            ?></p>
        </div>
    </div>

<?php
require_once(__DIR__ .'/../layout/footer.php');
