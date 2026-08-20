package org.apache.ldap.server.schema;

import java.util.Iterator;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.MatchingRule;
/* loaded from: classes3.dex */
public interface MatchingRuleRegistry {
    String getSchemaName(String str) throws NamingException;

    boolean hasMatchingRule(String str);

    Iterator list();

    MatchingRule lookup(String str) throws NamingException;

    void register(String str, MatchingRule matchingRule) throws NamingException;
}
