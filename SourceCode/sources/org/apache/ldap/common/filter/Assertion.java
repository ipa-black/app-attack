package org.apache.ldap.common.filter;

import javax.naming.NamingException;
import javax.naming.directory.Attributes;
/* loaded from: classes3.dex */
public interface Assertion {
    boolean assertCandidate(String str, Attributes attributes) throws NamingException;
}
