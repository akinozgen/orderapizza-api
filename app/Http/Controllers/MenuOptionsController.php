<?php

namespace App\Http\Controllers;

use App\{
    ApiResponse, MenuOption, ResultTypes
};
use Illuminate\Http\Request;

class MenuOptionsController extends Controller
{

    public function index ()
    {
        $response = new ApiResponse();
        $menu_options = MenuOption::orderBy('updated_at', 'desc')->get();

        if ($menu_options->count() > 0) {
            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = $menu_options->toArray();
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }


        echo json_encode($response);
    }

    public function get ($id)
    {
        $response = new ApiResponse();
        $menu_option = MenuOption::find($id);

        if ($menu_option) {
            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = $menu_option->toArray();
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }


        echo json_encode($response);
    }

    public function get_menu_options_for_menu ($id)
    {
        $response = new ApiResponse();
        $menu_option = MenuOption::where('menu_id', $id)->get();

        if ($menu_option) {
            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = $menu_option->toArray();
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
            'menu_id' => $request->get('menu_id'),
            'name' => $request->get('name'),
            'price' => $request->get('price'),
            'description' => $request->get('description')
        ];

        if (!in_array(null, $data)) {
            $menu_option = new MenuOption();
            foreach ($data as $key => $value) $menu_option->$key = $value;
            $menu_option->save();

            $response->status = '200';
            $response->result = ResultTypes::success;
            $response->data = ['id' => $menu_option->id];
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

    public function update (Request $request, $id)
    {
        $response = new ApiResponse();
        $menu_option = MenuOption::find($id);

        if ($menu_option) {
            foreach ($request->all() as $key => $value)
                if (gettype($menu_option->$key) != 'NULL')
                    $menu_option->$key = $value;

            $menu_option->save();

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
        $menu_option = MenuOption::find($id);

        if ($menu_option) {
            $menu_option->delete();

            $response->status = '200';
            $response->result = ResultTypes::success;
        } else {
            $response->status = '500';
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }

}
