<?php

namespace App\Http\Controllers;

use App\{
    ApiResponse, Menu, ResultTypes
};
use Illuminate\Http\Request;

class MenusController extends Controller
{
    public function index()
    {
        $response = new ApiResponse();
        $menus = Menu::orderBy('updated_at', 'DESC')->get();

        if ($menus->count() > 0)
        {
            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = $menus->toArray();
        }
        else
        {
            $response->status = '500';
            $response->result = ResultTypes::error;
            $response->data = [];
        }

        echo json_encode($response);
    }

    public function get($id)
    {
        $response = new ApiResponse();
        $menu = Menu::find($id);

        if ($menu)
        {
            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = $menu->toArray();
        }
        else
        {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

    public function insert(Request $request)
    {
        $response = new ApiResponse();
        $data = [
            'name' => $request->get('name'),
            'price' => $request->get('price'),
            'description' => $request->get('description'),
            'image_path' => $request->get('image_path'),
            'available' => $request->get('available'),
        ];
		
        if (!in_array(null, $data))
        {
            $menu = new Menu();

            foreach ($data as $key => $value) $menu->$key = $value;
            $menu->save();

            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = ['id' => $menu->id];
        }
        else
        {
            $response->status = '500';
            $response->result = ResultTypes::error;
			$response->data = $request->toArray();
        }

        echo json_encode($response);
    }

    public function update(Request $request, $id)
    {
        $response = new ApiResponse();
        $menu = Menu::find($id);

        if ($menu)
        {
            foreach ($request->all() as $key => $value) if (gettype($menu->$key) != 'NULL') $menu->$key = $value;
            $menu->save();

            $response->status = '200';
            $response->result = ResultTypes::success;
        }
        else
        {
            $response->status = '200';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

    public function delete($id)
    {
        $response = new ApiResponse();
        $menu = Menu::find($id);

        if ($menu)
        {
            $menu->delete();
            $response->status = '200';
            $response->result = ResultTypes::success;
        }
        else
        {
            $response->status = '200';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

}
