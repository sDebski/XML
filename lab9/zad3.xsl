<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="yes" encoding="kodowanie"/>
	<xsl:template match="/">
		<lista>
		<xsl:for-each select="lista/osoba">
			<xsl:sort select="nazwisko"/>
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
				<xsl:element name="plec">
						<xsl:choose>
							<xsl:when test="@plec='k'">kobieta</xsl:when>
							<xsl:otherwise>mezczyzna</xsl:otherwise>
						</xsl:choose>
				</xsl:element>
				</xsl:element>

		</xsl:for-each>
		</lista>
	</xsl:template>
</xsl:stylesheet>
