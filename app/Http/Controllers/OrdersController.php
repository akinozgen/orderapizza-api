<?php

namespace App\Http\Controllers;

use App\{
    ApiResponse, Order, ResultTypes, User
};
use Illuminate\Http\Request;

class OrdersController extends Controller
{
    public function index ()
    {
        $response = new ApiResponse();
        $orders = Order::orderBy('created_at', 'DESC')->get();

        if ($orders->count() > 0) {
            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = $orders->toArray();
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
        $order = Order::find($id);

        if ($order) {
            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = $order->toArray();
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

    public function get_user_orders ($id)
    {
        $response = new ApiResponse();
        $orders = Order::where('user_id', $id)->get();

        if ($orders) {
            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = $orders->toArray();
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
            'user_id' => $request->get('user_id'),
            'address_id' => $request->get('address_id'),
			'menus' => $request->get('menus'),
            'delivery' => date('Y-m-d H:i:s', time() + 45 * 60),
            'price' => $request->get('price'),
            'delivered' => "0",
            'payment' => $request->get('payment')
        ];

        $point = ($data['price'] / 100) * 2;

        if (!in_array(null, $data)) {
            $order = new Order();

            $user = User::find($data['user_id']);
            $user->point = $user->point + $point;
            $user->save();

            foreach ($data as $key => $value) $order->$key = $value;
            $order->save();

            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = ['id' => $order->id, 'point' => $user->point];
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

    public function update (Request $request, $id)
    {
        $response = new ApiResponse();
        $order = Order::find($id);

        if ($order) {
            foreach ($request->all() as $key => $value)
                if (gettype($order->$key) != 'NULL')
                    $order->$key = $value;

            $order->save();

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
        $order = Order::find($id);

        if ($order) {
            $order->delete();
            $response->status = '200';
            $response->result = ResultTypes::success;
        } else {
            $response->status = '200';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }
}
