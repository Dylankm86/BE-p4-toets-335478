<?php

class ExaminatorController extends BaseController
{
    public function index()
    {
        $db = new Database();
        $examinatorModel = new ExaminatorModel($db);
        $examinators = $examinatorModel->getExaminators();

        $data = [
            'title' => 'Overzicht examinatoren',
            'examinators' => $examinators
        ];

        $this->view('examinator/index', $data);
    }
}
