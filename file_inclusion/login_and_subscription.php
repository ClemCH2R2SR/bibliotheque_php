<?php
require_once(__DIR__ . "/../layout/header.php");
require_once(__DIR__ . "/../db.php");
?>
<div class="flex flex-row ">
    

    <div class="mt-32 mx-auto">        
        <form method="POST" action="subscription_process.php">
            <h1>Inscription</h1>
            <div class="mb-6">
            <label for="pseudo" class="mb-2 text-sm font-medium text-gray-900 dark:text-black">Pseudo</label>
            <input type="pseudo" type="text" name="pseudo" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required>
            </div>
            <div class="mb-6">
                <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Email</label>
                <input type="email" name="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required>
            </div>
            <div class="mb-6">
                <label for="password"  class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Mot de passe</label>
                <input type="password" name="password" id="password" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required>
            </div>
            <div class="mb-6">
                <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Confirmation de mot de passe</label>
                <input  type="repeat_password" name="repeat_password" id="repeat_password" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required>
            </div>
            <div class="flex items-start mb-6">
                <div class="flex items-center h-5">
                <input id="remember" type="checkbox" value="" class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-blue-300 dark:bg-gray-700 dark:border-gray-600 dark:focus:ring-blue-600 dark:ring-offset-gray-800 dark:focus:ring-offset-gray-800">
                </div>
                <label for="remember" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">S'inscrire à la Newsletter</label>
            </div>
            <button type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">CONFIRMER</button>
        </form>
    </div>

    <div class="mt-32 mx-auto">
    <?php
        if(isset($_GET['error']))
        {
            $message = $_GET['error'];
            echo $message;
        }
        if(isset($_GET['succes']))
        {
            $message = $_GET['succes'];
            echo $message;
        }
        ?>
    </div>

    <div class="mt-32 mx-auto">        
        <form method="POST" action="<?php __DIR__ . '/../file_inclusion/login_process.php'?>">
            <h1>Connexion</h1>
            <div class="mb-6">
            <label for="pseudo_or_mail" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Pseudo ou Email</label>
            <input type="text" id="pseudo_or_mail" name="pseudo_or_mail" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required>
            </div>
            <div class="mb-6">
                <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Mot de passe</label>
                <input type="password" id="password" name="password" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required>
            </div>
            <button type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">CONFIRMER</button>
        </form>
    </div>
</div>


<?php
require_once(__DIR__ . "/../layout/footer.php");