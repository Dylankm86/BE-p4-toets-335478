<?php

class ExamenModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getExamens()
    {
        $query = "SELECT e.*, ex.Voornaam, ex.Achternaam
                  FROM Examen e
                  INNER JOIN Examinator ex ON e.ExaminatorId = ex.Id";

        $this->db->query($query);
        return $this->db->resultSet();
    }
}
