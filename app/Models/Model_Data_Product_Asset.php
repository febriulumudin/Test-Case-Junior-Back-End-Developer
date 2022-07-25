<?php

namespace App\Models;

use CodeIgniter\Model;

class Model_Data_Product_Asset extends Model
{
    public function tampildata()
    {
        return $this->db->table('product_assets')
            ->get()
            ->getResultArray();
    }
}
