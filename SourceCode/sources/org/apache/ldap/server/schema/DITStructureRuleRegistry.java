package org.apache.ldap.server.schema;

import java.util.Iterator;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.DITStructureRule;
/* loaded from: classes3.dex */
public interface DITStructureRuleRegistry {
    String getSchemaName(String str) throws NamingException;

    boolean hasDITStructureRule(String str);

    Iterator list();

    DITStructureRule lookup(String str) throws NamingException;

    void register(String str, DITStructureRule dITStructureRule) throws NamingException;
}
