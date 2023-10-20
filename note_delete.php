<?php session_start();
include_once('layout/config.php');

// For deleting    
$noteid=$_GET['note_id'];
$userid=$_SESSION["edmsid"];
mysqli_query($con,"delete from tblnotes where id ='$noteid' and  createdBy='$userid'");
$query2 = "delete from tblnoteshistory where noteId ='$noteid' and  userId='$userid'";
if(mysqli_query($con,$query2)){
echo "<script>alert('Note Deleted');</script>";
echo "<script>window.location.href='manage-notes.php'</script>";
      }
?>