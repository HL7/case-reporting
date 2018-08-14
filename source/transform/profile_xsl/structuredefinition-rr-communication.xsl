<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns="http://www.w3.org/1999/xhtml"
               xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
               xmlns:fhir="http://hl7.org/fhir"
               xmlns:xhtml="http://www.w3.org/1999/xhtml"
               version="1.0"
               exclude-result-prefixes="xhtml fhir">
   <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
   <xsl:template match="fhir:rr-communication" mode="generate-narrative">
      <xsl:variable name="DisplayElements" select="document('display_elements.xml')"/>
   </xsl:template>
</xsl:transform>
