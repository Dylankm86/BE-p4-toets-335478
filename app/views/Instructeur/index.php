<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?= URLROOT; ?>/css/style.css">
    <title>Examen Overzicht</title>
</head>

<body>
    <h3><?= $data['title']; ?></h3>
    <a href="<?= URLROOT; ?>/examinator/index">Terug naar overzicht</a>

    <table border='1'>
        <thead>
            <th>Naam examinator</th>
            <th>Datum examen</th>
            <th>Rijbewijscategorie</th>
            <th>Rijschool</th>
            <th>Stad</th>
            <th>Uitslag examen</th>
        </thead>
        <tbody>
            <?php foreach ($data['examens'] as $examen) : ?>
                <tr>
                    <td><?= $examen['Voornaam'] . ' ' . $examen['Achternaam']; ?></td>
                    <td><?= $examen['Datum']; ?></td>
                    <td><?= $examen['Rijbewijscategorie']; ?></td>
                    <td><?= $examen['Rijschool']; ?></td>
                    <td><?= $examen['Stad']; ?></td>
                    <td><?= $examen['Uitslag']; ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>

</html>