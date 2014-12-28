package com.myallways.vwru2.core.hibernate.pojo;

import java.io.Serializable;

import org.apache.commons.lang.StringUtils;

public class Property implements Serializable {

	private static final long serialVersionUID = -654839486061505884L;

	String fullTypeName;

	String modifier = "private";

	String typeName;

	String name;

	String setterModifier = "public";

	String setterName;

	String getterModifier = "public";

	String getterName;

	String initialization;

	String javaDoc;

	public boolean hasInitializor() {
		return initialization != null;
	}

	public boolean hasJavaDoc() {
		return !StringUtils.isEmpty(javaDoc);
	}

	public String getFullTypeName() {
		return fullTypeName;
	}

	public void setFullTypeName(String fullTypeName) {
		this.fullTypeName = fullTypeName;
	}

	public String getModifier() {
		return modifier;
	}

	public void setModifier(String modifier) {
		this.modifier = modifier;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSetterModifier() {
		return setterModifier;
	}

	public void setSetterModifier(String setterModifier) {
		this.setterModifier = setterModifier;
	}

	public String getSetterName() {
		return setterName;
	}

	public void setSetterName(String setterName) {
		this.setterName = setterName;
	}

	public String getGetterModifier() {
		return getterModifier;
	}

	public void setGetterModifier(String getterModifier) {
		this.getterModifier = getterModifier;
	}

	public String getGetterName() {
		return getterName;
	}

	public void setGetterName(String getterName) {
		this.getterName = getterName;
	}

	public String getInitialization() {
		return initialization;
	}

	public void setInitialization(String initialization) {
		this.initialization = initialization;
	}

	public String getJavaDoc() {
		return javaDoc;
	}

	public void setJavaDoc(String javaDoc) {
		this.javaDoc = javaDoc;
	}

}
