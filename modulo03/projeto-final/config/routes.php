<?php

use App\Controller\IndexController;
use App\Controller\ProductController;
use App\controller\CategoryController;


function CreateRoute(string $controllerName, string $methodName){
    return [
        'controller' => $controllerName,
        'method' => $methodName,
    ];
}

$routes=[
    '/' => CreateRoute(IndexController::class, 'indexAction'),
    '/produtos' => CreateRoute(ProductController::class, 'listAction'),
    '/produtos/novo' => CreateRoute(ProductController::class, 'addAction'),
    '/produtos/editar' => CreateRoute(ProductController::class, 'editAction'),
    '/categoria' => CreateRoute(CategoryController::class, 'listAction'),
    '/categoria/novo' => CreateRoute(CategoryController::class, 'addAction'),
    '/categorias/editar' => CreateRoute(CategoryController::class, 'updateAction'),
    '/categorias/excluir' => createRoute(CategoryController::class, 'removeAction')
];

return $routes;