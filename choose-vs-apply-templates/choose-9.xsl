<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    >

<xsl:include href="../common.xsl"/>

<xsl:output method="xml"/>

<xsl:template match="item">
    <xsl:choose>
        <xsl:when test="position() mod 9 = 0">
            <li class="mod9">
                <xsl:value-of select="text"/>
            </li>
        </xsl:when>
        <xsl:when test="position() mod 8 = 0">
            <li class="mod8">
                <xsl:value-of select="text"/>
            </li>
        </xsl:when>
        <xsl:when test="position() mod 7 = 0">
            <li class="mod7">
                <xsl:value-of select="text"/>
            </li>
        </xsl:when>
        <xsl:when test="position() mod 6 = 0">
            <li class="mod6">
                <xsl:value-of select="text"/>
            </li>
        </xsl:when>
        <xsl:when test="position() mod 5 = 0">
            <li class="mod5">
                <xsl:value-of select="text"/>
            </li>
        </xsl:when>
        <xsl:when test="position() mod 4 = 0">
            <li class="mod4">
                <xsl:value-of select="text"/>
            </li>
        </xsl:when>
        <xsl:when test="position() mod 3 = 0">
            <li class="mod3">
                <xsl:value-of select="text"/>
            </li>
        </xsl:when>
        <xsl:when test="position() mod 2 = 0">
            <li class="mod2">
                <xsl:value-of select="text"/>
            </li>
        </xsl:when>
        <xsl:otherwise>
            <li class="mod1">
                <xsl:value-of select="text"/>
            </li>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

</xsl:stylesheet>

