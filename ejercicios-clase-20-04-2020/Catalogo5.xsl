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
<h2>My CD Collection</h2>
<table>
<tr >
<th>Title</th>
<th>Artist</th>
</tr>
<xsl:for-each select="catalog/cd">
<tr>
<td><xsl:value-of select="title"/></td>
<td><xsl:value-of select="artist"/></td>
<xsl:choose>
<xsl:when test="price &lt; 10">
<td style="background-color: red;"><xsl:value-of select="price"/></td>
</xsl:when>
<xsl:when test="price &lt; 20">
<td style="background-color: yellow;"><xsl:value-of select="price"/></td>
</xsl:when>
<xsl:when test="price &lt; 30">
<td style="background-color: green;"><xsl:value-of select="price"/></td>
</xsl:when>
</xsl:choose>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>