package org.apache.ldap.common.url;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface LdapUrlParser {
    LdapUrl parse(String str) throws NamingException;
}
