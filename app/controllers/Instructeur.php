<?php



class InstructeurController extends BaseController
{
    public function index()
    {

        $examenModel = new ExamenModel();
        $examens = $examenModel->getExamens();

        $data = [
            'title' => 'Overzicht afgenomen examen examinatoren',
            'examens' => $examens
        ];

        $this->view('instructeur/index', $data);
    }
}
