<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="cd">
        Titulo: <xsl:value-of select="title"/>
        Artista: <xsl:value-of select="artist"/>
    </xsl:template>
</xsl:stylesheet>