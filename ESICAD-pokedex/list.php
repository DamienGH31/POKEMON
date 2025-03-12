<?php
require_once("head.php");
require_once("database-connection.php");

$queryTypes = "SELECT idType, nomType FROM type_pokemon";
$resultTypes = mysqli_query($databaseConnection, $queryTypes);
$types = [];

while ($row = mysqli_fetch_assoc($resultTypes)) {
    $types[$row['idType']] = $row['nomType'];
}

$query = "SELECT p.idPokemon, p.nomPokemon, p.urlPhoto, t1.nomType as type1, t2.nomType as type2 
          FROM pokemon p 
          JOIN type_pokemon t1 ON p.idType1 = t1.idType 
          LEFT JOIN type_pokemon t2 ON p.idType2 = t2.idType 
          ORDER BY p.idPokemon";

$result = mysqli_query($databaseConnection, $query);

if (!$result) {
    die("Erreur de requête : " . mysqli_error($databaseConnection));
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Pokémons</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Liste des Pokémons</h1>

    <table border="1">
        <thead>
            <tr>
                <th>Numéro</th>
                <th>Image</th>
                <th>Nom</th>
                <th>Type(s)</th>
            </tr>
        </thead>
        <tbody>
            <?php while ($pokemon = mysqli_fetch_assoc($result)): ?>
            <tr>
                <td><?= htmlspecialchars($pokemon['idPokemon']) ?></td>
                <td>
                    <?php if (!empty($pokemon['urlPhoto'])): ?>
                        <img src="<?= htmlspecialchars($pokemon['urlPhoto']) ?>" alt="<?= htmlspecialchars($pokemon['nomPokemon']) ?>" class="pokemon-img">
                    <?php else: ?>
                        <span>Aucune image</span>
                    <?php endif; ?>
                </td>
                <td><?= htmlspecialchars($pokemon['nomPokemon']) ?></td> <!-- Suppression du lien ici -->
                <td>
                    <span class="badge type-<?= strtolower($pokemon['type1']) ?>"><?= htmlspecialchars($pokemon['type1']) ?></span>
                    <?php if (!empty($pokemon['type2'])): ?>
                        <span class="badge type-<?= strtolower($pokemon['type2']) ?>"><?= htmlspecialchars($pokemon['type2']) ?></span>
                    <?php endif; ?>
                </td>
            </tr>
            <?php endwhile; ?>
        </tbody>
    </table>
</body>
</html>

<?php
require_once("footer.php");
?>
