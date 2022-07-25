<?php

namespace App\Models;

use CodeIgniter\Model;

class Model_Data_Categories extends Model
{
    public function tampildata()
    {
        return $this->db->table('categories')
            ->get()
            ->getResultArray();
    }

    public function product_categories()
    {
        return $this->db->table('products')
            ->get()
            ->getResultArray();
    }
}
