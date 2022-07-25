<?php

namespace App\Controllers;

use App\Models\Model_Data_Product_Asset;

class Product_Asset extends BaseController
{
    public function __construct()
    {
        helper('form');
        $this->Model_Product_Asset = new Model_Data_Product_Asset();
    }

    public function index()
    {
        $data = array(
            'title' => 'Index',
            'product_asset' => $this->Model_Product_Asset->tampildata(),
        );
        return view('Table/product_asset', $data);
    }
}
