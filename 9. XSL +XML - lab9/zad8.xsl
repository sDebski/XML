<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <table>

            <tr>

              <td>
                <b><xsl:text>Ilosc Wszystkich osób: </xsl:text></b> 
              </td>
              <td>
              <xsl:value-of select="count(lista/osoba)"/>
              </td>
            </tr>

            <tr>
              <td>
                <b>
                <xsl:text>Ilosc  osob z grupy 1: </xsl:text>
                </b> 
              </td>
              <td>
                  <xsl:value-of select="count(lista/osoba[grupa='1'])"/>             
              </td>
            </tr>
          <tr>
            <td>
              <b>
              <xsl:text>Ilosc  osob z grupy 2: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="count(lista/osoba[grupa='2'])"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
              <xsl:text>Ilosc  osob z grupy 3: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="count(lista/osoba[grupa='3'])"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
                <xsl:text>Ilosc kobiet: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="count(lista/osoba[@plec='k'])"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
                <xsl:text>Ilosc mezczyzn: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="count(lista/osoba[@plec='m'])"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
                <xsl:text>Średnia wieku wszystkich osob: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="( sum(lista/osoba/wiek/text()) div count(lista/osoba))"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
                <xsl:text>Średnia wieku osob z grupy 1: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="( sum(lista/osoba[grupa='1']/wiek/text()) div count(lista/osoba[grupa='1']))"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
                <xsl:text>Średnia wieku osob z grupy 2: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="format-number((sum(lista/osoba[grupa='2']/wiek/text()) div count(lista/osoba[grupa='2'])), '#.00')"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
                <xsl:text>Średnia wieku osob z grupy 3: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="( sum(lista/osoba[grupa='3']/wiek/text()) div count(lista/osoba[grupa='3']))"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
                <xsl:text>Średnia wieku kobiet: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="( sum(lista/osoba[@plec='k']/wiek/text()) div count(lista/osoba[@plec='k']))"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
                <xsl:text>Średnia wieku mezczyzny: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="( sum(lista/osoba[@plec='m']/wiek/text()) div count(lista/osoba[@plec='m']))"/>
            </td>
          </tr>



        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

