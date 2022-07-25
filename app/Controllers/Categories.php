<?php

namespace App\Controllers;

use App\Models\Model_Data_Categories;

class Categories extends BaseController
{
    public function __construct()
    {
        helper('form');
        $this->Model_Categories = new Model_Data_Categories();
    }

    public function index()
    {
        $data = array(
            'title' => 'Index',
            'name' => $this->Model_Categories->tampildata(),
        );
        return view('Table/categories', $data);
    }

    public function categories_products()
    {
        $data = array(
            'title' => 'Categories Join Product',
            'tampildata' => $this->Model_Categories->tampildata(),
            'categoriesproducts' => $this->Model_Categories->product_categories(),
        );
        return view('Table/categories_join_products', $data);
    }
}
