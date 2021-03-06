<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    >

<xsl:output method="xml"/>

<xsl:template match="test">
    <results>
        <xsl:apply-templates select="items"/>
    </results>
</xsl:template>

<xsl:template match="items">
    <xsl:apply-templates select="item"/>
</xsl:template>

<xsl:template match="item">
    <xsl:apply-templates select="text | label"/>
</xsl:template>

<xsl:template match="text"/>
<xsl:template match="label"/>

</xsl:stylesheet>

