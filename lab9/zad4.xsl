<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="yes" encoding="kodowanie"/>
	<xsl:template match="lista">
		<html>
			<body>
				<ol>
					<xsl:for-each select="osoba">
						<xsl:if test="grupa='1'">
							<span style="color:blue;">
								<li>
									<xsl:value-of select="imie"/>
									<xsl:text> </xsl:text>
									<xsl:value-of select="nazwisko"/>
								</li>
							</span>
						</xsl:if>
						<xsl:if test="grupa='2'">
							<span style="color:red;">
								<li>
									<xsl:value-of select="imie"/>
									<xsl:text> </xsl:text>
									<xsl:value-of select="nazwisko"/>
								</li>
							</span>
						</xsl:if>
						<xsl:if test="grupa='3'">
							<span style="color:black;">
								<li>
									<xsl:value-of select="imie"/>
									<xsl:text> </xsl:text>
									<xsl:value-of select="nazwisko"/>
								</li>
							</span>
						</xsl:if>
					</xsl:for-each>
				</ol>
			</body>
		</html>
	
	</xsl:template>
</xsl:stylesheet>
