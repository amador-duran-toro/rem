<?xml version="1.0" encoding="iso-8859-1"?>

<!-- ======================================================== -->
<!-- File    : REMUS_main.xsl                                 -->
<!-- Content : REM XSLT for subjects at US - main file        -->
<!-- Author  : Amador Dur�n Toro                              -->
<!-- Date    : 2020/04/12                                     -->
<!-- Version : 3.0                                            -->
<!-- ======================================================== -->

<!-- ======================================================== -->
<!-- This XSLT stylesheet is tested with MSXML 3 only.        -->
<!-- Preliminary tests with MSXML 6 do not work properly.     -->
<!--                                                          -->
<!-- exclude-result-prefixes="rem" must be set in all files   -->
<!-- to avoid xmlsn:rem="..." to appear in HTML tags.         -->
<!-- ======================================================== -->

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rem="http://rem.lsi.us.es"
    exclude-result-prefixes="rem"
>

<!-- ======================================================== -->
<!-- Output method                                            -->
<!-- ======================================================== -->
<!--
    method must be xml. If changed into html, a meta tag like this:

        <META http-equiv="Content-Type" content="text/html; charset=UTF-16">

    is automatically added.

    encoding must be iso-8859-1 because VC++6 does not work
    with UTF-8 (or at leat I do not know how to do it).
-->
<!-- ======================================================== -->

<xsl:output
    method="xml"
    indent="yes"
    encoding="iso-8859-1"
    omit-xml-declaration="yes"
/>

<!-- does it have any effect? -->
<xsl:strip-space elements="*"/>

<!-- ======================================================== -->
<!-- Includes                                                 -->
<!-- ======================================================== -->

<xsl:include href="REMUS_utilities.xsl"/>
<xsl:include href="REMUS_text.xsl"/>
<xsl:include href="REMUS_cover.xsl"/>
<xsl:include href="REMUS_document.xsl"/>
<xsl:include href="REMUS_section.xsl"/>
<xsl:include href="REMUS_paragraph.xsl"/>
<xsl:include href="REMUS_glossary_item.xsl"/>
<xsl:include href="REMUS_graphic_file.xsl"/>
<xsl:include href="REMUS_organization.xsl"/>
<xsl:include href="REMUS_stakeholder.xsl"/>
<xsl:include href="REMUS_meeting.xsl"/>
<xsl:include href="REMUS_objective.xsl"/>
<xsl:include href="REMUS_actor.xsl"/>
<xsl:include href="REMUS_information_requirement.xsl"/>
<xsl:include href="REMUS_constraint_requirement.xsl"/>
<xsl:include href="REMUS_use_case.xsl"/>
<xsl:include href="REMUS_functional_requirement.xsl"/>
<xsl:include href="REMUS_nonfunctional_requirement.xsl"/>
<xsl:include href="REMUS_traceability_matrix.xsl"/>
<xsl:include href="REMUS_object_type.xsl"/>
<xsl:include href="REMUS_value_type.xsl"/>
<xsl:include href="REMUS_association_type.xsl"/>
<xsl:include href="REMUS_conflict.xsl"/>
<!--
    <xsl:include href="REM_Simplified_SpecificationObject.xsl"/>

        <xsl:include href="REM_Simplified_C_Requirement.xsl"/>

            <xsl:include href="REM_ConstraintRequirement.xsl"/>
            <xsl:include href="REM_Simplified_UseCase.xsl"/>
            <xsl:include href="REM_FunctionalRequirement.xsl"/>
            <xsl:include href="REM_NonFunctionalRequirement.xsl"/>
        <xsl:include href="REM_TraceabilityMatrix.xsl"/>
        <xsl:include href="REM_D_Requirement.xsl"/>
            <xsl:include href="REM_ObjectType.xsl"/>
            <xsl:include href="REM_ValueType.xsl"/>
            <xsl:include href="REM_AssociationType.xsl"/>
                <xsl:include href="REM_Attribute.xsl"/>
                <xsl:include href="REM_Invariant.xsl"/>
                <xsl:include href="REM_Role.xsl"/>
            <xsl:include href="REM_SystemOperation.xsl"/>
                <xsl:include href="REM_OperationException.xsl"/>
        <xsl:include href="REM_Simplified_Conflict.xsl"/>
        <xsl:include href="REM_Defect.xsl"/>
            <xsl:include href="REM_Alternative.xsl"/>
        <xsl:include href="REM_ChangeRequest.xsl"/>
            <xsl:include href="REM_AffectedObjects.xsl"/>
-->
</xsl:stylesheet>