package org.apache.ldap.server.db;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface IndexAssertion {
    boolean assertCandidate(IndexRecord indexRecord) throws NamingException;
}
