<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    >

<xsl:include href="../common.xsl"/>

<xsl:output method="xml"/>

<xsl:template match="item"/>

<xsl:template match="item[position() mod 2 = 0]"/>

<xsl:template match="item[position() mod 3 = 0]"/>

<xsl:template match="item[position() mod 4 = 0]"/>

<xsl:template match="item[position() mod 5 = 0]"/>

<xsl:template match="item[position() mod 6 = 0]"/>

<xsl:template match="item[position() mod 7 = 0]"/>

<xsl:template match="item[position() mod 8 = 0]"/>

<xsl:template match="item[position() mod 9 = 0]"/>

</xsl:stylesheet>

