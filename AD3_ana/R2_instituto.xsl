<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <!--
        Creamos la etiqueta "claustro" en el nuevo XML.
        -->
       <claustro>
       <!-- 
            Seleccionamos todos los "profesores/profesor".
        -->
            <xsl:for-each select="ite[profesores/profesor='claustro']">
            <!-- Creamos la etiqueta "profesor" en el nuevo XML -->
            <profesor>
                 <!-- 
                Con la siguiente etiqueta creamos un atributo "aula" con el valor del
                elemento "id" dentro de la etiqueta "profesor".
                -->
                <xsl:attribute name="aula">
                    <xsl:value-of select="id"/>
                </xsl:attribute>
                <!-- 
                Creamos la etiqueta "responstable" y dentro le ponemoes el valor del 
                elemento "nombre" dentro de la etiqueta profesor.
                -->
                <responstable><xsl:value-of select="name"/></responstable>
            </profesor>
            </xsl:for-each>
       </claustro>
       <formacion>
       <!--
        Creamos la etiqueta "formacion" en el nuevo XML.
        -->
       <xsl:for-each select="ite/ciclos[ciclo='formacion]"></xsl:for-each>
        <!-- Creamos la etiqueta "ciclo" en el nuevo XML -->
            <cilco>
                <!-- 
                    Con la siguiente etiqueta creamos un atributo "grado" con el valor del
                    elemento "grado" dentro de la etiqueta "ciclo".
                -->
                <xsl:attribute name="grado">
                    <xsl:value-of select="grado"/>
                </xsl:attribute>
                </cilco>
       </formacion>
    </xsl:template>
</xsl:stylesheet>
