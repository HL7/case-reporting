<?xml version="1.0" encoding="UTF-8"?>
<!--
This is a simple xlst to extract the CSTE Data elements out of the EICR CCDA instancesUsing a series of xpaths.  

The repeating elements have not all be handled properly.  ( the concat function will break if there is a repeat) and some element will not produce a string on a single line since the context is not on the repeating element
EH 20170531
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:t="urn:hl7-org:v3" xmlns:sdtc="urn:hl7-org:sdtc">
	<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
	<xsl:template match="/">
		<xsl:value-of select="concat(t:ClinicalDocument/t:effectiveTime/@value,'&#xA;')"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:for-each select="t:ClinicalDocument/t:componentOf/t:encompassingEncounter/t:responsibleParty/t:assignedEntity">
			<xsl:value-of select="concat(for $i in t:id return string-join(($i/@root, $i/@extension),':'),'&#xA;')"/>
			<xsl:value-of select="concat(string-join(t:assignedPerson/t:name/*,' '),'&#xA;')"/>
			<xsl:value-of select="concat(t:telecom/@value[starts-with(.,'tel:')],'&#xA;')"/>
			<xsl:value-of select="concat(t:telecom/@value[starts-with(.,'fax:')],'&#xA;')"/>
			<xsl:value-of select="concat(t:telecom/@value[starts-with(.,'mailto:')],'&#xA;')"/>
			<xsl:value-of select="concat(for $i in t:addr return string-join( $i/*,' '),'&#xA;')"/>
		</xsl:for-each>
		<xsl:text>&#xA;</xsl:text>
		<xsl:for-each select="t:ClinicalDocument/t:componentOf/t:encompassingEncounter/t:location/t:healthCareFacility">
			<xsl:value-of select="concat(for $i in t:id return string-join(($i/@root, $i/@extension),':'),'&#xA;')"/>
			<xsl:value-of select="concat(t:serviceProviderOrganization/t:name,'&#xA;')"/>
			<xsl:value-of select="concat(t:code/@code,'&#xA;')"/>
			<xsl:value-of select="concat(t:serviceProviderOrganization/t:telecom/@value[starts-with(.,'tel:')],'&#xA;')"/>
			<xsl:value-of select="concat(t:serviceProviderOrganization/t:telecom/@value[starts-with(.,'fax:')],'&#xA;')"/>
			<xsl:value-of select="concat(for $i in t:addr return string-join($i/*,' '),'&#xA;')"/>
		</xsl:for-each>
		<xsl:text>&#xA;</xsl:text>
		<xsl:for-each select="t:ClinicalDocument/t:recordTarget/t:patientRole">
			<xsl:value-of select="for $i in t:id return string-join(($i/@root, $i/@extension),':')"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:value-of select="concat( string-join(t:patient/t:name/*,' ') ,'&#xA;')"/>
			<xsl:value-of select=" t:telecom/@value[starts-with(.,'tel:')] "/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:value-of select="concat( t:telecom/@value[starts-with(.,'mailto:')] ,'&#xA;')"/>
			<xsl:value-of select="concat( for $i in t:addr return string-join($i/*,' ') ,'&#xA;')"/>
			<xsl:value-of select="concat( t:patient/t:birthTime ,'&#xA;')"/>
			<xsl:value-of select="concat( t:patient/t:administrativeGenderCode/@code ,'&#xA;')"/>
			<xsl:value-of select="concat( //t:value[../t:code/@code='76689-9']/@code ,'&#xA;')"/>
			<xsl:value-of select="concat( t:patient/t:raceCode/@code ,'&#xA;')"/>
			<xsl:value-of select="concat( t:patient/t:ethnicityCode/@code ,'&#xA;')"/>
			<xsl:value-of select="concat( t:patient/t:languageCommunication[t:preferenceInd/@value='true']/t:languageCode/@code ,'&#xA;')"/>
			<xsl:value-of select="concat( t:patient/sdtc:deceasedTime ,'&#xA;')"/>
		</xsl:for-each>
		<xsl:for-each select="t:ClinicalDocument/t:recordTarget/t:patientRole/t:patient/t:guardian">
			<xsl:value-of select="concat(string-join(t:guardianPerson/t:name/*,' '),'&#xA;')"/>
			<xsl:value-of select=" t:telecom/@value[starts-with(.,'tel:')]"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:value-of select=" t:telecom/@value[starts-with(.,'mailto:')]"/>
			<xsl:text>&#xA;</xsl:text>
		</xsl:for-each>
		<xsl:value-of select="//t:value[../t:code/@code='364703007']"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:value-of select="
			if (//observation[value/@code='77386006'])
				then (if (//observation[value/@code='77386006']/@negationInd = 'true')
					 then 'not pregnant'
					 else ( if  (//observation[value/@code='77386006']/@nullFlavor = 'UNK')
							   then 'unknown'
							   else 'pregnant'
							 )
				     )
				else '' 
				"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:for-each select="t:ClinicalDocument/t:component/t:structuredBody/t:component/t:section/t:entry/t:act[t:code/@code='420008001']">
			<xsl:value-of select="concat( string-join(t:effectiveTime/*/ @*, '-' ),'&#xA;')"/>
			<xsl:value-of select="concat( t:text,'&#xA;')"/>
			<xsl:value-of select="concat( t:participant/t:participantRole/t:code/@code,'&#xA;')"/>
			<xsl:value-of select="concat( string-join(t:participant/t:participantRole/t:addr/*, ' '),'&#xA;')"/>
		</xsl:for-each>
		<xsl:text>&#xA;</xsl:text>
		<xsl:for-each select="t:ClinicalDocument/t:componentOf/t:encompassingEncounter">
			<xsl:value-of select="concat( t:effectiveTime/t:low/@value,'&#xA;')"/>
			<xsl:value-of select="concat( t:code/@code,'&#xA;')"/>
			<xsl:value-of select="concat( t:effectiveTime/t:low/@value,'&#xA;')"/>
			<xsl:value-of select="concat( t:effectiveTime/t:high/@value,'&#xA;')"/>
		</xsl:for-each>
		<xsl:value-of select="string-join(//t:text[../t:code/@code='10164-2']/*, '')"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:value-of select="string-join(//t:text[../t:code/@code='29299-5']/*, '')"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:for-each select="t:ClinicalDocument/t:component/t:structuredBody/t:component/t:section[t:code/@code='11450-4']/t:entry/t:act">
			<xsl:value-of select="for $i in t:entryRelationship/t:observation[t:templateId/@root='2.16.840.1.113883.10.20.22.4.4'] return string-join(($i/t:effectiveTime/t:low/@value, '\n'),',')"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:value-of select="for $i in t:entryRelationship/t:observation[t:templateId/@root='2.16.840.1.113883.10.20.22.4.4'] return string-join(($i/t:value/@*, '\n'),',')"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:value-of select="for $i in t:entryRelationship/t:observation[t:templateId/@root='2.16.840.1.113883.10.20.22.4.4' and t:code/@code = '29308-4'] return string-join(($i/t:value/@*, '  '),' ')"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:value-of select="t:effectiveTime/t:low/@value"/>
			<xsl:text>&#xA;</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="t:ClinicalDocument/t:component/t:structuredBody/t:component/t:section[t:code/@code='18776-5']">
			<xsl:value-of select="for $i in t:entry return string-join(($i/t:observation[t:templateId/@root='2.16.840.1.113883.10.20.15.2.3.4']/t:code/@*,','),'\n')"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:value-of select="for $i in t:entry return string-join(($i/t:observation[t:templateId/@root='2.16.840.1.113883.10.20.15.2.3.4']/t:id/@root,','),'\n')"/>
			<xsl:text>&#xA;</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="t:ClinicalDocument/t:component/t:structuredBody/t:component/t:section[t:code/@code='30954-2']">
			<xsl:text>Lab Orders: </xsl:text>
			<xsl:value-of select="for $i in t:entry/t:organizer/t:component return string-join(($i/t:observation/t:code/@*,','),'\n')"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>Lab Results: </xsl:text>
			<xsl:value-of select="for $i in t:entry/t:organizer/t:component return string-join(($i/t:observation/t:value/@*,','),'\n')"/>
			<xsl:text>&#xA;</xsl:text>
			<xsl:text>Filler Order Numbers: </xsl:text>
			<xsl:value-of select="for $i in t:entry/t:organizer return string-join(($i/t:id/@root, $i/t:id/t:component/t:observation/t:id/@root),'\n')"/>
			<xsl:text>&#xA;</xsl:text>
		</xsl:for-each>
		<xsl:value-of select="
	for $i in t:ClinicalDocument/t:component/t:structuredBody/t:component/t:section[t:code/@code='29549-3']/t:entry return string-join(($i/t:substanceAdministration/t:consumable/t:manufacturedProduct/t:manufacturedMaterial/t:code/@*, '\n'), ',')
		"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>hospital unit</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:value-of select="for $i in t:ClinicalDocument/t:component/t:structuredBody/t:component/t:section[t:code/@code='11369-6']/t:text return string-join($i,' ')"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:text>Trigger codes</xsl:text>
		<xsl:text>&#xA;</xsl:text>
		<xsl:value-of select="//t:observation[t:templateId/@root='2.16.840.1.113883.10.20.15.2.3.4']/t:code/@code"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:value-of select="//t:observation[t:templateId/@root='2.16.840.1.113883.10.20.15.2.3.2']/t:code/@code"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:value-of select="//t:observation[t:templateId/@root='2.16.840.1.113883.10.20.15.2.3.2']/t:value/@code"/>
		<xsl:text>&#xA;</xsl:text>
		<xsl:value-of select="//t:observation[t:templateId/@root='2.16.840.1.113883.10.20.15.2.3.3']/t:value/@code"/>
		<xsl:text>&#xA;</xsl:text>
	</xsl:template>
</xsl:stylesheet>
