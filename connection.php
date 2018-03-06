<?php
$db = mysqli_connect('localhost','root','');

if(!$db)
{
echo 'Not connected to server';
}
if(!mysqli_select_db($db,'project_uom'))
{
echo'Database not selected';
}
//$db = mysql_connect("localhost", "root", "","uom");

?>

<?php
define('DB_NAME','project_uom');
define('DB_USER','root');
define('DB_PASSWORD','');
define('DB_HOST','localhost');

$link=mysql_connect(DB_HOST,DB_USER,DB_PASSWORD);

if(!$link){
    die('could not connect:'.mysql_error() );
}
else{
    echo"success &";
}

$db_selected=mysql_select_db(DB_NAME,$link);

if(!$db_selected) {
    die('can\'t use'.DB_NAME.':'.mysql_error() );
}
else{
    echo"db selected";
}
?>
