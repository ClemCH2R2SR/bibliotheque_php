<?php
    const BR_TAG = "<br/>";
    require_once(__DIR__ . '/layout/header.php');
    require_once(__DIR__ . '/db.php');
    // require_once(__DIR__ .'/classes/Book.php');
    require_once(__DIR__ . '/functions/query_bd.php');
    require_once(__DIR__ . '/functions/functions.php');


    //Je me connecte à la BDD avec ma fonction askToDb en lieu attribuant

    // $pdo        = getConnection();
    $books      = askToDb(CALL_BOOKS);
    $categories = askToDb(CALL_CATEGORIES);



    $newCategories = array(); // Tableau pour stocker les nouvelles catégories organisées par "id_book"
    foreach ($categories as $category) // Parcourir les catégories pour regrouper par "id_book"
    {
        $id = $category['id_book'];

        // Créer un nouveau tableau s'il n'existe pas déjà pour cet id_book
        if (!isset($newCategories[$id])) 
        {
            $newCategories[$id] = array(
                'id_book' => $id,
                'categories' => array()
            );
        }

        // Ajouter les "category_name" dans le tableau 'categories'
        $newCategories[$id]['categories'][] = $category['category_name'];
    }


    foreach ($books as $key => $book) // Parcourir le tableau $books pour associer les nouvelles catégories
    {
        $bookId = $book['book_id'];

        // Parcourir le tableau $newCategories pour trouver la correspondance et insérer les catégories
        foreach ($newCategories as $category) 
        {
            $categoryId = $category['id_book'];

            // Si les clés correspondent, insérer les catégories dans le tableau books
            if ($bookId === $categoryId) {
                if (isset($books[$key]['categories']) && is_array($books[$key]['categories']))
                {
                    $books[$key]['categories'] = array_merge($books[$key]['categories'], $category['categories']);
                } 
                else 
                {
                    $books[$key]['categories'] = $category['categories'];
                }
            }
        }
    }
?>


</div>
<section class="pt-64 max-w-5xl flex-column mx-auto">

    <div>
        <form method="GET">   
            <label for="title"  class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-white">Search</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                    <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/>
                    </svg>
                </div>
                <input type="text" id="title" name="title" class="block w-full p-4 pl-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Search Book ..." required>
                <button type="submit" class="text-white absolute right-2.5 bottom-2.5 bg-green-500 hover:bg-green-700 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Search</button>
            </div>
        </form>
        <form method="GET">   
            <label for="author" class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-white">Search</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                    <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/>
                    </svg>
                </div>
                <input type="text" id="author" name="author" class="block w-full p-4 pl-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Search Author ..." required>
                <button type="submit" class="text-white absolute right-2.5 bottom-2.5 bg-green-500 hover:bg-green-700 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Search</button>
            </div>
        </form>
        <form method="GET">   
            <label for="releaseYear" class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-white">Search</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                    <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/>
                    </svg>
                </div>
                <input type="text" id="releaseYear" name="releaseYear" class="block w-full p-4 pl-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Search Release year ..." required>
                <button type="submit" class="text-white absolute right-2.5 bottom-2.5 bg-green-500 hover:bg-green-700 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Search</button>
            </div>
        </form>
    </div>



    <div class="grid grid-cols-2 md:grid-cols-2 gap-4 lg:grid-cols-4">
        <?php

            //Affiche tout les book si aucun des parametres n'est envoyé
            if(!isset($_GET['releaseYear']) && !isset($_GET['title']) && !isset($_GET['author']))
            {
                foreach ($books as $book)
                {   
                        require(__DIR__ . '/components/book_card_template.php');   
                }
            }

            //Affiche tout les book qui ont pour date de parution la date soumise par formulaire 
            if (isset($_GET['releaseYear']))
            {
                $filtredBooksPerYear = array();
                $yearFilter = $_GET['releaseYear'];
                foreach ($books as $book) 
                {
                    if (isset($book['release_year_date']) && $book['release_year_date'] == $yearFilter) {
                        $filtredBooksPerYear[] = $book;
                    }
                }
                if(!empty($filtredBooksPerYear))
                {
                    foreach ($filtredBooksPerYear as $book)
                    {   
                            require(__DIR__ . '/components/book_card_template.php');   
                    }
                }else
                {
                    echo 'Pas de résultats pour cette recherche';
                }
            }

            //Affiche tout les book qui contiennent des mots dans leurs titre contenu dans la string soumise par formulaire 
            if (isset($_GET['title']))
            {
                $queryTitle = $_GET['title'];
                foreach ($books as $book) 
                {
                    if (stripos($book['title'], $queryTitle) !== false) {
                        $filtredBooksPerTitle[] = $book;
                    }
                }
                if(isset($filtredBooksPerTitle))
                {
                    foreach ($filtredBooksPerTitle as $book)
                    {   
                        require(__DIR__ . '/components/book_card_template.php');
                    }
                }else{
                    echo 'Pas de résultats pour cette recherche';
                }
            }


            //Affiche tout les books qui contiennent des le nom ou prénom de l'auteur
            if (isset($_GET['author']))
            {
                $queryAuthor = $_GET['author'];
                foreach ($books as $book)
                {
                    $authorFirstame = $book['author_firstname'];
                    $authorLastame = $book['author_lastname'];
                    $author = getAuthorFullName($authorFirstame, $authorLastame);
                    if (stripos($author, $queryAuthor) !== false) {
                        $filtredBooksPerAuthor[] = $book;
                    }
                }
                if (isset($filtredBooksPerAuthor))
                {
                    foreach ($filtredBooksPerAuthor as $book)
                    {   
                        require(__DIR__ . '/components/book_card_template.php');
                    }
                }else
                {
                    echo 'Pas de résultats pour cette recherche';
                }
            }
        ?>
    </div>
</section>

<?php
require_once(__DIR__ . '/layout/footer.php');