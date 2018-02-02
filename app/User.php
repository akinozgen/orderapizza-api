<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $table = 'users';

    protected $fillable = ['username', 'email', 'password', 'phone', 'remember_token', 'role', 'point'];

    protected $hidden = ['password', 'remember_token'];
}
