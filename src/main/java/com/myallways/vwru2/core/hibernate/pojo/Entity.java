package com.myallways.vwru2.core.hibernate.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.lang.StringUtils;

public class Entity implements Serializable {

	private static final long serialVersionUID = 1L;

	String packageDeclaration;

	String declarationDoc;

	String declarationType = "class";

	String declarationName;

	String extendsDeclaration = "";

	String implementsDeclaration = "";

	String classModifiers = "public";

	List properties = new ArrayList();

	public Iterator getAllPropertiesIterator() {
		return properties.iterator();
	}

	public boolean hasDeclarationDoc() {
		return declarationDoc != null;
	}

	public String getPackageDeclaration() {
		return packageDeclaration;
	}

	public void setPackageDeclaration(String packageDeclaration) {
		this.packageDeclaration = packageDeclaration;
	}

	public String getDeclarationDoc() {
		return declarationDoc;
	}

	public void setDeclarationDoc(String declarationDoc) {
		this.declarationDoc = declarationDoc;
	}

	public String getDeclarationType() {
		return declarationType;
	}

	public void setDeclarationType(String declarationType) {
		this.declarationType = declarationType;
	}

	public String getDeclarationName() {
		return declarationName;
	}

	public void setDeclarationName(String declarationName) {
		this.declarationName = declarationName;
	}

	public String getExtendsDeclaration() {
		return extendsDeclaration;
	}

	public void setExtendsDeclaration(String extendsDeclaration) {
		this.extendsDeclaration = extendsDeclaration;
	}

	public String getImplementsDeclaration() {
		return implementsDeclaration;
	}

	public void setImplementsDeclaration(String implementsDeclaration) {
		this.implementsDeclaration = implementsDeclaration;
	}

	public List getProperties() {
		return properties;
	}

	public void setProperties(List properties) {
		this.properties = properties;
	}

	public void addProperty(Property property) {
		properties.add(property);
	}

	public String getClassModifiers() {
		return classModifiers;
	}

	public void setClassModifiers(String classModifiers) {
		this.classModifiers = classModifiers;
	}

	public String getImportDeclaration() {
		StringBuffer sb = new StringBuffer();
		for (Iterator iterator = getAllPropertiesIterator(); iterator.hasNext();) {
			Property property = (Property) iterator.next();
			if (StringUtils.isEmpty(property.getFullTypeName()))
				continue;
			if (!property.getFullTypeName().startsWith("java.lang")
					&& sb.toString().indexOf(property.getFullTypeName()) < 0) {
				sb.append("import " + property.getFullTypeName() + ";\n");
			}
		}
		return sb.toString();
	}
}
