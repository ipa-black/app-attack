package org.apache.ldap.server.schema;

import java.util.Iterator;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.AttributeType;
/* loaded from: classes3.dex */
public interface AttributeTypeRegistry {
    String getSchemaName(String str) throws NamingException;

    boolean hasAttributeType(String str);

    Iterator list();

    AttributeType lookup(String str) throws NamingException;

    void register(String str, AttributeType attributeType) throws NamingException;
}
