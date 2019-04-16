<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="yes" encoding="kodowanie"/>
	<xsl:template match="lista">
		<html>
			<body>
				<ul>
					<xsl:for-each select="osoba">
						<xsl:sort select="@plec"/>
						<xsl:sort select="wiek"/>
						<xsl:choose>
							<xsl:when test="@plec='k'">
							<span style="color:red;">
								<li>
									<xsl:value-of select="imie"/>
									<xsl:text> </xsl:text>
									<xsl:value-of select="nazwisko"/>
								</li>
							</span>
							</xsl:when>
							<xsl:otherwise>
							<span style="color:blue;">
								<li>
									<xsl:value-of select="imie"/>
									<xsl:text> </xsl:text>
									<xsl:value-of select="nazwisko"/>
								</li>
							</span>
							</xsl:otherwise>
						</xsl:choose>
						

					</xsl:for-each>
				</ul>
			</body>
		</html>
	
	</xsl:template>
</xsl:stylesheet>
