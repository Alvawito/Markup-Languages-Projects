<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
    <html>
        <body>
            <h1>CDS</h1>
            <table border="2">
                <tr bgcolor="#9acd32">
                    <th style="text-align:center">Title</th>
                    <th style="text-align:center">Artist</th>
                    <th style="text-align:center">Country</th>
                    <th style="text-align:center">Year</th>
                </tr>
                <xsl:for-each select="catalog/cd">
                    <tr>
                        <td>
                            <xsl:value-of select="title"/>
                        </td>
                        <td>
                            <xsl:value-of select="artist"/>
                        </td>
                        <td>
                            <xsl:value-of select="country"/>
                        </td>
                        <td>
                            <xsl:value-of select="year"/>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>