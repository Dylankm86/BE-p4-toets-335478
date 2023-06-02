<?php

class ExaminatorModel
{
    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function getExaminators()
    {
        $query = "SELECT * FROM Examinator";


        $this->db->query($query);
        return $this->db->resultSet();
    }
}
