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
    <xsl:apply-templates select="item/text"/>
</xsl:template>

<xsl:template match="text">
    <xsl:apply-templates select="../label"/>
</xsl:template>

<xsl:template match="label"/>

</xsl:stylesheet>

