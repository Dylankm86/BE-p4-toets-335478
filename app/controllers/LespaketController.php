<?php

class LeerlingPerLespakketController extends BaseController
{
    private $model;

    public function __construct()
    {
        $this->model = $this->model('LeerlingPerLespakketModel');
    }

    public function index()
    {
        $data = [
            'leerlingperlespakket' => $this->model->getAllData()
        ];

        $this->view('leerlingperlespakket/index', $data);
    }

    public function getAllData()
    {
        return $this->model->getAllData();
    }
}
