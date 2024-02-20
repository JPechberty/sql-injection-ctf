<?php

namespace Controller;

use Model\ProductModel;
use Studoo\EduFramework\Core\Controller\ControllerInterface;
use Studoo\EduFramework\Core\Controller\Request;
use Studoo\EduFramework\Core\View\TwigCore;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Error\SyntaxError;

class HomeController implements ControllerInterface
{
    /**
     * @param Request $request Requête HTTP
     * @return string|null
     * @throws LoaderError
     * @throws RuntimeError
     * @throws SyntaxError
     */
    public function execute(Request $request): string|null
    {
        $productModel = new ProductModel();

        if(isset($_GET['name']) && $_GET['name'] !== ''){
            $products = $productModel->searchByName($_GET['name']);

        }

        return TwigCore::getEnvironment()->render('home/home.html.twig',
            [
                'titre'   => 'Stock Observer',
                'requete' => $request,
                'products'=> $products ?? null
            ]
        );
    }
}
