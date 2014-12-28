<#-- // Fields -->

<#foreach property in entity.getAllPropertiesIterator()>
	<#if property.hasJavaDoc()>
	/**
     * ${property.getJavaDoc()}
     */
    </#if>
 	${property.getModifier()} ${property.getTypeName()} ${property.getName()}<#if property.hasInitializor()> = ${property.getInitialization()}</#if>;
</#foreach>
