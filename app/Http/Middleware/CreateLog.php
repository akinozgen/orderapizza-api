<?php

namespace App\Http\Middleware;

use App\AccessLog;
use App\ApiKey;
use Closure;
use Illuminate\Support\Facades\Input;

class CreateLog
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
        // Get variables
        $actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
        $post = $_POST;
        $get = $_GET;
        $ip = $_SERVER['REMOTE_ADDR'];
        $api = Input::get('apikey');

        // create dump of call
        $report = [
            'CURRENT URL' => $actual_link,
            'IP ADDRESS' => $ip,
            'POST VALUES' => $post,
            'GET VALUES' => $get,
        ];

        // get apikey instance for id
        $apiKey = ApiKey::where('api_key', md5($api))->first();

        // create new access log instance
        $log = new AccessLog();

        // set access log variables
        $log->ip = $ip;
        $log->api_key = $apiKey->id;
        $log->dump = json_encode($report);

        // save access log to database
        $log->save();

        // mind your own business
        return $next($request);
    }
}
