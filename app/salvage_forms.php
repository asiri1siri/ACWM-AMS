
<!-- <!DOCTYPE html>
<html>
<head>
</head> -->


<?php
        require('header.php');
        if((count($_SESSION['userRoles']) == 1 && in_array("MANAGER", $_SESSION["userRoles"]))) {
            echo '<h1 style="text-align: center">Sorry, you do not have permission to view this page.</h1></body></html>';
        }
        else {
?>
<!-- <body> -->

    <br>
        <h1><center>Salvage Forms<center></h1>
    <br>

    <div class="container" style="width:60%">
        <table class="responstable">
        <tr>
            <th scope="col">Files</th>
        </tr>
        <tbody>
            <tr>
            <td>
                <a href="disposal.pdf" download>Disposal Form</a>
            </td>
            </tr>
            <tr>
            <td>
                <a href="loss.pdf" download>Loss of Asset Form</a>
            </td>
            </tr>
        </tbody>
        </table>
    </div>

</body>
</html>
        <?php } ?>