<#-- // Property accessors -->
<#foreach property in entity.getAllPropertiesIterator()>
	/**
	 * <#if property.hasJavaDoc()>设置${property.getJavaDoc()}<#else>setter for ${property.getName()}</#if>
     */
    ${property.getSetterModifier()} void ${property.getSetterName()}(${property.getTypeName()} ${property.getName()}) {
        this.${property.getName()} = ${property.getName()};
    }
	/**
	 * <#if property.hasJavaDoc()>获取${property.getJavaDoc()}<#else>getter for ${property.getName()}</#if>
     */
    ${property.getGetterModifier()} ${property.getTypeName()} ${property.getGetterName()}() {
        return this.${property.getName()};
    }
</#foreach>
