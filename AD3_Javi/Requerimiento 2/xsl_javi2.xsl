<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <result>
            <nombre>
                <xsl:value-of select="ite/@nombre"/>
            </nombre>
            <web>
                <xsl:value-of select="ite/@web"/>
            </web>
            <empresa>
                <xsl:value-of select="ite/empresa"/>
            </empresa>
            <telefono>
                <xsl:value-of select="ite/telefono"/>
            </telefono>
            <profesores>
                  <xsl:for-each select="ite/profesores/profesor">
                        <profesor>
                              <xsl:attribute name="id">
                                    <xsl:value-of select="id"/>
                              </xsl:attribute>
                              <nombre>
                                    <xsl:value-of select="nombre"/>
                              </nombre>
                        </profesor>
                  </xsl:for-each>
                  <xsl:for-each select="ite/director">
                        <profesor>
                              <xsl:attribute name="id">
                                    <xsl:value-of select="despacho"/>
                              </xsl:attribute>
                              <nombre>
                                    <xsl:value-of select="nombre"/>
                              </nombre>
                        </profesor>
                  </xsl:for-each>
                  <xsl:for-each select="ite/jefe_estudios">
                        <profesor>
                              <xsl:attribute name="id">
                                    <xsl:value-of select="despacho"/>
                              </xsl:attribute>
                              <nombre>
                                    <xsl:value-of select="nombre"/>
                              </nombre>
                        </profesor>
                  </xsl:for-each>
                  <xsl:for-each select="ite/ciclos/ciclo">
                        <ciclo>
                              <xsl:attribute name="nombre">
                                    <xsl:value-of select="nombre"/>
                              </xsl:attribute>
                              <xsl:attribute name="grado">
                                    <xsl:value-of select="grado"/>
                              </xsl:attribute>
                              <Siglas>
                                    <xsl:value-of select="@id"/>
                              </Siglas>
                              <Año>
                                    <xsl:value-of select="decretoTitulo/@año"/>
                              </Año>
                        </ciclo>
                  </xsl:for-each>
                  
            </profesores>
        </result>
    </xsl:template>
</xsl:stylesheet>