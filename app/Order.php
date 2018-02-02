<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';

    protected $fillable = ['user_id', 'address_id', 'menus', 'delivery', 'price', 'delivered', 'payment'];
}
