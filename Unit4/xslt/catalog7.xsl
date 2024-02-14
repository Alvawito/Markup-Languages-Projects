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
                                <xsl:value-of select="artist/@country"/>
                            </td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="year &gt; '1959' and year &lt; '1970'">
                                    60's
                                    </xsl:when>
                                    <xsl:when test="year &gt; '1969' and year &lt; '1980'">
                                    70's
                                    </xsl:when>
                                    <xsl:when test="year &gt; '1979' and year &lt; '1990'">
                                    80's
                                    </xsl:when>
                                </xsl:choose>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>