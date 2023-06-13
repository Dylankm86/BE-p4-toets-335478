<?php
class Homepage extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Welkom op de homepage',

        ];

        $this->view('homepage/index', $data);
    }
}
