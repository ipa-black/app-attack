package org.apache.ldap.server.schema;

import java.util.Iterator;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.DITContentRule;
/* loaded from: classes3.dex */
public interface DITContentRuleRegistry {
    String getSchemaName(String str) throws NamingException;

    boolean hasDITContentRule(String str);

    Iterator list();

    DITContentRule lookup(String str) throws NamingException;

    void register(String str, DITContentRule dITContentRule) throws NamingException;
}
