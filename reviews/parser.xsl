<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <reviews>
            <xsl:for-each select="//div[@class='_5pcr userContentWrapper']">
                <review>
                    <xsl:for-each select=".//img[@role='img']">
                        <image><xsl:value-of select="@src"/></image>
                        <name><xsl:value-of select="@aria-label"/></name>
                    </xsl:for-each>
                    <comment>
                        <xsl:copy-of select=".//p/text()" />
                    </comment>
                </review>
            </xsl:for-each>
        </reviews>
    </xsl:template>

</xsl:stylesheet>
