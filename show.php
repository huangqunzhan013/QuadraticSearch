<?php
require_once 'conn.php';
$xm=$_GET['xm'];
session_start();
$sql= $_SESSION['sql']."and xm like '%$xm%'";
$r=mysql_query($sql);
echo '<table border="1" style="border-collapse:collapse">';
echo '<tr><td>学号</td><td>姓名</td></tr>';
while ($row=mysql_fetch_array($r)){
    echo "<tr>";
    echo "<td>".$row['xh']."</td>";
    echo "<td>".$row['xm']."</td>";
    echo "</tr>";
}
echo  '</table>';
