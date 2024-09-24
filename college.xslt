<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ns="http://www.test.com">
	<xsl:template match="/">
		<html>
			<body>
				<h1 align="center">Teacher List</h1>
				<table border="1" cellspacing="0" align="center">
					<tr>
						<th>Name</th>
						<th>Subject</th>
					</tr>
					<xsl:for-each select="ns:college/ns:teacher">
		
						<tr>
							<td>
								<xsl:value-of select="ns:name"/>
							</td>
							<td>
								<xsl:value-of select="ns:subject"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<h1 align="center">Student List</h1>
				<table border="1" cellspacing="0" align="center">
					<tr>
						<th> Roll Number</th>
						<th>Name</th>
						<th>Subject</th>
						<th>Marks</th>
						<th>Result</th>
					</tr>
					<xsl:for-each select="ns:college/ns:student">
						<tr>
							<td>
								<xsl:value-of select="ns:rollno"/>
							</td>
							<td>
								<xsl:value-of select="ns:name"/>
							</td>
							<td>
								<xsl:value-of select="ns:subject"/>
							</td>
							<td>
								<xsl:value-of select="ns:marks"/>
							</td>
							<xsl:choose>
								<xsl:when test="ns:marks &gt; 44">
									<td style="color:green">Pass</td>
								</xsl:when>
								<xsl:otherwise>
									<td style="color:red">Fail</td>
								</xsl:otherwise>
							</xsl:choose>
						</tr>
					
					</xsl:for-each>
				</table>
				<h1 align="center">Student pass List</h1>
				<table border="1" cellspacing="0" align="center">
					<tr>
						<th> Roll Number</th>
						<th>Name</th>
						<th>Subject</th>
						<th>Marks</th>
						<th>Result</th>
					</tr>
					<xsl:for-each select="ns:college/ns:student">
					<xsl:if test="ns:marks>35">
						<tr>
							<td>
								<xsl:value-of select="ns:rollno"/>
							</td>
							<td>
								<xsl:value-of select="ns:name"/>
							</td>
							<td>
								<xsl:value-of select="ns:subject"/>
							</td>
							<td>
								<xsl:value-of select="ns:marks"/>
							</td>
							<xsl:choose>
								<xsl:when test="ns:marks &gt; 44">
									<td style="color:green">Pass</td>
								</xsl:when>
								<xsl:otherwise>
									<td style="color:red">Fail</td>
								</xsl:otherwise>
							</xsl:choose>

						</tr>
					
					</xsl:if>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
