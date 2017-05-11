<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;


class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    //sri- protected $redirectTo = '/home';

     protected $redirectTo = '/admin';



    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //sri $this->middleware('guest');
       //sri $this->middleware('auth');
        $this->middleware(['auth', 'admins']);
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name_str' => 'required|max:255',
            'address_str' => 'required|max:255',
            'mobile_str' => 'required|max:191',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|confirmed',
            'is_admin' => 'required|boolean',
            
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */
    protected function create(array $data)
    {
        return User::create([
            'name_str' => $data['name_str'],
            'address_str' => $data['address_str'],
            'mobile_str' => $data['mobile_str'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'is_admin' => $data['is_admin'],
        ]);
    }
}
