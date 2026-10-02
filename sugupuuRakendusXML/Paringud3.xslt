<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8"/>
	<xsl:template match="/">
		<xsl:for-each select="//reis[transport/liik='lennureis']">
			<h1>
				<xsl:value-of select="sihtkoht"/>
			</h1>
			<ul>
				<li>
					Transport: <xsl:value-of select="transport/liik"/>
				</li>
				<li>
					Majutus: <xsl:value-of select="majutus/hotell"/>
				</li>
				<li>
					Ekskursioonid:
					<ul>
						<xsl:for-each select="ekskursioonid/ekskursioon">
							<li style="background-color:yellow">
								<xsl:value-of select="nimi"/> - <xsl:value-of select="hind"/> €
							</li>
						</xsl:for-each>
					</ul>
				</li>
				<li>
					Muud kulud: <xsl:value-of select="muudkulud/hind"/> €
				</li>
			</ul>
			<xsl:if test="@hinnang = 10">
				<strong>Väga hea reis</strong>
			</xsl:if>
<![CDATA[]]>
			<strong>Kogumaksumus: </strong>
			<xsl:value-of select="transport/hind + majutus/hind + sum(ekskursioonid/ekskursioon/hind) + muudkulud/hind"/> €
			<br/>
			<br/>
		</xsl:for-each>
		<h1>Kõik reisid</h1>
		<table border="1">
			<tr>
				<th>Nr</th>
				<th>ID</th>
				<th>Sihtkoht</th>
				<th>Transport</th>
				<th>Majutus</th>
				<th>Ekskursioonid</th>
				<th>Muud kulud</th>
				<th>Kogumaksumus</th>
				<th>Hinnang</th>
			</tr>
			<xsl:for-each select="//reis">
				<xsl:sort select="@hinnang" data-type="number" order="descending"/>
				<tr>
					<xsl:if test="position() mod 2 = 1">
						<xsl:attribute name="style">background-color:lightblue;</xsl:attribute>
					</xsl:if>
					<xsl:if test="position() mod 2 = 0">
						<xsl:attribute name="style">background-color:lightgreen;</xsl:attribute>
					</xsl:if>
					<td>
						<xsl:value-of select="position()"/>
					</td>
					<td>
						<xsl:value-of select="@id"/>
					</td>
					<td>
						<xsl:value-of select="sihtkoht"/>
					</td>
					<td>
						<xsl:value-of select="transport/hind"/> €
					</td>
					<td>
						<xsl:value-of select="majutus/hind"/> €
					</td>
					<td>
						<xsl:value-of select="sum(ekskursioonid/ekskursioon/hind)"/> €
					</td>
					<td>
						<xsl:value-of select="muudkulud/hind"/> €
					</td>
					<td>
						<xsl:value-of select="transport/hind + majutus/hind + sum(ekskursioonid/ekskursioon/hind) + muudkulud/hind"/> €
					</td>
					<td>
						<xsl:value-of select="@hinnang"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>
