<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
        <html>
            <head>
                <title>Edix</title>
            </head>
            <style>

                h1{
                color:white;
                background-color: rgb(181, 171,184);
                padding-left: 2%; 
                }   

                h2{
                color:white;
                background-color: rgb(181, 171,184);
                padding-left: 2%; 
                }
                
            </style>
            <body>
                <h1>Edix</h1>
                <br/>
                <h3>Contacto</h3>
                <xsl:value-of select="telefono">
                <h2>Ciclos formativos</h2>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Descripcion</th>
                        <th>Grado</th>
                    </tr>
                     <tr>
                        <td><xsl:value-of select="ite/ciclo[1]@id"/></td>
                        <td><xsl:value-of select="ite/ciclo[2]@id"/></td>
                        <td><xsl:value-of select="ite/ciclo[3]@id"/></td>
                    </tr>
                     <tr>
                        <td><xsl:value-of select="ite/ciclo/ciclos[1]/nombre"/></td>
                        <td><xsl:value-of select="ite/ciclo/ciclos[2]/nombre"/></td>
                        <td><xsl:value-of select="ite/ciclo/ciclos[3]/nombre"/></td>
                    </tr>
                     <tr>
                        <td><xsl:value-of select="ite/ciclo/ciclos[1]/grado"/></td>
                        <td><xsl:value-of select="ite//ciclo/ciclos[2]/grado"/></td>
                        <td><xsl:value-of select="ite/ciclo/ciclos[3]/grado"/></td>
                    </tr>
                </table>    
                <br/>
                <h2>Profesorado</h2> 
                <ol>
                    <li><xsl:value-of select="ite/profesores/profesor@1/nombre"/></li>
                    <li><xsl:value-of select="ite/profesores/profesor@2/nombre"/></li>
                    <li><xsl:value-of select="ite/profesores/profesor@3/nombre"/></li>
                    <li><xsl:value-of select="ite/profesores/profesor@4/nombre"/></li>
                </ol>
                <br/>
                <h2>Dirección estudiantil</h2>
                <ol type="circle">
                    <li>Director</li>
                    <li><xsl:value-of select="ite/director/nombre"/></li>
                    <li><xsl:value-of select="ite/director/despacho"/></li>
                </ol>
                <ol type="circle">
                    <li>Jefe de estudios</li>
                    <li><xsl:value-of select="ite/jefe_estudios/nombre"/></li>
                    <li><xsl:value-of select="ite/director/despacho"/></li>
                </ol>
                <br/>
                <h1>Matrícula</h1>
                <form action="procesarPeticion.jsp" method="get">
                    <fieldset>
                        <legend>Registro matrícula</legend>
                
                        <label for="nombre">Nombre: </label>
                        <input id="nombre" type="text" name="nombre"/>
                        <br/>
                        <label for="sexo"></label>
                        <input type="radio" name="sexo" value="S"/>Hombre
                        <input type="radio" name="sexo" value="C"/>Mujer	
                        <input type="radio" name="sexo" value="V"checked/>Otros	
                        <br />
                        <label for="date">Fecha de nacimiento</label>
                        <input type="date">
                        <br/>
                        <label for="pass">Password: </label>
                        <input id="pass" type="password" name="pass" />
                        <br/>
                        <input id="identificador" type="hidden" name="identificador" value="123"/>
                        <br/>
                        <label for="nivel_estudios">Nivel de </label>
                        <br />	
                        <input type="checkbox" name="nivel_estudios" value="S" />Educación Secundaria Obligatoria<br />	
                        <input type="checkbox" name="nivel_estudios" value="B" />Bachillerato<br />	
                        <input type="checkbox" name="nivel_estudios" value="P" checked/>Formación profesional<br />	
                        <input type="checkbox" name="nivel_estudios" value="U" />Ensañanzas universitarias<br />	
                        <br/>
                        <label for="ciclos_formativos">Seleccione el ciclo en el que desea inscribirse: </label>
                        <select name="dia_nacimiento">
                            <option value="ASI">ASIR</option>
                            <option value="DAW">DAW</option>
                            <option value="DAM" selected>DAM</option>
                        </select>
                        <br />
                        <br/>
                        <label for="observaciones">Observaciones: </label>
                        <br />	
                        <textarea style="resize: none;" rows="5" cols="80" name="observaciones"></textarea>
                        <br/>
                        <br/>
                        <label for="terminos">¿Acepta los terminos de uso? </label>
                        <br/>	
                        He leido y acepto los terminos de uso <input type="checkbox" name="terminos" value="Y" />
                        <br/>	
                        <br/>	
                        <input type="submit" value="Enviar datos" />
                        <input type="reset" value="Limpiar formulario" />
                    </fieldset>
                </form>
            </body>
        </html>
    </xsl:template>	
</xsl:stylesheet>