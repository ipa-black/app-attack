package org.apache.ldap.server.schema;

import java.util.Iterator;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.ObjectClass;
/* loaded from: classes3.dex */
public interface ObjectClassRegistry {
    String getSchemaName(String str) throws NamingException;

    boolean hasObjectClass(String str);

    Iterator list();

    ObjectClass lookup(String str) throws NamingException;

    void register(String str, ObjectClass objectClass) throws NamingException;
}
