<?php

namespace Model;

use Entity\Product;
use Exception;
use PDO;
use Studoo\EduFramework\Core\Service\DatabaseService;

class ProductModel
{
    private PDO $bdd;

    /**
     * @throws Exception
     */
    public function __construct()
    {
        $this->bdd = DatabaseService::getConnect();
    }
    public function searchByName(string $name): array
    {
        $request = $this->bdd->prepare("SELECT * FROM product where name like '%$name%'");
        $request->execute();
        $productsArray = [];

        foreach ($request->fetchAll() as $value)
        {
            $product = new Product(
                $value["id"],
                $value["name"],
                $value["type"],
                $value["code"],
                $value["online_stock"],
                $value["instore_stock"],
                $value["purchase_price"],
                $value["selling_price"]
            );
            $productsArray[] = $product;
        }

        return $productsArray;

    }
}