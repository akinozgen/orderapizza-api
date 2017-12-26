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
		// Create a new response object
		$response = new ApiResponse();
		// Get post data
		$data = [
			'username' => $request->get('username'),
			'email' => $request->get('email'),
			'password' => md5($request->get('password')),
			'role' => $request->get('role')
		];

		// Get if another user exists with same email address
		$existing_user = User::where('email', $data['email'])->first();
		// Check if another user exists with same email address
		if ($existing_user) {
			$response->status = '500';
			$response->result = ResultTypes::error;
			$response->data = ['message' => 'existing_user'];
		}
		// If not check if any empty value in $data array
		else 
			// If not exists any null
			if (!in_array(null, $data)) {
				// Create a new User
				$user = new User();
				// Set values of user object from post values
				foreach ($data as $key => $value) $user->$key = $value;
				// Create a new remember token for new user
				$pure_token = $request->get('password') . time() . $request->get('password');
				// Encrypt remember token with md5 and set for user object 
				$user->remember_token = md5($pure_token);
				// Save new user
				$user->save();
				// Set response values
				$response->status = '200';
				$response->result = ResultTypes::success;
				$response->data = ['id' => $user->id, 'user' => $user, 'pure_token' => $pure_token];
			} else {
				// Set response values for error
				$response->status = '500';
				$response->result = ResultTypes::error;
			}
		// Return response as json
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
