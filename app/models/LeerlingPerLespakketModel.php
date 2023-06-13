<?php


class LeerlingPerLespakketModel
{

    public function getAllData()
    {
        try {
            $query = "SELECT leerling.mobiel, lespaket.pakketnaam, lespaket.aantallessen, lespaket.prijs, leerlingperlespakket.startdatumrijlessen, leerlingperlespakket.datumrijbewijsgehaald
                      FROM leerlingperlespakket
                      JOIN lespaket ON lespaket.id = leerlingperlespakket.lespakketid
                      JOIN leerling ON leerling.id = leerlingperlespakket.leerlingid";
        } catch (PDOException $e) {
            die("Databasefout: " . $e->getMessage());
        }
    }
}


$model = new LeerlingPerLespakketModel();
