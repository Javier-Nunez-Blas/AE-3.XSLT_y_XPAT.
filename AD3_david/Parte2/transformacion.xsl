<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <personas>
            <xsl:for-each select="profesores/profesor">
                <persona>
                    <email><xsl:value-of select="email"/></email>
                </persona>
            </xsl:for-each>
        </personas>
    </xsl:template>

</xsl:stylesheet>