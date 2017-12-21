<?php

namespace App\Http\Controllers;

use App\{
    ApiResponse, ResultTypes, User
};
use Illuminate\Http\Request;

class UsersController extends Controller
{
    public function index ()
    {
        $response = new ApiResponse();
        $users = User::orderBy('updated_at', 'DESC')->get();

        if ($users->count() > 0) {
            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = $users->toArray();
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
            $response->data = [];
        }

        echo json_encode($response);
    }

    public function get ($id)
    {
        $response = new ApiResponse();
        $user = User::find($id);

        if ($user) {
            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = $user->toArray();
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

    public function insert (Request $request)
    {
        $response = new ApiResponse();
        $data = [
            'username' => $request->get('username'),
            'email' => $request->get('email'),
            'password' => md5($request->get('password')),
            'role' => $request->get('role')
        ];

        if (!in_array(null, $data)) {
            $user = new User();

            foreach ($data as $key => $value) $user->$key = $value;
            $user->save();

            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = ['id' => $user->id];
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

    public function update (Request $request, $id)
    {
        $response = new ApiResponse();
        $user = User::find($id);

        if ($user) {
            foreach ($request->all() as $key => $value)
                if (gettype($user->$key) != 'NULL')
                    if ($key == 'password')
                        $user->$key = md5($value);
                    else
                        $user->$key = $value;

            $user->save();

            $response->status = '200';
            $response->result = ResultTypes::success;
        } else {
            $response->status = '200';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

    public function delete ($id)
    {
        $response = new ApiResponse();
        $user = User::find($id);

        if ($user) {
            $user->delete();
            $response->status = '200';
            $response->result = ResultTypes::success;
        } else {
            $response->status = '200';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }
}
