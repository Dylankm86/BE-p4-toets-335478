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

        $stmt = $this->db->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
