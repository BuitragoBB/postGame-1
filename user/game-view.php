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

$sql2 = "SELECT * FROM comentario";
$stmt = $con2->prepare(($sql2));
$stmt->execute();
$comentarios = $stmt->fetchAll(\PDO::FETCH_ASSOC);



?>


<div class="container">
    <div class="row">
        <div class="container-lg-12">
            <div class="shadow-lg p-3 mb-5 bg-white rounded">
                <div class="container">
                    <div class="row justify-content-md-center">
                        <div class="col col-lg-2">
                        <img src="http://4.bp.blogspot.com/-YfHj9MTXoAo/Uigcwzey8SI/AAAAAAAAAaY/Ya1H04uqOv8/s1600/GTA+V+HD+Wallpaper+Desktop+Background+hd.jpg" class="img-fluid" alt="Responsive image">
                        </div>
                        <div class="col col-lg-2">
                            <h6>Descripción del juego</h6>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-auto">
                            Requisistos del juego
                        </div>
                        <div class="col col-lg-2">
                            Método de jugabilidad
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <br>
            <div class="shadow-lg p-3 mb-5 bg-white rounded">
                <h4 class="text-center">¡ Comentarios mas recientes !</h4>
                <table id="tgames" class="table-striped table-borderless table-responsive">
                    <thead>
                        <tr>
                            <th class="text-center" scope="col">Id</th>
                            <th scope="col">Comentario</th>
                            <th class="text-center" scope="col">Id juego</th>
                            <th class="text-center" scope="col">Realizado por</th>
                            <th class="text-center" scope="col">Fecha de comentario</th>
                        </tr>
                    <tbody>
                        <hr>
                        <tr>
                            <?php
                            foreach ($comentarios as $comentario) {

                            ?>
                                <td class="text-center"><?php echo $comentario['ID'] ?></td>
                                <td><?php echo $comentario['Contenido'] ?></td>
                                <td class="text-center"><?php echo $comentario['id_FK_juego'] ?></td>
                                <td class="text-center"><?php echo $comentario['id_FK_juego'] ?></td>
                                <td class="text-center"><?php echo $comentario['fecha'] ?></td>
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
</div>

<script>
    $(document).ready(function() {
        $('#tgames').DataTable();
    });
</script>

</html_entity_decode>
<?php
include '../assets/include/footer_user.php';
