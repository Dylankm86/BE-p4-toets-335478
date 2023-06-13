    <!DOCTYPE html>
    <html lang="nl">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Lespakket Overzicht</title>
    </head>

    <body>
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
    </body>

    </html>