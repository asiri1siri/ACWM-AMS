

 <?php  
  
 include('redirectToLoginIfNotLoggedIn.php');
 include('redirectHome_AdminOnly.php');
 include('header.php');
 include('navbar.php'); 
  include 'db_connection.php';
  $table = "vehicle";      
  $conn = OpenCon();
  $sql = "SELECT * FROM vehicle ORDER BY GUID";

echo '<br><center><h1>Vehicle Directory</h1></center>';
echo '
<div class="col-md-12">
  <div id="alert" class="alert alert-info text-center" style="margin-top:20px; display:none;">
    <button class="close"><span aria-hidden="true">&times;</span></button>
    <span id="alert_message"></span>
  </div> ';
  
  if((isset($_SESSION["username"])) && !(count($_SESSION['userRoles']) == 1 && in_array("MANAGER", $_SESSION["userRoles"]))) {
    echo '
      <div class="columns columns-right btn-group float-left">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Actions
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <a id="addnew" class="dropdown-item btn btn-success">Add Vehicle</a>
        <div id="toolbar"><a id="theButton" class="dropdown-item btn btn-success">Move Selected Items</a></div>
        <div id="toolbar2">
                      <select class="form-control">
                        <option value="">Export</option>
                        <option value="all">Export All</option>
                        <option value="selected">Export Select</option>
                    </select>
                    </div>
      </div>
      </div>';
  }
echo '
<table id="myVehiclesTable" class="responstable" data-toggle="table" data-search="true" data-pagination="true" data-search-align="left" data-show-columns="true" data-click-to-select="true" data-trim-on-search="false" data-multiple-search="true" data-show-export="true" data-toolbar="#toolbar2">
  <thead>
    <tr>';
    
      echo '<th data-searchable="false"><em id="em" class="fa fa-cog"></em></th>';
    
      if((isset($_SESSION["username"])) && !(count($_SESSION['userRoles']) == 1 && in_array("MANAGER", $_SESSION["userRoles"]))) {
        echo '
        <th data-checkbox="true" data-searchable="false"></th>';
      }

      echo '

      <th data-field="VNO" data-sortable="true"">VNO</th>

      <th data-field="ASSIGNEDTO" data-sortable="true">Assigned To</th>
      <th data-field="LICENSE" data-sortable="true">License</th>
      <th data-field="MAKE" data-sortable="true">Make</th>
      <th data-field="MODEL" data-sortable="true">Model</th>
      <th data-field="YEAR" data-sortable="true">Year</th>

      <th data-field="HOUSED" data-sortable="true">Housed</th>
      <th data-field="VIN" data-sortable="true">VIN</th>
      <th data-field="UNIT" data-sortable="true">Unit</th>
      <th data-field="DESCRIPTION" data-sortable="true">Description</th>
      <th data-field="BUREAU" data-sortable="true">Bureau</th>
      <th data-field="FUNDINGORG" data-sortable="true">Funding Org</th>
    </tr>
  </thead>
<tbody>';

    if ($result = $conn->query($sql))
    {
      if ($result->rowCount() > 0)
      {    
        while ($row = $result->fetch())
        {
            echo'<tr align="center">
                  <td>
                    <div class="btn-group" role="group">';
            
            if((isset($_SESSION["username"])) && !(count($_SESSION['userRoles']) == 1 && in_array("MANAGER", $_SESSION["userRoles"]))) {
          
              echo '
                  <a class="edit-btn">
                    <button class="btn btn-primary btn-sm edit" data-id="'.$row["GUID"].'">
                    <em class="fas fa-pencil-alt"></em></button>
                  </a>

                  <a class="delete-btn">
                    <button class="btn btn-danger btn-sm delete" data-id="'.$row["GUID"].'">
                    <em class="fas fa-trash-alt""></em></button>
                  </a>';
            }

            echo '
                <a class="info-btn">
                  <button class="btn btn-success btn-sm info" data-id="'.$row["GUID"].'">
                  <i class="fa fa-image"></i></button>
                </a>

                <input type="hidden" class="theCurrentTable" name="theCurrentTable" value="'.$table.'" />
                <a class="history-btn">
                  <button class="btn btn-secondary btn-sm history" data-id="'.$row["GUID"].'">
                  <i class="fas fa-history"></i></button>
                </a>

              </div>
            </td>';
            
          if((isset($_SESSION["username"])) && !(count($_SESSION['userRoles']) == 1 && in_array("MANAGER", $_SESSION["userRoles"]))) {
            echo        "<td></td>";  
          }
         
          
                      
          echo        "<td>" . $row['VNO'] . "</td>";

          echo        "<td>" . $row['ASSIGNEDTO'] . "</td>"; 
          echo        "<td>" . $row['LICENSE'] . "</td>";
          echo        "<td>" . $row['MAKE'] . "</td>";
          echo        "<td>" . $row['MODEL'] . "</td>";
          echo        "<td>" . $row['YEAR'] . "</td>";

          echo        "<td>" . $row['HOUSED'] . "</td>";
          echo        "<td>" . $row['VIN'] . "</td>";
          echo        "<td>" . $row['UNIT'] . "</td>";
          echo        "<td>" . $row['DESCRIPTION'] . "</td>";
          echo        "<td>" . $row['BUREAU'] . "</td>";
          echo        "<td>" . $row['FUNDINGORG'] . "</td>";
          echo      "</tr>";
        }

        echo  '   </tr>'; 
        echo ' </tbody>

        </table>';
        }
        // if there are no records in the database, display an alert message
        else
        {
          echo " No results to display!";
        }
        
        }
        else
        {
          echo "Error: " . $conn->error;
        }
       
        echo '</div>';
        echo '</div>';

    CloseConn($conn);
?>

<body>

<!-- Add/Edit Vehicle  -->
<?php include("modalVehicle.php")?> 
<script src="appVehicle.js"></script>
<!-- Advanced Search + Move -->

<?php include("modalMove.php")?>
<script src="move.js"></script>


<!-- BootStrap Advance Search-->
<!-- <script type="text/javascript">
        $(document).ready(function () {

          $('#myVehiclesTable').bootstrapTable()
        });
</script> -->

<!-- History -->
<?php include("modalHistory.html")?>

<!-- Single-Line Advance Search-->
<!-- <script src="RESOURCES/myAdvanceSearch/js/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="RESOURCES/myAdvanceSearch/js/addons/datatables.min.js" type="text/javascript"></script>
<script type="text/javascript">
        $(document).ready(function () {
            $('#myVehiclesTable').DataTable();
        });
    </script> -->

<!-- New Export Function much more cleaner-->
<script>
  var $table = $('#myVehiclesTable')
  $(document).ready(function () {
  $(function() {
    $('#toolbar2').find('select').change(function () {
      $table.bootstrapTable('destroy').bootstrapTable({
        exportDataType: $(this).val(),
        exportTypes: ['csv', 'excel', 'pdf']
      })
    }).trigger('change')
  })
});
</script>


</body>
</html>



