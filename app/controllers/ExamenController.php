<?php

class ExamenController extends BaseController
{
    public function index()
    {
        $db = new Database();
        $examenModel = new ExamenModel($db);
        $examens = $examenModel->getExamens();

        $data = [
            'title' => 'Overzicht afgenomen examen examinatoren',
            'examens' => $examens
        ];

        $this->view('examen/index', $data);
    }
}
