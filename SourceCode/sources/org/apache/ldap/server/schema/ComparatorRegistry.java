package org.apache.ldap.server.schema;

import java.util.Comparator;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface ComparatorRegistry {
    String getSchemaName(String str) throws NamingException;

    boolean hasComparator(String str);

    Comparator lookup(String str) throws NamingException;

    void register(String str, String str2, Comparator comparator) throws NamingException;
}
