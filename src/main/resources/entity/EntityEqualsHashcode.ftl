   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof ${entity.getDeclarationName()}) ) return false;
		 ${entity.getDeclarationName()} castOther = ( ${entity.getDeclarationName()} ) other; 
<#foreach property in entity.getAllPropertiesIterator()>         if (${property.getName()} == null) {
			if (castOther.${property.getName()} != null)
				return false;
		} else if (!${property.getName()}.equals(castOther.${property.getName()}))
			return false;
</#foreach>         
		 return true;
   }
   
   public int hashCode() {
   		final int prime = 31;
        int result = 17;
<#foreach property in entity.getAllPropertiesIterator()>		result = prime * result
				+ ((${property.getName()} == null) ? 0 : ${property.getName()}.hashCode());</#foreach>
		return result;
   }