<?php
require_once("head.php");
require_once("database-connection.php");

mysqli_set_charset($databaseConnection, "utf8");

$queryTypes = "SELECT idType, nomType FROM type_pokemon ORDER BY nomType";
$resultTypes = mysqli_query($databaseConnection, $queryTypes);

if (!$resultTypes) {
    die("Erreur SQL : " . mysqli_error($databaseConnection));
}

echo "<h1>Liste des Pokémon classés par type</h1>";

echo "<table border='1' cellspacing='0' cellpadding='5'>";
echo "<thead>
        <tr>
            <th>Numéro</th>
            <th>Image</th>
            <th>Nom</th>
            <th>Type(s)</th>
        </tr>
      </thead>
      <tbody>";

while ($type = mysqli_fetch_assoc($resultTypes)) {
    $typeId = $type['idType'];
    $typeName = htmlspecialchars($type['nomType']);

    $queryPokemons = "SELECT p.idPokemon, p.nomPokemon, p.urlPhoto, t1.nomType as type1, t2.nomType as type2 
                      FROM pokemon p 
                      JOIN type_pokemon t1 ON p.idType1 = t1.idType 
                      LEFT JOIN type_pokemon t2 ON p.idType2 = t2.idType 
                      WHERE p.idType1 = $typeId OR p.idType2 = $typeId
                      ORDER BY p.idPokemon";

    $resultPokemons = mysqli_query($databaseConnection, $queryPokemons);

    if (!$resultPokemons) {
        die("Erreur SQL : " . mysqli_error($databaseConnection));
    }

    if (mysqli_num_rows($resultPokemons) > 0) {
        echo "<tr><td colspan='4' align='center' <strong>$typeName</strong></td></tr>";

        while ($pokemon = mysqli_fetch_assoc($resultPokemons)) {
            echo "<tr>";
            echo "<td align='center'>" . htmlspecialchars($pokemon['idPokemon']) . "</td>";
            echo "<td align='center'><img src='" . htmlspecialchars($pokemon['urlPhoto']) . "' alt='" . htmlspecialchars($pokemon['nomPokemon']) . "' width='80'></td>";
            echo "<td align='center'>" . htmlspecialchars($pokemon['nomPokemon']) . "</td>";
            echo "<td align='center'>" . htmlspecialchars($pokemon['type1']);

            if (!empty($pokemon['type2'])) {
                echo " / " . htmlspecialchars($pokemon['type2']);
            }

            echo "</td>";
            echo "</tr>";
        }
    }
}

echo "</tbody></table>";

require_once("footer.php");
?>
