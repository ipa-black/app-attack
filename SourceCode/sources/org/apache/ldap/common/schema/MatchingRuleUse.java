package org.apache.ldap.common.schema;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface MatchingRuleUse extends SchemaObject {
    AttributeType[] getApplicableAttributes() throws NamingException;

    MatchingRule getMatchingRule() throws NamingException;
}
