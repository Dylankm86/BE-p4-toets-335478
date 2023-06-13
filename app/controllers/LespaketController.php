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

        // Retourneer de gegevens voor gebruik in andere delen van de applicatie
        return $data;
    }

    public function getAllData()
    {
        return $this->model->getAllData();
    }
}
