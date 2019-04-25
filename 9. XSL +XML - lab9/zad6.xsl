<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="yes" encoding="kodowanie"/>
	<xsl:template match="lista">
		<html>
			<body>
				<h3>Grupa 1</h3>
				<table>
					<xsl:for-each select="osoba[grupa=1]">
							<xsl:choose>
								<xsl:when test="position() mod 2 = 1">
									<tr bgcolor="blue">
										<td>
											<xsl:value-of select="imie"/>
										</td>
										<td >
											<xsl:value-of select="nazwisko"/>
										</td>
									</tr>
								</xsl:when>
								<xsl:otherwise>
									<tr bgcolor="yellow">
										<td>
											<xsl:value-of select="imie"/>
										</td>
										<td >
											<xsl:value-of select="nazwisko"/>
										</td>
									</tr>
								</xsl:otherwise>
							</xsl:choose>
					</xsl:for-each>
				</table>
				
								<h3>Grupa 2</h3>
				<table>
					<xsl:for-each select="osoba[grupa=2]">
							<xsl:choose>
								<xsl:when test="position() mod 2 = 1">
									<tr bgcolor="blue">
										<td>
											<xsl:value-of select="imie"/>
										</td>
										<td >
											<xsl:value-of select="nazwisko"/>
										</td>
									</tr>
								</xsl:when>
								<xsl:otherwise>
									<tr bgcolor="yellow">
										<td>
											<xsl:value-of select="imie"/>
										</td>
										<td >
											<xsl:value-of select="nazwisko"/>
										</td>
									</tr>
								</xsl:otherwise>
							</xsl:choose>
					</xsl:for-each>
				</table>
				
				<h3>Grupa 3</h3>
				<table>
					<xsl:for-each select="osoba[grupa=3]">
							<xsl:choose>
								<xsl:when test="position() mod 2 = 1">
									<tr bgcolor="blue">
										<td>
											<xsl:value-of select="imie"/>
										</td>
										<td >
											<xsl:value-of select="nazwisko"/>
										</td>
									</tr>
								</xsl:when>
								<xsl:otherwise>
									<tr bgcolor="yellow">
										<td>
											<xsl:value-of select="imie"/>
										</td>
										<td >
											<xsl:value-of select="nazwisko"/>
										</td>
									</tr>
								</xsl:otherwise>
							</xsl:choose>
					</xsl:for-each>
				</table>				
			</body>
		</html>
	
	</xsl:template>
</xsl:stylesheet>
