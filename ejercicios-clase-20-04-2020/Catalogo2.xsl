<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<head>
<style type="text/css">
  table, tr, th, td{
  border: black 2px solid;
  margin: 2px;
  padding: 2px;
  background-color: blue;}
</style>
</head>
<body>
<h1>Los discos de Bob Dylan</h1>
<table>
<tr >
<th>Title</th>
<th>Artist</th>
</tr>
<xsl:for-each select="//cd[artist='Bob Dylan']">
<tr>
<td><xsl:value-of select="title"/></td>
<td><xsl:value-of select="artist"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
