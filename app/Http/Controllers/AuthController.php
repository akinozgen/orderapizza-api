<?php

namespace App\Http\Controllers;

use App\ApiResponse;
use App\ResultTypes;
use App\User;
use Illuminate\Http\Request;

class ApiAuthController extends Controller
{
    public function auth ($id, $token)
    {
        $response = new ApiResponse();
        $user = User::find($id);

        if ($user && $user->remember_token == md5($token)) {
            $response->status = '200';
            $response->result = ResultTypes::success;
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

    public function get_token (Request $request)
    {
        $response = new ApiResponse();

        $email = $request->get('email');
        $password = $request->get('password');

        $user = User::where('email', $email)->where('password', md5($password))->first();

        if ($user) {
            $pure_token = $password . time() . $password;
            $user->remember_token = md5($pure_token);
            $user->save();

            $response->result = ResultTypes::success;
            $response->data = ['token' => $user->remember_token, 'pure_token' => $pure_token, 'user' => $user->toArray()];
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
            $response->data = ['message' => 'email/password'];
        }

        echo json_encode($response);
    }
}
