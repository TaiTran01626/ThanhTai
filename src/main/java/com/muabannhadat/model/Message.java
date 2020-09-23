package com.muabannhadat.model;

import java.util.Map;

import com.muabannhadat.entity.PackageTypeEntity;

public class Message {
String name;

private boolean validated;
private Map<String, String> errorMessages;
private PackageTypeEntity list;



public PackageTypeEntity getList() {
	return list;
}

public void setList(PackageTypeEntity list) {
	this.list = list;
}

public boolean isValidated() {
    return validated;
}

public void setValidated(boolean validated) {
    this.validated = validated;
}


public Map<String, String> getErrorMessages() {
	return errorMessages;
}

public void setErrorMessages(Map<String, String> errorMessages) {
	this.errorMessages = errorMessages;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}
//public static void main(String[] args) {
//	Message message = new Message();
//	String st="<li><img src=\"getImage/<c:out value='"+1+"'/> \""
//			+	" alt='' style='height: 253px'></li>";
//	System.out.println(st);
//}

}
