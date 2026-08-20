package org.apache.ldap.common.schema;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface NameForm extends SchemaObject {
    AttributeType[] getMaytUse() throws NamingException;

    AttributeType[] getMustUse() throws NamingException;

    ObjectClass getObjectClass() throws NamingException;
}
