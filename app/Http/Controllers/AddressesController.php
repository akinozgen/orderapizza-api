<?php

namespace App\Http\Controllers;

use App\{
    Address, ApiResponse, ResultTypes
};
use Illuminate\Http\Request;

class AddressesController extends Controller
{

    public function index ()
    {
        $response = new ApiResponse();
        $addresses = Address::orderBy('updated_at', 'desc')->get();

        if ($addresses->count() > 0) {
            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = $addresses->toArray();
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }


        echo json_encode($response);
    }

    public function get ($id)
    {
        $response = new ApiResponse();
        $address = Address::find($id);

        if ($address) {
            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = $address->toArray();
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }


        echo json_encode($response);
    }

    public function get_user_addresses ($id)
    {
        $response = new ApiResponse();
        $addresses = Address::where('user_id', $id)->get();

        if ($addresses) {
            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = $addresses->toArray();
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
            'address_description' => $request->get('address_description'),
        ];

        if (!in_array(null, $data)) {
            $address = new Address();
            foreach ($data as $key => $value) $address->$key = $value;
            $address->save();

            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = ['id' => $address->id];
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

    public function update (Request $request, $id)
    {
        $response = new ApiResponse();
        $address = Address::find($id);

        if ($address) {
            foreach ($request->all() as $key => $value)
                if (gettype($address->$key) != 'NULL')
                    $address->$key = $value;

            $address->save();

            $response->status = '200';
            $response->result = ResultTypes::success;
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

    public function delete ($id)
    {
        $response = new ApiResponse();
        $address = Address::find($id);

        if ($address) {
            $address->delete();

            $response->status = '200';
            $response->result = ResultTypes::success;
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

}
