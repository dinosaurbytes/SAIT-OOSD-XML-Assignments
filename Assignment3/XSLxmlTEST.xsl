<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<html>
			<head>
				<title>Assignment 3</title>
			</head>
			<body>
				<!-- Customer information Section -->
				<strong>Customer Info</strong><br/>
				Name: <xsl:value-of select="telephoneBill/customer/name"/>
				<br/>
				Address: <xsl:value-of select="telephoneBill/customer/address"/>
				<br/>
				City: <xsl:value-of select="telephoneBill/customer/city"/>
				<br/>
				Province: <xsl:value-of select="telephoneBill/customer/province"/>
				<br/>
				<br/>
				
				<!--Table Section -->
				<table border="1">
					<tbody>
						<tr>
							<th>Call Number</th>
							<th>Date</th>
							<th>Duration in Minutes</th>
							<th>Charge</th>
						</tr>
						<xsl:for-each select="telephoneBill/call">
							<tr>
								<xsl:if test="position() mod 2=0">
									<xsl:attribute name="bgcolor">#EAEAEA</xsl:attribute>
								</xsl:if>
								<td>
									<xsl:value-of select="@number"/>
								</td>
								<td>
									<xsl:value-of select="@date"/>
								</td>
								<td>
									<xsl:value-of select="@durationInMinutes"/>
								</td>
								<td>
									<xsl:value-of select="@charge"/>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
