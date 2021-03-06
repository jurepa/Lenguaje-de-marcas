<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1>Encuesta troll</h1>
				<form action="http://leo.ciclo.iesnervion.es/muestraDatos.php"name="Formulario" method="post">
					<fieldset>
						<legend>Vamo a lo que vamo</legend>
							<xsl:for-each select="encuesta/cuestion">
								<xsl:value-of select="pregunta"/><br/>
								<xsl:for-each select="encuesta/cuestion">
								<option><xsl:value-of select="respuesta"/></option>
								</xsl:for-each>
							</xsl:for-each>
					</fieldset>
				</form>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>