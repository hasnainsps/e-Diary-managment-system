<?php session_start();
include_once('layout/config.php');

// For deleting    
$catid=$_GET['Man_id'];
$userid=$_SESSION["edmsid"];
$query = "delete from tblcategory where id ='$catid' and  createdBy='$userid'";
if(mysqli_query($con,$query)){
echo "<script>alert('Data Deleted');</script>";
echo "<script>window.location.href='manage-categories.php'</script>";
          }
?>