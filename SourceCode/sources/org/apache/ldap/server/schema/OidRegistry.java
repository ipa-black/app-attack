package org.apache.ldap.server.schema;

import java.util.Iterator;
import java.util.List;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface OidRegistry {
    List getNameSet(String str) throws NamingException;

    String getOid(String str) throws NamingException;

    String getPrimaryName(String str) throws NamingException;

    boolean hasOid(String str);

    Iterator list();

    void register(String str, String str2);
}
