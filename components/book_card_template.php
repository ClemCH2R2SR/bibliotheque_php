<?php
require_once(__DIR__ . "/../functions/functions.php");

$bookId = $book['book_id'];
$authorFullName = getAuthorFullName($book['author_firstname'], $book['author_lastname']);
$title = $book['title'];
$releaseYearDate = $book['release_year_date'];


foreach ($book['categories'] as $index => $valeur) // Boucle pour traiter chaque élément du tableau de categories
{
    ${"category" . ($index + 1)} = $valeur; // Création des variables category dynamiquement
}
?> 

<div class="mt-8 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
    <a href="#">
        <img class="rounded-t-lg mx-auto" src="https://picsum.photos/300/250" alt="" />
    </a>
    <div class="p-5">
        <a href="#">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white"><?php echo $title; ?></h5>
        </a>
        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400"><?php echo $releaseYearDate; ?></p>
        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400"><?php echo $authorFullName ?></p>
        <a href="file_inclusion/book_page.php?id=<?php  echo $bookId;
                                                        echo"&author=$authorFullName";
                                                        echo"&title=$title";
                                                        echo"&releaseYearDate=$releaseYearDate";
                                                        // Affichage des valeurs des variables créées toujours de facon dynamique
                                                        for ($i = 1; isset(${"category" . $i}); $i++)
                                                        {
                                                            echo "&category" . $i . "=" . ${"category" . $i};
                                                        }
                                                    ?>"
                                            class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Consulter
            <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
            </svg>
        </a>
        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">
            <?php 
            // affichage des categories dynamiquement
            for($i = 1; isset(${"category" . $i}); $i++)
            {
                echo ${"category" . $i} . BR_TAG ;
            }
            ?>
        </p>
    </div>
</div>