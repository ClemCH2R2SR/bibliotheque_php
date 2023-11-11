<?php
require_once(__DIR__) ."/../db.php";

const CALL_BOOKS =         "SELECT * FROM books
                            LEFT JOIN authors ON books.id_author = authors.author_id";

const CALL_CATEGORIES =    "SELECT * FROM books_categories
                            INNER JOIN categories ON books_categories.id_category = categories.category_id
                            ORDER BY id_book ASC";
function askToDb(string $queryBd)
{
    $pdo = getConnection();
    $query =   "$queryBd";
    $pdoStmt = $pdo->query($query);
    return $pdoStmt->fetchAll();
}

function asktoDbSingle(string $queryBd)
{
    $pdo = getConnection();
    $query =   "$queryBd";
    $pdoStmt = $pdo->query($query);
    return $pdoStmt->fetch();
}