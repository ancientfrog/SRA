﻿<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cw="http://schemas.microsoft.com/sharepoint/soap/" xmlns:rs="urn:schemas-microsoft-com:rowset" xmlns:z="#RowsetSchema" exclude-result-prefixes="xs cw rs z">
	<xsl:template match="/">
		<OperationDefinitionCollection>
			<Items>
			<xsl:for-each select="//Projects/cw:listitems/rs:data/z:row">
				<OperationDefinition>
					<RequestType>GetListItems</RequestType>
					<TableName>Tasks</TableName>
					<ListTitle>Tasks</ListTitle>
					<CAML><![CDATA[%CAPSCAML%]]></CAML>	
					<SiteUrl><xsl:value-of select="@ows_URL"/></SiteUrl>
				</OperationDefinition>
			</xsl:for-each>
			</Items>	
		</OperationDefinitionCollection>
	</xsl:template>
</xsl:stylesheet>