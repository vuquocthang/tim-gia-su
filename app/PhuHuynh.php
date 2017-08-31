<?php
/**
 * Created by PhpStorm.
 * User: vuquo
 * Date: 8/22/2017
 * Time: 1:32 PM
 */

namespace App;


use Illuminate\Database\Eloquent\Model;

class PhuHuynh extends Model
{

    protected $table = 'phu_huynh';

    protected $fillable = ['email', 'password', 'hoten', 'sdt'];
}