<?php
require_once '../app/controllers/BaseController.php';
require_once '../app/controllers/LeerlingPerLespakketController.php';
require_once '../app/models/LeerlingPerLespakketModel.php';

// Maak een instantie van het model en de controller
$model = new LeerlingPerLespakketModel();
$controller = new LeerlingPerLespakketController();

$data = $controller->getAllData();


?>

<table>
    <tr>
        <th>Naam</th>
        <th>Mobiel</th>
        <th>Pakketnaam</th>
        <th>Aantal rijlessen</th>
        <th>Prijs</th>
        <th>Startdatum</th>
        <th>Datum rijbewijs gehaald</th>
    </tr>
    <?php foreach ($data['leerlingperlespakket'] as $row) : ?>
        <tr>
            <td><?= $row['naam']; ?></td>
            <td><?= $row['mobiel']; ?></td>
            <td><?= $row['pakketnaam']; ?></td>
            <td><?= $row['aantallessen']; ?></td>
            <td><?= $row['prijs']; ?></td>
            <td><?= $row['startdatumrijlessen']; ?></td>
            <td><?= $row['datumrijbewijsgehaald']; ?></td>
        </tr>
    <?php endforeach; ?>
</table>


