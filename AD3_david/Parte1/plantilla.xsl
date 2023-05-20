<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Instituto Tecnológico Edix</title>
                <style>
                    table {
                    border-collapse: collapse;
                    width: 100%;
                    }

                    th, td {
                    padding: 8px;
                    text-align: left;
                    border-bottom: 1px solid #ddd;
                    }

                    th {
                    background-color: #f2f2f2;
                    }

                    tr:hover {
                    background-color: #f5f5f5;
                    }


                </style>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="/ite/@nombre" />
                </h1>

                <h2>Información de contacto:</h2>
                <p>Teléfono: <xsl:value-of select="/ite/telefono" /></p>
                <p>Web: <a href="{/ite/@web}">
                        <xsl:value-of select="/ite/@web" />
                    </a></p>

                <h2>Enlaces de interes:</h2>
                <ul>
                    <li>
                        <a href="https://www.edix.com/es/revolucion-profesional/">Sobre nosotros</a>
                    </li>
                    <li>
                        <a href="https://www.edix.com/es/revolucion-profesional/">Bootcamps</a>
                    </li>
                </ul>

                <h2>Profesores:</h2>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                    </tr>
                    <xsl:for-each select="/ite/profesores/profesor">
                        <tr>
                            <td>
                                <xsl:value-of select="id" />
                            </td>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Director:</h2>
                <p>Nombre: <xsl:value-of select="/ite/director/nombre" /></p>
                <p>Despacho: <xsl:value-of select="/ite/director/despacho" /></p>

                <h2>Jefe de Estudios:</h2>
                <p>Nombre: <xsl:value-of select="/ite/jefe_estudios/nombre" /></p>
                <p>Despacho: <xsl:value-of select="/ite/jefe_estudios/despacho" /></p>

                <h2>Ciclos:</h2>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Grado</th>
                        <th>Año de decreto del título</th>
                    </tr>
                    <xsl:for-each select="/ite/ciclos/ciclo">
                        <tr>
                            <td>
                                <xsl:value-of select="@id" />
                            </td>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>
                            <td>
                                <xsl:value-of select="grado" />
                            </td>
                            <td>
                                <xsl:value-of select="decretoTitulo/@año" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Formulario de contacto:</h2>
                <form>
                    <fieldset>
                        <legend>Formulario de contacto</legend>
                        <label>Nombre </label>
                        <input id="nombre" type="texto" name="nombre" />
                        <br />
                        <br />
                        <label>Apellidos </label>
                        <input id="apellidos" type="texto" name="apellidos" />
                        <br />
                        <br />
                        <label>Email </label>
                        <input id="mail" type="texto" name="mail" />
                        <br />
                        <br />
                        <label>TLF: </label>
                        <input id="telefono" type="texto" name="telefono" />
                        <br />
                        <h4>Comentarios</h4>
                        <textarea name="comentarios"></textarea>
                        <br />
                        <br />
                        <input type="submit" value="Enviar datos" />
                    </fieldset>
                </form>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>