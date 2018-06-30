<<script type="text/javascript">
	function showstu(){
		var xmlhttp=new window.XMLHttpRequest();
		var bj=document.getElementById("bj").value;
		xmlhttp.open("GET","showstu.php?bj="+bj,true);
		xmlhttp.send();
		xmlhttp.onreadystatechange=function(){
			if(xmlhttp.readyState == 4 &&xmlhttp.status == 200){
				document.getElementById("tbl").innerHTML=xmlhttp.responseText;
				xmlhttp=null;
			}
		}
	}
	function show(){
		var xmlhttp=new window.XMLHttpRequest();
		var xm=document.getElementById("stuname").value;
		xmlhttp.open("GET","show.php?xm="+xm,true);
		xmlhttp.send();
		xmlhttp.onreadystatechange=function(){
			if(xmlhttp.readyState == 4 &&xmlhttp.status == 200){
				document.getElementById("tbl").innerHTML=xmlhttp.responseText;
				xmlhttp=null;
			}
		}
	}
</script>
<span>请选择班级：</span>
<select name='bj' id='bj' onchange="showstu()">
<option value="">请选择班级</option>
 <?php
    include_once 'conn.php';
    $sql = 'select distinct s_class from tb_stuinf';
    $r=mysql_query($sql);
    while ($row=mysql_fetch_array($r)){
        echo "<option value='$row[0]'>$row[0]</option>";
    }
?>
</select>
<div id="tbl"></div>

