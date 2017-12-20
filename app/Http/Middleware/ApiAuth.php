<?php

namespace App\Http\Middleware;

use App\ApiKey;
use Closure;
use Illuminate\Support\Facades\Input;

class ApiAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // get api key from uri
        $api = Input::get('apikey');

        // get api key instance from db
        $apiKey = ApiKey::where('api_key', md5($api))->first();

        // if api key not found i swear to god i will kill myself
        if (!$apiKey) die('Authentication Failed!');

        // just long live api :)
        return $next($request);
    }
}
