<?php
/**
 * Created by PhpStorm.
 * User: akino
 * Date: 20.12.2017
 * Time: 23:01
 */

namespace App;

class ApiResponse
{
    /**
     * @var string $status ;
     */
    public $status;
    /**
     * @var ResultTypes $result ;
     */
    public $result;
    /**
     * @var string|int|bool|float|array|object|null $data
     */
    public $data;
}

abstract class ResultTypes
{
    public const success = 'success';
    public const error = 'error';
    public const warning = 'warning';
}