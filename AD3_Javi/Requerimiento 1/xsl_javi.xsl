<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <style>
    table {
        
        border-collapse: collapse;
    }
    thead{
        background-color: lightblue;
        color: white;
    }
    
    th, td {
        border: 5px solid black;
        padding: 8px;
        text-align: left;
    }
    h3{
        color: blue;
        text-decoration: underline;
    }
    #sub{
         color: red;
        text-decoration: underline;
    }

</style>

		    <head>
			    <title>Proeduca</title>
		    </head>
		    <body><br/><br/>
                <table>
                    <thead>
                        <tr>
                            <th>Cargo</th>
                            <th>Nombre</th>
                            <th>Despacho</th>
                            <th>Id</th>
                        </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>Director</th>
                        <th><xsl:value-of select="ite/director/nombre"/></th>
                        <th><xsl:value-of select="ite/director/despacho"/></th>
                        <th></th>
                    </tr>
                    <tr>
                        <th>Jefe de estudios</th>
                        <th><xsl:value-of select="ite/jefe_estudios/nombre"/></th>
                        <th><xsl:value-of select="ite/jefe_estudios/despacho"/></th>
                        <th></th>
                    </tr>
                    <tr>
                        <th>Profesor</th>
                        <th><xsl:value-of select="ite/profesores/profesor[1]/nombre"/></th>
                        <th></th>
                        <th><xsl:value-of select="ite/profesores/profesor[1]/id"/></th>
                    </tr>
                    <tr>
                        <th>Profesor</th>
                        <th><xsl:value-of select="ite/profesores/profesor[2]/nombre"/></th>
                        <th></th>
                        <th><xsl:value-of select="ite/profesores/profesor[2]/id"/></th>
                    </tr>
                    <tr>
                        <th>Profesor</th>
                        <th><xsl:value-of select="ite/profesores/profesor[3]/nombre"/></th>
                        <th></th>
                        <th><xsl:value-of select="ite/profesores/profesor[3]/id"/></th>
                    </tr>
                    <tr>
                        <th>Profesor</th>
                        <th><xsl:value-of select="ite/profesores/profesor[4]/nombre"/></th>
                        <th></th>
                        <th><xsl:value-of select="ite/profesores/profesor[4]/id"/></th>
                    </tr></tbody>
                </table><br/><br/>
                <table>
                    <thead><tr>
                        <th>Ciclo</th>
                        <th>Nombre</th>
                        <th>Grado</th>
                        <th>Ano</th>
                        
                    </tr></thead>
                    <tbody><tr>
                        <th><xsl:value-of select="ite/ciclos/ciclo[1]/@id"/></th>
                        <th><xsl:value-of select="ite/ciclos/ciclo[1]/nombre"/></th>
                        <th><xsl:value-of select="ite/ciclos/ciclo[1]/grado"/></th>
                        <th><xsl:value-of select="ite/ciclos/ciclo[1]/decretoTitulo/@año"/></th>
                    </tr>
                    <tr>
                        <th><xsl:value-of select="ite/ciclos/ciclo[2]/@id"/></th>
                        <th><xsl:value-of select="ite/ciclos/ciclo[2]/nombre"/></th>
                        <th><xsl:value-of select="ite/ciclos/ciclo[2]/grado"/></th>
                        <th><xsl:value-of select="ite/ciclos/ciclo[2]/decretoTitulo/@año"/></th>
                    </tr>
                    <tr>
                        <th><xsl:value-of select="ite/ciclos/ciclo[3]/@id"/></th>
                        <th><xsl:value-of select="ite/ciclos/ciclo[3]/nombre"/></th>
                        <th><xsl:value-of select="ite/ciclos/ciclo[3]/grado"/></th>
                        <th><xsl:value-of select="ite/ciclos/ciclo[3]/decretoTitulo/@año"/></th>
                    </tr></tbody>
                </table>
                <ul>
                    <li><h3>Nuetros cursos:</h3></li>
                    <li><xsl:value-of select="ite/ciclos/ciclo[1]/@id"/></li>
                    <li><xsl:value-of select="ite/ciclos/ciclo[2]/@id"/></li>
                    <li><xsl:value-of select="ite/ciclos/ciclo[3]/@id"/></li>
                </ul>
                <a href="{/ite/@web}"><xsl:value-of select="/ite/@web"/></a><br/>
                <a href="www.apuntate.com">Apuntate a nuestros cursos aqui</a><br/><br/>
                <form action="procesarPeticion.jsp" method="post">
                    <fieldset>
                        <legend>Formulario de contacto</legend>
                        <label for="Nombre">Nombre</label>
                        <input id="Nombre" type="texto" name="Nombre"/><br/>
                        <label for="Apellidos">Apellidos</label>
                        <input id="Apellidos" type="texto" name="Apellidos"/><br/>
                        <label for="Telefono">telefono</label>
                        <input id="Telefono" type="texto" name="Telefono"/><br/><br/>
                        <label id="sub" for="Estudios">Estudios :</label><br/>
                        <input type="radio" name="Estudios" value="1"/>ESO<br/>
                        <input type="radio" name="Estudios" value="2"/>Bachillerato<br/>
                        <input type="radio" name="Estudios" value="3"/>FPI<br/>
                        <input type="radio" name="Estudios" value="4"/>FPII<br/><br/>
                        <label id="sub" for="Intereses">Intereses :</label><br/>
                        <input type="checkbox" name="Intereses" value="1"/>Programacion<br/>
                        <input type="checkbox" name="Intereses" value="2"/>BBDD<br/>
                        <input type="checkbox" name="Intereses" value="3"/>FOL<br/>
                        <input type="checkbox" name="Intereses" value="4"/>Entornos de desarrollo<br/>
                        <input type="checkbox" name="Intereses" value="5"/>Lenguajes de Marcas<br/>
                        <input type="checkbox" name="Intereses" value="6"/>Sistemas<br/><br/>
                        <h4>Comentarios :</h4>
                        <textarea style="resize: none;" rows="5" cols="60" name="Observaciones"></textarea>
                        <br/><br/>
                        <input type="submit" value="Enviar datos"/>
                        <input type="reset" value="Limpiar formulario"/>
                    </fieldset>
                </form>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>