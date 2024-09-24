<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ns="http://www.something.com.np">
    <xsl:output method="html" />
    <xsl:template match="/ns:college/ns:student">
        <html>
            <body>
                <h1>Student Details</h1>
                <table border="2">
                    <tr>
                        <th>Roll No</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Age</th>
                        <th>District</th>
                        <th>Gender</th>
                        <th>Address</th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="ns:rollNo" />
                        </td>
                        <td>
                            <xsl:value-of select="ns:firstName" />
                        </td>
                        <td>
                            <xsl:value-of select="ns:lastName" />
                        </td>
                        <td>
                            <xsl:value-of select="ns:age" />
                        </td>
                        <td>
                            <xsl:value-of select="ns:district" />
                        </td>
                        <td>
                            <xsl:value-of select="ns:gender" />
                        </td>
                        <td>
                            <xsl:value-of select="ns:address" />
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>