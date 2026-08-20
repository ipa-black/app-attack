package org.apache.ldap.common.schema;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface AttributeType extends SchemaObject {
    MatchingRule getEquality() throws NamingException;

    int getLength();

    MatchingRule getOrdering() throws NamingException;

    MatchingRule getSubstr() throws NamingException;

    AttributeType getSuperior() throws NamingException;

    Syntax getSyntax() throws NamingException;

    UsageEnum getUsage();

    boolean isCanUserModify();

    boolean isCollective();

    boolean isSingleValue();
}
