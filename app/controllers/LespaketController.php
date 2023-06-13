<?php

class LespaketController extends BaseController
{
    private $lespaketModel;

    public function __construct()
    {
        $this->lespaketModel = $this->model('LespaketModel');
    }

    public function index()
    {
        $lespaketten = $this->lespaketModel->getAllData();

        $data = [
            'title' => 'Lespakketten',
            'lespaketten' => $lespaketten
        ];

        $this->view('lespaket/index', $data);
    }
}
