package org.apache.ldap.common.schema;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface ObjectClass extends SchemaObject {
    AttributeType[] getMayList() throws NamingException;

    AttributeType[] getMustList() throws NamingException;

    ObjectClass[] getSuperClasses() throws NamingException;

    ObjectClassTypeEnum getType();
}
