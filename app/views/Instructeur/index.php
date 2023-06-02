<!-- instructeur/index.php -->

<h3><?= $data['title']; ?></h3>
<a href="<?= URLROOT; ?>/instructeur/index">Overzicht afgenomen examen examinatoren</a>

<table border='1'>
    <thead>
        <th>naam examinator</th>
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