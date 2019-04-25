<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="lista">
    <html>
      <body>
        <table>
          <xsl:for-each select="osoba">
            <xsl:if test="(string-length(imie) + string-length(nazwisko)) &gt; 12">
                  <tr>
                    <td>
                      <xsl:value-of select="imie"/>
                      <xsl:text> </xsl:text>
                      <b><xsl:value-of select="nazwisko"/></b>
                      <xsl:text> </xsl:text>
                      <u><xsl:text>grupa</xsl:text></u>
                      <xsl:text> </xsl:text>
                      <i><xsl:value-of select="grupa"/></i>
                    </td>
                   
                  </tr>
            </xsl:if>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

