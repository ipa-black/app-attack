package org.apache.ldap.server.schema;

import java.util.Iterator;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.MatchingRuleUse;
/* loaded from: classes3.dex */
public interface MatchingRuleUseRegistry {
    String getSchemaName(String str) throws NamingException;

    boolean hasMatchingRuleUse(String str);

    Iterator list();

    MatchingRuleUse lookup(String str) throws NamingException;

    void register(String str, MatchingRuleUse matchingRuleUse) throws NamingException;
}
