<?xml version="1.0" encoding="ISO-8859-1"?>

<!-- ======================================================== -->
<!-- File    : REMUS_conflict.xsl                             -->
<!-- Content : REM XSLT for subjects at US - conflict         -->
<!-- Author  : Amador Dur�n Toro                              -->
<!-- Date    : 2020/10/18                                     -->
<!-- Version : 3.0                                            -->
<!-- ======================================================== -->

<!-- ======================================================== -->
<!-- exclude-result-prefixes="rem" must be set in all files   -->
<!-- to avoid xmlsn:rem="..." to appear in HTML tags.         -->
<!-- ======================================================== -->

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rem="http://rem.lsi.us.es"
    exclude-result-prefixes="rem"
>
<!-- ============================================= -->
<!-- rem:conflict template                     -->
<!-- ============================================= -->

<xsl:template match="rem:conflict">
    <div id="{@oid}">
        <table class="conflict remus_table">

            <xsl:call-template name="generate_expanded_header"/>

            <xsl:call-template name="generate_simple_row">
                <xsl:with-param name="label"   select="$rem:lang_directly_affected_objects"/>
                <xsl:with-param name="content" select="rem:directlyAffects/@affected"/>
            </xsl:call-template>

            <xsl:call-template name="generate_simple_row">
                <xsl:with-param name="label"   select="$rem:lang_indirectly_affected_objects"/>
                <xsl:with-param name="content" select="rem:indirectlyAffects/@affected"/>
            </xsl:call-template>

            <xsl:call-template name="generate_markdown_row">
                <xsl:with-param name="label"   select="$rem:lang_description"/>
                <xsl:with-param name="content" select="rem:description"/>
                <xsl:with-param name="mode"    select="'paragraph'"/>
            </xsl:call-template>

            <xsl:call-template name="generate_markdown_row">
                <xsl:with-param name="label"   select="$rem:lang_possible_solution"/>
                <xsl:with-param name="content" select="rem:solution"/>
                <xsl:with-param name="mode"    select="'paragraph'"/>
            </xsl:call-template>

            <xsl:call-template name="generate_simple_row">
                <xsl:with-param name="label"   select="$rem:lang_alternative"/>
                <xsl:with-param name="content" select="rem:alternative/rem:name"/>
            </xsl:call-template>

            <xsl:call-template name="generate_priority_rows"/>
            <xsl:call-template name="generate_comments_row"/>

        </table>
    </div>
</xsl:template>

</xsl:stylesheet>
