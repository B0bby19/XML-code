<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ns="http://www.test.com">
	<xsl:template match="/">
		<html>
			<body>
				<h1>Employee List</h1>
				<table border="1" cellspacing="0">
					<tr>
						<th style="background-color:blue">FirstName</th>
						<th>Email</th>
					</tr>
					<xsl:for-each select="ns:college/ns:employee">
					<tr>
						<td>
							<xsl:value-of select="ns:firstname"/>
						</td>
						<td>
							<xsl:value-of select="ns:email"/>
						</td>
					</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
 
