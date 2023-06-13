<?php 

class LeerlingPerLespakketModel
{
    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function getAllData()
    {
        try {
            $query = "SELECT leerling.naam, leerling.mobiel, lespaket.pakketnaam, lespaket.aantallessen, lespaket.prijs, leerlingperlespakket.startdatumrijlessen, leerlingperlespakket.datumrijbewijsgehaald
                      FROM leerlingperlespakket
                      JOIN lespaket ON lespaket.id = leerlingperlespakket.lespakketid
                      JOIN leerling ON leerling.id = leerlingperlespakket.leerlingid";

            // Voer de query uit
            $stmt = $this->db->query($query);

            // Haal de resultaten op
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

            // Retourneer de resultaten van de query
            return $results;
        } catch (PDOException $e) {
            die("Databasefout: " . $e->getMessage());
        }
    }
}
