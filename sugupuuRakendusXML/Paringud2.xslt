<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="xml" indent="yes"/>
	
	<!--parameetri määramine-->
	<xsl:param name ="otsing">ll</xsl:param>

	<xsl:param name ="pikkus">9</xsl:param>

	<xsl:template match="/">
		<strong>Kõik sugupuu nimed</strong>
		<h2>
			XML skeem
		</h2>
		valideerib kirjutab xml kasutades skeemi 
		<img src="https://learn.microsoft.com/en-us/visualstudio/xml-tools/media/xsddesigner_graphview.gif?view=visualstudio"></img>
	</xsl:template>
</xsl:stylesheet>