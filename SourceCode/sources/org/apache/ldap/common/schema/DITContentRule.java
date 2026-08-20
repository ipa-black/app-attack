package org.apache.ldap.common.schema;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface DITContentRule extends SchemaObject {
    ObjectClass[] getAuxObjectClasses() throws NamingException;

    AttributeType[] getMayNames() throws NamingException;

    AttributeType[] getMustNames() throws NamingException;

    AttributeType[] getNotNames() throws NamingException;

    ObjectClass getObjectClass() throws NamingException;
}
