<?php

namespace App\Http\Controllers;

use App\{
    Additional, ApiResponse, ResultTypes
};
use Illuminate\Http\Request;

class AdditionalsController extends Controller
{

    public function index ()
    {
        $response = new ApiResponse();
        $additionals = Additional::orderBy('updated_at', 'desc')->get();

        if ($additionals->count() > 0) {
            $response->status = '200';
            $response->result = ResultTypes::success;
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }

        $response->data = $additionals->toArray();

        echo json_encode($response);
    }

    public function get ($id)
    {
        $response = new ApiResponse();
        $additional = Additional::find($id);

        if ($additional) {
            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = $additional->toArray();
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
            'name' => $request->get('name'),
            'price' => $request->get('price'),
            'image_path' => $request->get('image_path'),
            'description' => $request->get('description'),
        ];

        if (!in_array(null, $data)) {
            $additional = new Additional();
            foreach ($data as $key => $value) $additional->$key = $value;
            $additional->save();

            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = ['id' => $additional->id];
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

    public function update (Request $request, $id)
    {
        $response = new ApiResponse();
        $additional = Additional::find($id);

        if ($additional) {
            foreach ($request->all() as $key => $value)
                if (gettype($additional->$key) != 'NULL')
                    $additional->$key = $value;

            $additional->save();

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
        $additional = Additional::find($id);

        if ($additional) {
            $additional->delete();

            $response->status = '200';
            $response->result = ResultTypes::success;
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

}
