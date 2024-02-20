<?php

namespace Entity;

class Product
{
    private ?int $id;
    private string $name;
    private string $type;
    private string $code;
    private int $onlineStock;
    private int $instoreStock;
    private int $purchasePrice;
    private int $sellingPrice;

    /**
     * @param int|null $id
     * @param string $name
     * @param string $type
     * @param string $code
     * @param int $onlineStock
     * @param int $instoreStock
     * @param int $purchasePrice
     * @param int $sellingPrice
     */
    public function __construct(?int $id, string $name, string $type, string $code, int $onlineStock, int $instoreStock, int $purchasePrice, int $sellingPrice)
    {
        $this->id = $id;
        $this->name = $name;
        $this->type = $type;
        $this->code = $code;
        $this->onlineStock = $onlineStock;
        $this->instoreStock = $instoreStock;
        $this->purchasePrice = $purchasePrice;
        $this->sellingPrice = $sellingPrice;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function getType(): string
    {
        return $this->type;
    }

    public function getCode(): string
    {
        return $this->code;
    }

    public function getOnlineStock(): int
    {
        return $this->onlineStock;
    }

    public function getInstoreStock(): int
    {
        return $this->instoreStock;
    }

    public function getPurchasePrice(): int
    {
        return $this->purchasePrice;
    }

    public function getSellingPrice(): int
    {
        return $this->sellingPrice;
    }

}