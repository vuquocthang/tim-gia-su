<?php
/**
 * Created by PhpStorm.
 * User: vuquo
 * Date: 8/22/2017
 * Time: 1:31 PM
 */

namespace App;


use Illuminate\Database\Eloquent\Model;

class GiaSu extends Model
{
    protected $table = 'gia_su';

    protected $fillable = ['ma', 'email', 'password', 'hoten', 'gioitinh', 'ns', 'sdt', 'gioithieu', 'image', 'video'];
}