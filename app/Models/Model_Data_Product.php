<?php

namespace App\Models;

use CodeIgniter\Model;

class Model_Data_Product extends Model
{
    public function tampildata()
    {
        return $this->db->table('products')
            ->get()
            ->getResultArray();
    }
}
