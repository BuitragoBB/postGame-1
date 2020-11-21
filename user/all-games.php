<head>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css"><!-- Bootstrap core CSS -->
    <script src="../assets/js/get_game_id.js"></script>
    <style>
        table.dataTable thead {
            background: linear-gradient(to right, #0575E6, #00F260);
            color: white;
        }
    </style>

</head>
<?php

include '../assets/include/all-src.php';
include '../conexion/conection.php';
include '../assets/include/navbarJuegos.php';
include '../assets/include/header.php';

$_SESSION['user'];

$con1 = new Conexion();
$con2 = $con1->Conectar();

# llamado qwerty #1 - juegos

$sql = "SELECT * FROM juego";
$stmt = $con2->prepare(($sql));
$stmt->execute();
$resultados = $stmt->fetchAll(\PDO::FETCH_ASSOC);

$get_id = ($resultados[0]);


//var_dump($ar);
/*
for($i = 0; $i<= ob_get_length($result); $i++){

    echo ("$result<br>");
}*/
//print json_encode($result);

?>

<body style="background-image: url('https://images.hdqwalls.com/wallpapers/call-of-duty-mobile-4k-game-2b.jpg'); background-size: cover; background-position: top center; min-height: 700px;">
    <div class="container">
        <div class="row">
            <div class="container-lg-12">
                <div class="shadow-lg p-3 mb-5 bg-white rounded">
                    <h4 class="text-center">¡ Los mejores juegos han llegado !</h4>
                    <table id="tgames" class="table-striped table-borderless table-responsive">
                        <thead class="text-center">
                            <tr>
                                <th scope="col">-</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Estado</th>
                                <th scope="col">Fecha de salida</th>
                                <th scope="col">Fecha de crack</th>
                                <th scope="col">Realización</th>
                                <th scope="col">Link de descarga</th>
                                <th scope="col">Caratula</th>
                                <th scope="col">Publicado por</th>
                            </tr>
                        <tbody class="text-center">
                            <hr>
                            <tr>
                                <?php
                                foreach ($resultados as $juego) {

                                ?>
                                    <td><?php echo $juego['ID'] ?></td>
                                    <td>
                                        <a href="game-view.php" onclick="get_game_id_form('')"><?php echo $juego['Nombre'] ?></a>
                                    </td>
                                    <td><?php echo $juego['juegoEstado'] ?></td>
                                    <td><?php echo $juego['fechaSalida'] ?></td>
                                    <td><?php echo $juego['fechaCracked'] ?></td>
                                    <td><?php echo $juego['nombreCrack'] ?></td>
                                    <td><a href="<?php echo $juego['linkDescarga'] ?>" target="_blank">Link de descarga</a></td>
                                    <td><img src="<?php echo $juego['imagen'] ?>" class="rounded" alt="<?php echo $juego['Nombre'] ?>"></td>
                                    <td><?php echo $juego['id_FK_User'] ?></td>
                            </tr>
                        <?php
                                }
                        ?>
                        </tbody>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function() {
                $('#tgames').DataTable();
            });
        </script>
    </div>
</body>

</html>
<?php
$con2 = null;
include '../assets/include/footer_user.php';
