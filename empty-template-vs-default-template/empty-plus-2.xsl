<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    >

<xsl:output method="xml"/>

<xsl:template match="test">
    <results>
        <xsl:apply-templates select="items/item/label"/>
    </results>
</xsl:template>

<xsl:template match="label[bla-bla-bla]"/>

</xsl:stylesheet>

