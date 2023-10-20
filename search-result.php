<?php session_start();
include_once('layout/config.php');
if(strlen($_SESSION["edmsid"])==0)
{   header('location:logout.php');
} else {

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>e-Diary Management System</title>
          <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
 <?php include_once('layout/header.php');?>
        <div id="layoutSidenav">
       <?php include_once('layout/leftbar.php');?>
            <div id="layoutSidenav_content">
<?php $searchdata=$_POST['searchdata'];?>

                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Serach Result Against "<?php echo $searchdata;?>"</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Search Result </li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                              Search Result Details
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Note Title</th>
                                            <th>Category</th>
                                            <th>Creation date</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                        <th>#</th>
                        
                                 <th>Note Title</th>
                                             <th>Category</th>
                                            <th>Creation date</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
<?php 
$userid=$_SESSION["edmsid"];
$query=mysqli_query($con,"select * from tblnotes where createdBy='$userid' and noteTitle like '%$searchdata%'");
$cnt=1;
while($row=mysqli_fetch_array($query))
{
?>  

                                <tr>
                                            <td><?php echo htmlentities($cnt);?></td>
                                              <td><?php echo htmlentities($row['noteTitle']);?></td>
                                            <td><?php echo htmlentities($row['noteCategory']);?></td>
                                            <td> <?php echo htmlentities($row['creationDate']);?></td>
                                            <td>
                                            <a href="view-note.php?noteid=<?php echo $row['id']?>" class="btn btn-primary">View</a> 
                                            <a href="note_delete.php?note_id=<?php echo $row['id']?>" onClick="return confirm('Are you sure you want to delete?')" class="btn btn-danger">Delete</a></td>
                                        </tr>
                                        <?php $cnt=$cnt+1; } ?>
                                       
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
<?php include_once('layout/footer.php');?>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
<?php }  ?>