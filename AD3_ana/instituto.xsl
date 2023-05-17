<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
        <html>
             <style>
                h1{
                color:white;
                background-color: rgb(118, 97, 200);
                padding-left: 2%; 
                }
                h2{
                color:white;
                background-color: rgb(118, 97, 200 );
                padding-left: 2%; 
                }
                table {
                border: purple 5px solid;
                }
                th, td {
                width: 25%;
                text-align: center;
                vertical-align: top;
                border: 1px solid #000;
                border-collapse: collapse;
                padding: 0.3em;
                }
                caption {
                padding: 0.3em;
                }
                .padding1 {
               border: 1px solid rgb(0, 0, 0);
               background-color: rgb(181, 171, 184);
               padding: 10px;
               margin-bottom: 5px;
                }
            </style>
            <head>
                <title>Edix</title>
            </head>
            <body>
                <h1>Edix</h1>
                <h3><a href="https://www.edix.com/es/comunidad/deeptech2023/">Contacta </a>con nosotros mediante el formulario.</h3>
                O si lo prefieres nos puedes llamar al teléfono: 
                <xsl:value-of select="ite/telefono"/>
                <h2>Ciclos formativos</h2>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Descripcion</th>
                        <th>Grado</th>
                    </tr>
                     <tr>
                        <td><xsl:value-of select="ite/ciclos/ciclo[1]/@id"/></td>
                        <td><xsl:value-of select="ite/ciclos/ciclo[1]/nombre"/></td>
                        <td><xsl:value-of select="ite/ciclos/ciclo[1]/grado"/></td>
                    </tr>
                     <tr>
                        <td><xsl:value-of select="ite/ciclos/ciclo[2]/@id"/></td>
                        <td><xsl:value-of select="ite/ciclos/ciclo[2]/nombre"/></td>
                        <td><xsl:value-of select="ite/ciclos/ciclo[2]/grado"/></td>
                    </tr>
                     <tr>
                        <td><xsl:value-of select="ite/ciclos/ciclo[3]/@id"/></td>
                        <td><xsl:value-of select="ite//ciclos/ciclo[2]/nombre"/></td>
                        <td><xsl:value-of select="ite/ciclos/ciclo[3]/grado"/></td>
                    </tr>
                </table>    
                <br/>
                <h3>Formación</h3>
                <table>
                    <tr>
                        <th><a href="https://www.edix.com/es/cursos/">Cursos</a></th>
                        <th><a href="https://www.edix.com/es/cursos/">Bootcamps</a></th>
                    </tr>
                </table>
                <h2>Profesorado</h2> 
                <ol>
                    <li><xsl:value-of select="ite/profesores/profesor[1]/nombre"/></li>
                    <li><xsl:value-of select="ite/profesores/profesor[2]/nombre"/></li>
                    <li><xsl:value-of select="ite/profesores/profesor[3]/nombre"/></li>
                    <li><xsl:value-of select="ite/profesores/profesor[4]/nombre"/></li>
                </ol>
                <br/>
                <h2>Dirección estudiantil</h2>
                <dl>
                    <dt>Director</dt>
                        <dd>
                            <ul>
                                <li>Nombre: <xsl:value-of select="ite/director/nombre"/></li>
                                <li>Despacho: <xsl:value-of select="ite/director/despacho"/></li>
                            </ul>
                        </dd>
                </dl>
               <dl>
                    <dt>Jefe de estudios</dt>
                        <dd>
                            <ul>
                                <li>Nombre: <xsl:value-of select="ite/jefe_estudios/nombre"/></li>
                                <li>Despacho: <xsl:value-of select="ite/director/despacho"/></li>
                            </ul>
                        </dd>
                </dl>
                <br/>
                <h1>Matrícula</h1>
                <div class="padding1">
                <form action="procesarPeticion.jsp" method="get">
                    <fieldset>
                        <legend><h3>Datos personales:</h3></legend>
                        <br/>
                        <label for="sexo"></label>
                        <input type="radio" name="sexo" value="S"/>Hombre
                        <input type="radio" name="sexo" value="C"/>Mujer	
                        <input type="radio" name="sexo" value="V"/>Otros	
                        <br/>
                        <br/>
                        <label for="nombre">Nombre: </label>
                        <input id="nombre" type="text" name="nombre"/>
                        <br/>
                        <label for="apellidos">Apellidos: </label>
                        <input id="apellidos" type="text" name="apellidos"/>
                        <br/>
                        <br/>
                        <label for="date">Fecha de nacimiento</label>
                        <input type="date"/>
                        <br/>
                        <br/>
                        <label for="dni">Dni: </label>
                        <input id="dni" type="text" name="dni" />
                        <br/>
                        <br/>
                        <label for="direccion">Dirección: </label>
                        <input id="direccion" type="text" name="direccion" />
                        <br/>
                        <br/>
                        <label for="email">Email: </label>
                        <input id="email" type="email" name="email"/>
                        <label for="pass">Password: </label>
                        <input id="pass" type="password" name="pass"/>
                        <br/>
                        <input id="identificador" type="hidden" name="identificador" value="123"/>
                        <br/>
                        <label for="nivel_estudios">Nivel de estudios:</label>
                        <br />	
                        <input type="checkbox" name="nivel_estudios" value="S" />Educación Secundaria Obligatoria<br />	
                        <input type="checkbox" name="nivel_estudios" value="B" />Bachillerato<br />	
                        <input type="checkbox" name="nivel_estudios" value="P" />Formación profesional<br />	
                        <input type="checkbox" name="nivel_estudios" value="U" />Ensañanzas universitarias<br />	
                        <br/>
                        <label for="ciclos_formativos">Seleccione el ciclo en el que desea inscribirse: </label>
                        <select name="dia_nacimiento">
                            <option value="ASI">ASIR</option>
                            <option value="DAW">DAW</option>
                            <option value="DAM">DAM</option>
                        </select>
                        <br/>
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
                        <input type="submit" value="Enviar formulario" />
                        <input type="reset" value="Borrar datos" />
                    </fieldset>
                </form>
                </div>
            </body>
        </html>
    </xsl:template>	
</xsl:stylesheet>