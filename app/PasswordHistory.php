<?php
 
namespace App;
 
use Illuminate\Database\Eloquent\Model;
 
class PasswordHistory extends Model
{
 
    protected $guarded = [];
 
    public function post()
    {
        return $this->belongsTo('App\User');
    }
}