<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="xml" indent="yes"/>

	<xsl:template match="/">
		<strong>Kõik sugupuu nimed</strong>
		<ul>
			<xsl:for-each select="//inimene">
				<li>
					<xsl:value-of select="nimi"/>,
					<xsl:value-of select="@synd"/>:
					<xsl:value-of select="concat(nimi, ' sünniaasta: ', @synd)"/>
					. Vanus -
					<xsl:value-of select="2026-@synd"/> aastat vana
				</li>
			</xsl:for-each>
		</ul>
		<ol>
			<li>
				1. täht kõikidest nimedest:
				<xsl:for-each select="//inimene">
					<xsl:value-of select="substring(nimi, 1, 1)"/>,
				</xsl:for-each>
			</li>
			<li>
				Näita nimed ja tähtede kogused:
				<xsl:for-each select="//inimene">
					<xsl:value-of select="concat(nimi, ': ', string-length(nimi), ' tähte ')"/>,
				</xsl:for-each>
			</li>
		</ol>
		
		<table border="1">
			<xsl:for-each select="//inimene">
				<tr>
					<th>Nimi</th>
					<td border ="1">
						<xsl:value-of select="nimi"/>
					</td>

					<td border ="1">
						<th>Aasta</th>
						<xsl:value-of select="@synd"/>
					</td>

					<td border ="1">
						<th>Vanus</th>
						<xsl:value-of select="2026 - @synd"/>
					</td>

					<td border ="1">
						<th>1 häht</th>
						<xsl:value-of select="substring(nimi, 1, 1)"/>
					</td>

					<td border ="1">
						<th>viimane täht</th>
						<xsl:value-of select="substring(nimi, string-length(nimi), 1)"/>
					</td>
				</tr>
			</xsl:for-each>
		
		</table>
	</xsl:template>
</xsl:stylesheet>