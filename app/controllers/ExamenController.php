<?php

class ExamenController extends BaseController
{
    public function index()
    {
        $examenModel = $this->model('ExamenModel');
        $examens = $examenModel->getExamens();

        $data = [
            'title' => 'Overzicht afgenomen examens',
            'examens' => $examens
        ];

        $this->view('Instructeur/index', $data);
    }
}
