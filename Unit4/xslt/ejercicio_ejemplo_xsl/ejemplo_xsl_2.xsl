<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="cd">
        Artista: <xsl:value-of select="title"/>
    </xsl:template>

    <xsl:template match="libreria">
        Titulo: <xsl:value-of select="direccion"/>
    </xsl:template>
</xsl:stylesheet>