<?php

namespace App\Http\Controllers;

use App\ApiResponse;
use App\ResultTypes;
use App\User;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function auth(Request $request, $id)
    {
        $response = new ApiResponse();
        $token = $request->get('token');
        $user = User::find($id);

        if ($user->remember_token == md5($token)) {
            $response->status = '200';
            $response->result = ResultTypes::success;
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

    public function get_token(Request $request)
    {
        $response = new ApiResponse();

        $email = $request->get('email');
        $password = $request->get('password');

        $user = User::where('email', $email)->where('password', md5($password))->first();

        if ($user)
        {
            $pure_token = $password . time() . $password;
            $user->remember_token = md5($pure_token);
            $user->save();

            $response->result = ResultTypes::success;
            $response->data = ['token' => $user->remember_token, 'pure_token' => $pure_token];
        }
        else
        {
            $response->status = '500';
            $response->result = ResultTypes::error;
            $response->data = ['message' => 'email/password'];
        }

        echo json_encode($response);
    }
}
