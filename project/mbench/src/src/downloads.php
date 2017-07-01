<?php
if ($_REQUEST['link'] == "unixsrc")
{
	$filename = "mbench.tar.gz";
	header("Cache-control: private");
	header("Content-Type: application/force-download");
	if (strstr($_SERVER["HTTP_USER_AGEN"], "MSIE"))
		header("Content-Disposition: filename=$filename"."%20");
	else
		header("Content-Disposition: attachment; filename=$filename");
	readfile($filename);
	exit;
}
?>
<!-- Start of the common header for all Mbench pages -->
<html>
<head>
<title>The Michigan Benchmark</title>
</head>

<body>
<table border="1" width="100%" id="AutoNumber1" style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-COLLAPSE: collapse; BORDER-RIGHT-WIDTH: 0px" bordercolor="#000099" cellpadding="0" cellspacing="0" height="63">
  
  <tr>
    <TD 
    style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" 
    width="100%" bgColor=#ffff66 colSpan=4 height=50>
      <H1 style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px" align=center><FONT 
      face="Comic Sans MS" color=#000099><A style="TEXT-DECORATION: none" 
      href="http://www.eecs.umich.edu/db/mbench/">The Michigan Benchmark</A> </FONT></H1></TD>
  </tr>
  <tr>
    <TD 
    style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" 
    width="25%" bgColor=#0000cc height=19>
      <P align=center><A href="description.html"><FONT face="Comic Sans MS" 
      color=yellow size=2><STRONG>Description</STRONG></FONT></A></P></TD>
    <td width="25%" bgcolor="#0000cc" height="19" style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" 
   >
      <P align=center><b><A href="downloads.html"><FONT 
      face="Comic Sans MS" color=yellow size=2>Downloads</FONT></A></b></P></td>
    <td width="25%" bgcolor="#0000cc" height="19" style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" 
   >
      <P align=center><b><A href="people.html"><FONT 
      face="Comic Sans MS" color=yellow size=2>People</FONT></A></b></P></td>
    <td width="25%" bgcolor="#0000cc" height="19" style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" 
   >
      <P align=center>
    <font face="Comic Sans MS" size="2"><b>
    <font color="#ffff66"><A 
      href="mailto:jignesh@eecs.umich.edu"><FONT 
      color=yellow>Comments</FONT></A>&nbsp;</font></b></font></P></td>
  </tr>
</table>
<br>
<!-- End of the common header for all Mbench pages -->

<h1>Data Generator</h1>
<p>
	The source code is written is C++.  There are two distributions for UNIX and WINDOWS platforms.     
</p>
<h2>UNIX</h2>
<ul>
	<li>Download <a href="downloads.php?link=unixsrc">Source files</a></li>
 	<li><a href="src/installUnix.html">Instructions</a></li> for installing
</ul>
<h2>WINDOWS</h2>
<ul>
	<li>Download <a href="src/mbgen.zip">Source files</a></li>
 	<li><a href="src/installWin.html">Instructions</a></li> for installing
</ul>

<h1>DTD</h1>
     <a href="bm.dtd">bm.dtd</a>

<h1>XML Schema</h1>
      <a href="bm.xsd">bm.xsd</a>
<br/>

<h1>SQL Queries</h1>
      <a href="sql.html">SQL queries</a>
<br/>
<br/>

<h1>Benchmark papers</h1>
<ul>
      <li><a href="bmShortV.pdf">Short version</a></li>
      <li><a href="bmLongV.pdf">Long version</a></li>
</ul>
<br/>
<br/>
Last updated on Mar 30,2002.
</body>
</html>









