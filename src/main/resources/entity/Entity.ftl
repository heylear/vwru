package ${entity.getPackageDeclaration()};

<#assign classbody>
<#include "EntityTypeDeclaration.ftl"/> {

<#include "EntityFields.ftl"/>

<#include "EntityConstructors.ftl"/>
   
<#include "EntityPropertyAccessors.ftl"/>

<#include "EntityToString.ftl"/>

<#include "EntityEqualsHashcode.ftl"/>

}
</#assign>

${entity.getImportDeclaration()}
${classbody}

