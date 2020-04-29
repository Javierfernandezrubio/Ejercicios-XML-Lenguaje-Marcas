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
<h2>Tiempo en Cordoba</h2>
<table>
<tr >
<th>Dia</th>
<th>Temperatura maxima</th>
<th>Temperatura minima</th>
<th>Precipitaciones</th>
<th>Cielo</th>
</tr>
<xsl:for-each select="root/prediccion/dia">
<xsl:if test="estado_cielo = 13">
<tr>
<td><xsl:value-of select="@fecha"/></td>
<td><xsl:value-of select="temperatura/maxima"/></td>
<td><xsl:value-of select="temperatura/minima"/></td>
<td><xsl:value-of select="prob_precipitacion"/></td>
<td><xsl:value-of select="estado_cielo/@descripcion"/></td>
</tr>
</xsl:if>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
