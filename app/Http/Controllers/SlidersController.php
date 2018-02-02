<?php

namespace App\Http\Controllers;

use App\{
    Slider, ApiResponse, ResultTypes
};
use Illuminate\Http\Request;

class SlidersController extends Controller
{
    public function index(Request $request)
    {
        $response = new ApiResponse();
        $sliders = Slider::all();

        if ($sliders->count() > 0)
        {
            $response->status = 200;
            $response->result = ResultTypes::success;
            $response->data = $sliders->toArray();
        }
        else
        {
            $response->status = 500;
            $response->result = ResultTypes::error;
        }

        echo json_encode($response);
    }
}
