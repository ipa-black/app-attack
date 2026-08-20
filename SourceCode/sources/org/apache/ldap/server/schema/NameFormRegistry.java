package org.apache.ldap.server.schema;

import java.util.Iterator;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.NameForm;
/* loaded from: classes3.dex */
public interface NameFormRegistry {
    String getSchemaName(String str) throws NamingException;

    boolean hasNameForm(String str);

    Iterator list();

    NameForm lookup(String str) throws NamingException;

    void register(String str, NameForm nameForm) throws NamingException;
}
