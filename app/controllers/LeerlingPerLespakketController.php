<?php

class LeerlingPerLespakketModel
{
    public function getAllData()
    {
        try {
            $query = "SELECT leerling.naam, leerling.mobiel, lespaket.pakketnaam, lespaket.aantallessen, lespaket.prijs, leerlingperlespakket.startdatumrijlessen, leerlingperlespakket.datumrijbewijsgehaald
                      FROM leerlingperlespakket
                      JOIN lespaket ON lespaket.id = leerlingperlespakket.lespakketid
                      JOIN leerling ON leerling.id = leerlingperlespakket.leerlingid";

            // Voer de query uit en haal de resultaten op
            // Hier moet je de code plaatsen om de query uit te voeren en de resultaten op te halen
            // $results = ... (de resultaten van de query)

            // Retourneer de resultaten van de query
            return $results;
        } catch (PDOException $e) {
            die("Databasefout: " . $e->getMessage());
        }
    }
}
