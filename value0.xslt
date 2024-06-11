<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>
    
    <!-- Define a variable to hold the value -->
    <xsl:variable name="var_name" select="root/value"/>
    
    <xsl:template match="/">
        <results>
            <!-- Test if the variable is greater than 0.0 -->
            <xsl:if test="number($var_name) > 0.0">
                <result>The variable is greater than 0.0</result>
            </xsl:if>
            
            <!-- Test if the variable is equal to 0.0 -->
            <xsl:if test="number($var_name) = 0.0">
                <result>The variable is equal to 0.0</result>
            </xsl:if>
            
            <!-- Test if the variable is less than 0.0 -->
            <xsl:if test="number($var_name) &lt; 0.0">
                <result>The variable is less than 0.0</result>
            </xsl:if>
        </results>
    </xsl:template>
</xsl:stylesheet>
