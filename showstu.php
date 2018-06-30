<?php
$bj=$_GET['bj'];
include_once 'conn.php';
$sql="select * from tb_stuinf where s_class='$bj'";
session_start();
$_SESSION['sql']=$sql;
$r=mysql_query($sql);
echo '<table border="1" style="border-collapse:collapse">';
echo '<tr><td>学号</td><td>姓名</td></tr>';
while ($row=mysql_fetch_array($r)){
    echo "<tr>";
    echo "<td>".$row['xh']."</td>";
    echo "<td>".$row['xm']."</td>";
    echo "</tr>";
}
echo '在结果中根据姓名查找学生：<input type="text" id="stuname"/>';
echo '<input type="button" onclick="show()" value="查询"/>';