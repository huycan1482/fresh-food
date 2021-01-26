<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    private $totalNumber = 0;
    private $totalPrice = 0;
    private $products;

    public function getTotalNumber () 
    {
        return $this->totalNumber;
    }

    public function getTotalPrice ()
    {
        return $this->totalPrice;
    }

    public function getProducts ()
    {
        return $this->products;
    }

    public function __construct($cart)
    {
        if ($cart) {
            $this->products = $cart->products;
            $this->totalNumber = $cart->totalNumber;
            $this->totalPrice = $cart->totalPrice;
        }
    }

    public function add ($product, $number) 
    {
        $_item = [
            'id' => $product->id,
            'name' => $product->name,
            'number' => $number,
            'price' => $product->price - ($product->sale * $product->price)/100,
            'sale' => $product->sale,
            'image' => $product->image,
        ];

        if ($this->products && array_key_exists($product->id, $this->products)) {
            // $_item = $this->products[$product->id];
            $this->totalPrice -= $this->products[$product->id]['number'] * $this->products[$product->id]['price'] ; 

            $this->products[$product->id]['number'] += $number;

            $this->totalPrice += $this->products[$product->id]['number'] * $this->products[$product->id]['price'];

        } else {
            $this->products[$product->id] = $_item;

            $this->totalPrice += $number * ( $product->price - $product->sale * $product->price/100);

            $this->totalNumber++;
        }

        // $_item['number']++;
        // $_item['price'] = $_item['number'] * $product->price;
        
    }

    public function edit ($id, $number)
    {
        if (array_key_exists($id, $this->products)) {

            $this->totalPrice -= $this->products[$id]['number'] * $this->products[$id]['price'] ; 

            $this->products[$id]['number'] = $number;

            $this->totalPrice += $number * $this->products[$id]['price'];

        }

        // return $this->totalPrice;
    }

    public function remove ($id) {
        $this->totalNumber--;

        $this->totalPrice -= $this->products[$id]['number'] * $this->products[$id]['price'];

        unset($this->products[$id]);

    }
}
