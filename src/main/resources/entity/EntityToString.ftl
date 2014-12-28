	/**
     * toString
     * @return String
     */
     public String toString() {
	  StringBuffer buffer = new StringBuffer();

      buffer.append(getClass().getName()).append("@").append(Integer.toHexString(hashCode())).append(" [");
<#foreach property in entity.getAllPropertiesIterator()>      buffer.append("${property.getName()}").append("='").append(${property.getGetterName()}()).append("' ");			
</#foreach>      buffer.append("]");
      
      return buffer.toString();
     }