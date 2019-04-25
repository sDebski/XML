<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="yes" encoding="kodowanie"/>
	<xsl:template match="/">
		<lista>
			<xsl:comment>Osoby mlodsze niz 30 lat</xsl:comment>
		<xsl:for-each select="lista/osoba">
				<xsl:if test="wiek &lt; 30">
				<xsl:element name="osoba">
				<xsl:attribute name="grupa">
					<xsl:value-of select="grupa"/>
				</xsl:attribute>
				<xsl:element name="imie">
					<xsl:value-of select="imie"/>
				</xsl:element>
				<xsl:element name="nazwisko">
					<xsl:value-of select="nazwisko"/>
				</xsl:element>
				</xsl:element>
				</xsl:if>

		</xsl:for-each>
		</lista>
	</xsl:template>
</xsl:stylesheet>
