<?php

class LeerlingPerLespakketController extends BaseController
{
    private $leerlingPerLespakketModel;

    public function __construct()
    {
        $this->leerlingPerLespakketModel = $this->model('LeerlingPerLespakketModel');
    }

    public function index()
    {
        $data = $this->leerlingPerLespakketModel->getAllData();

        $data = [
            'title' => 'Leerling per Lespakket',
            'data' => $data
        ];

        $this->view('leerlingperlespakket/index', $data);
    }
}
