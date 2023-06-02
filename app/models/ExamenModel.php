<?php

class ExamenModel
{
    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function getExamens()
    {
        $query = "SELECT e.*, ex.Voornaam, ex.Achternaam
                  FROM Examen e
                  INNER JOIN Examinator ex ON e.ExaminatorId = ex.Id";

        $stmt = $this->db->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
