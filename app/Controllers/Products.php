<?php

namespace App\Controllers;

use App\Models\Model_Data_Product;

class Products extends BaseController
{
    public function __construct()
    {
        helper('form');
        $this->Model_Product = new Model_Data_Product();
    }

    public function index()
    {
        $data = array(
            'title' => 'Index',
            'products' => $this->Model_Product->tampildata(),
        );
        return view('Table/products', $data);
    }
}
