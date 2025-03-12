<?php
require_once("head.php");
require_once("database-connection.php");

mysqli_set_charset($databaseConnection, "utf8");

?>

<h1>Liste Recherche Pokémon</h1>

<table border="1" cellspacing="5" cellpadding="10">
    <thead>
        <tr>
            <th>Numéro</th>
            <th>Image</th>
            <th>Nom</th>
        </tr>
    </thead>
    <tbody>

<?php
if (isset($_GET['q']) && !empty(trim($_GET['q']))) {
    $recherche = "%" . trim($_GET['q']) . "%";

    // Requête préparée pour sécuriser la recherche
    $sql = "SELECT idPokemon, nomPokemon, urlPhoto FROM Pokemon WHERE nomPokemon LIKE ?";
    $stmt = $databaseConnection->prepare($sql);
    $stmt->bind_param("s", $recherche);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td align='center'>" . htmlspecialchars($row["idPokemon"]) . "</td>";
            echo "<td align='center'>";
            if (!empty($row["urlPhoto"])) {
                echo "<img src='" . htmlspecialchars($row["urlPhoto"]) . "' alt='" . htmlspecialchars($row["nomPokemon"]) . "' width='80'>";
            } else {
                echo "<span>Aucune image</span>";
            }
            echo "</td>";
            echo "<td align='center'>" . htmlspecialchars($row["nomPokemon"]) . "</td>";
            echo "</tr>";
        }
    } else {
        echo "<tr><td colspan='3' align='center'>Aucun Pokémon trouvé</td></tr>";
    }
    
    $stmt->close();
} else {
    echo "<tr><td colspan='3' align='center'>Veuillez entrer un nom de Pokémon à rechercher</td></tr>";
}
?>

    </tbody>
</table>

<?php
require_once("footer.php");
?>
