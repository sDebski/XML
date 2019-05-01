<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="yes" encoding="kodowanie"/>
	<xsl:template match="silownia">
		<html>
      <head>
        <title>Projekt XSL</title>
      </head>
			<body>
        <xsl:comment>Autor: Szymon Dębski</xsl:comment>
				<h3 >Adres silowni</h3>
				<table>

					<xsl:for-each select="adres_silowni">
									<tr bgcolor="yellow" fontsize="large">

										<td>
											<xsl:value-of select="miasto"/>
										</td>
										<td >
											<xsl:value-of select="ulica"/>
										</td>
                    <td >
                      <xsl:value-of select="numer"/>
                    </td>
                    <td>
                      <xsl:text>kod pocztowy: </xsl:text>
                    </td>
                    <td >
                      <xsl:value-of select="kod"/>
                    </td>
									</tr>
					</xsl:for-each>
				</table>


        <h3 >Właściciel siłowni</h3>
        <table>
          <xsl:for-each select="wlasciciel">
            <tr bgcolor="yellow">

              <td>
                <b>
                  <xsl:text>Imie: </xsl:text>
                </b>
              </td>
              <td>
                <xsl:value-of select="imie"/>
              </td>
              <td>
                <b>
                  <xsl:text>Nazwisko: </xsl:text>
                </b>
              </td>
              <td >
                <xsl:value-of select="nazwisko"/>
              </td>
            </tr>
            <tr bgcolor="brown">
              <td>
                <b>
                <xsl:text>Adres: </xsl:text>
                </b>
              </td>
              <td>
                <xsl:value-of select="adres/miasto"/>
              </td>
              <td >
                <xsl:value-of select="adres/ulica"/>
              </td>
              <td >
                <xsl:value-of select="adres/numer"/>
              </td>
              <td>
                <xsl:text>, kod pocztowy: </xsl:text>
              </td>
              <td >
                <xsl:value-of select="adres/kod"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        
        
				
								<h3 >Trenerzy : </h3>
				<table>
					<xsl:for-each select="trenerzy/trener">
            <xsl:sort select="@plec" order="ascending"/>
							<xsl:choose>
								<xsl:when test="@plec='m'">
                  <tr bgcolor="#7FFFD4">
                    <td>
                      <b>
                        <xsl:text>Imie: </xsl:text>
                      </b>
                    </td>
                    <td>
                      <xsl:value-of select="imie"/>
                    </td>
                    <td>
                      <b>
                        <xsl:text>Nazwisko: </xsl:text>
                      </b>
                    </td>
                    <td >
                      <xsl:value-of select="nazwisko"/>
                    </td>
                    <td>
                      <xsl:text>pesel: </xsl:text>
                    </td>
                    <td >
                      <xsl:value-of select="pesel"/>
                    </td>
                    <td/>
                  </tr>
                  <tr bgcolor="#7FFFD4">
                    <td>
                      <b>
                        <xsl:text>Adres: </xsl:text>
                      </b>
                    </td>
                    <td>
                      <xsl:value-of select="adres/miasto"/>
                    </td>
                    <td >
                      <xsl:value-of select="adres/ulica"/>
                    </td>
                    <td >
                      <xsl:value-of select="adres/numer"/>
                    </td>
                    <td>
                      <xsl:text>kod pocztowy: </xsl:text>
                    </td>
                    <td >
                      <xsl:value-of select="adres/kod"/>
                    </td>
                  </tr>
								</xsl:when>
								<xsl:otherwise>
									<tr bgcolor="pink">
                    <td>
                      <b>
                        <xsl:text>Imie: </xsl:text>
                      </b>
                    </td>
                    <td>
                      <xsl:value-of select="imie"/>
                    </td>
                    <td>
                      <b>
                        <xsl:text>Nazwisko: </xsl:text>
                      </b>
                    </td>
                    <td >
                      <xsl:value-of select="nazwisko"/>
                    </td>  
                    <td>
                      <xsl:text>pesel: </xsl:text>
                    </td>
                    <td >
                      <xsl:value-of select="pesel"/>
                    </td>
                  </tr>
                  <tr bgcolor="pink">
                    <td>
                      <b>
                        <xsl:text>Adres: </xsl:text>
                      </b>
                    </td>
                    <td>
                      <xsl:value-of select="adres/miasto"/>
                    </td>
                    <td >
                      <xsl:value-of select="adres/ulica"/>
                    </td>
                    <td >
                      <xsl:value-of select="adres/numer"/>
                    </td>
                    <td>
                      <xsl:text>kod pocztowy: </xsl:text>
                    </td>
                    <td >
                      <xsl:value-of select="adres/kod"/>
                    </td>
									</tr>
								</xsl:otherwise>
							</xsl:choose>
					</xsl:for-each>
				</table>

        <h3 >Klienci : </h3>
        <table>
          <xsl:for-each select="klienci/klient">
            <xsl:sort select="@plec" order="ascending"/>
            <xsl:choose>
              <xsl:when test="@plec='m'">
                <tr bgcolor="#7FFFD4">
                  <td>
                    <b>
                      <xsl:text>Imie: </xsl:text>
                    </b>
                  </td>
                  <td>
                    <xsl:value-of select="imie"/>
                  </td>
                  <td>
                    <b>
                      <xsl:text>Nazwisko: </xsl:text>
                    </b>
                  </td>
                  <td >
                    <xsl:value-of select="nazwisko"/>
                  </td>
                  <td>
                  <xsl:text>pesel: </xsl:text>
                  </td>
                  <td >
                    <xsl:value-of select="pesel"/>
                  </td>
                </tr>
                <tr bgcolor="orange">
                  <td>
                    <b>
                      <xsl:text>Wazność karnetu: </xsl:text>
                    </b>
                  </td>
                  <td>
                    <b>
                      <xsl:text>  </xsl:text>
                    </b>
                  </td>
                  <td>
                    <b>
                      <xsl:text>Od: </xsl:text>
                    </b>
                  </td>
                  <td>
                    <xsl:value-of select="waznosc_karnetu/od_kiedy"/>
                  </td>
                  <td>
                    <b>
                      <xsl:text>Do: </xsl:text>
                    </b>
                  </td>
                  <td >
                    <xsl:value-of select="waznosc_karnetu/do_kiedy"/>
                  </td>
                </tr>
                <tr bgcolor="#7FFFD4">
                  <td>
                    <b>
                      <xsl:text>Adres: </xsl:text>
                    </b>
                  </td>
                  <td>
                    <xsl:value-of select="adres/miasto"/>
                  </td>
                  <td >
                    <xsl:value-of select="adres/ulica"/>
                  </td>
                  <td >
                    <xsl:value-of select="adres/numer"/>
                  </td>
                  <td>
                    <xsl:text>kod pocztowy: </xsl:text>
                  </td>
                  <td >
                    <xsl:value-of select="adres/kod"/>
                  </td>
                </tr>
              </xsl:when>
              <xsl:when test="@plec='k'">
                <tr bgcolor="pink">
                  <td>
                    <b>
                      <xsl:text>Imie: </xsl:text>
                    </b>
                  </td>
                  <td>
                    <xsl:value-of select="imie"/>
                  </td>
                  <td>
                    <b>
                      <xsl:text>Nazwisko: </xsl:text>
                    </b>
                  </td>
                  <td >
                    <xsl:value-of select="nazwisko"/>
                  </td>
                  <td>
                    <xsl:text>pesel: </xsl:text>
                  </td>
                  <td >
                    <xsl:value-of select="pesel"/>
                  </td>
                </tr>
                <tr bgcolor="orange">
                  <td>
                    <b>
                      <xsl:text>Wazność karnetu: </xsl:text>
                    </b>
                  </td>
                  <td>
                    <b>
                      <xsl:text>  </xsl:text>
                    </b>
                  </td>
                  <td>
                    <b>
                      <xsl:text>Od: </xsl:text>
                    </b>
                  </td>
                  <td>
                    <xsl:value-of select="waznosc_karnetu/od_kiedy"/>
                  </td>
                  <td>
                    <b>
                      <xsl:text>Do: </xsl:text>
                    </b>
                  </td>
                  <td >
                    <xsl:value-of select="waznosc_karnetu/do_kiedy"/>
                  </td>
                </tr>
                <tr bgcolor="pink">
                  <td>
                    <b>
                      <xsl:text>Adres: </xsl:text>
                    </b>
                  </td>
                  <td>
                    <xsl:value-of select="adres/miasto"/>
                  </td>
                  <td >
                    <xsl:value-of select="adres/ulica"/>
                  </td>
                  <td >
                    <xsl:value-of select="adres/numer"/>
                  </td>
                  <td>
                    <xsl:text>kod pocztowy: </xsl:text>
                  </td>
                  <td >
                    <xsl:value-of select="adres/kod"/>
                  </td>
                </tr>
              </xsl:when>
              <xsl:otherwise>
                <tr bgcolor="purple">
                  <td>
                    <b>
                      <xsl:text>Imie: </xsl:text>
                    </b>
                  </td>
                  <td>
                    <xsl:value-of select="imie"/>
                  </td>
                  <td>
                    <b>
                      <xsl:text>Nazwisko: </xsl:text>
                    </b>
                  </td>
                  <td >
                    <xsl:value-of select="nazwisko"/>
                  </td>
                  <td>
                    <xsl:text>pesel: </xsl:text>
                  </td>
                  <td >
                    <xsl:value-of select="pesel"/>
                  </td>
                </tr>
                <tr bgcolor="orange">
                  <td>
                    <b>
                      <xsl:text>Wazność karnetu: </xsl:text>
                    </b>
                  </td>
                  <td>
                    <b>
                      <xsl:text>  </xsl:text>
                    </b>
                  </td>
                  <td>
                    <b>
                      <xsl:text>Od: </xsl:text>
                    </b>
                  </td>
                  <td>
                    <xsl:value-of select="waznosc_karnetu/od_kiedy"/>
                  </td>
                  <td>
                    <b>
                      <xsl:text>Do: </xsl:text>
                    </b>
                  </td>
                  <td >
                    <xsl:value-of select="waznosc_karnetu/do_kiedy"/>
                  </td>
                </tr>
                <tr bgcolor="purple">
                  <td>
                    <b>
                      <xsl:text>Adres: </xsl:text>
                    </b>
                  </td>
                  <td>
                    <xsl:value-of select="adres/miasto"/>
                  </td>
                  <td >
                    <xsl:value-of select="adres/ulica"/>
                  </td>
                  <td >
                    <xsl:value-of select="adres/numer"/>
                  </td>
                  <td>
                    <xsl:text>kod pocztowy: </xsl:text>
                  </td>
                  <td >
                    <xsl:value-of select="adres/kod"/>
                  </td>
                </tr>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each>
        </table>

        <h3 >Informacje dodatkowe: </h3>
        
        
        <table>
          <tr>
            <td>
              <b>
                <xsl:text>Ilosc wszystkich trenerów: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="count(trenerzy/trener)"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
                <xsl:text>Ilosc wszystkich Klientów: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="count(klienci/klient)"/>
            </td>
          </tr>
          <tr>
            <td>
              <b>
                <xsl:text>Ilosc wszystkich kobiet: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="count(trenerzy/trener[@plec='k']) + count(klienci/klient[@plec='k'])"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
                <xsl:text>Ilosc wszystkich mezczyzn: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="count(trenerzy/trener[@plec='m']) + count(klienci/klient[@plec='m'])"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
                <xsl:text>Ilosc osob z Gdanska: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="count(trenerzy/trener/adres[miasto='Gdansk']) + count(klienci/klient/adres[miasto='Gdansk'])"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
                <xsl:text>Ilosc sprzetu: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="sum(sprzety/sprzet/ilosc)"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
                <xsl:text>Ostatni klient : </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="concat(klienci/klient[position()=last()]/imie,' ', klienci/klient[position()=last()]/nazwisko)"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
                <xsl:text>Długosc imienia i nazwiska wlasciciela: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="string-length(wlasciciel/imie) + string-length(wlasciciel/nazwisko)"/>
            </td>
          </tr>

          <tr>
            <td>
              <b>
                <xsl:text>Wypisanie osoby, ktora jest przed Marianem Marianowiczem: </xsl:text>
              </b>
            </td>
            <td>
              <xsl:value-of select="concat(trenerzy/trener[position()=(nazwisko='Marianowicz')]/preceding-sibling::trener[1]/imie,' ', trenerzy/trener[position()=(nazwisko='Marianowicz')]/preceding-sibling::trener[1]/nazwisko)"/>
            </td>
          </tr>
          
        </table>
  
				
			</body>
		</html>
	
	</xsl:template>
</xsl:stylesheet>
