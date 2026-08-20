package org.apache.ldap.common.ldif;

import javax.naming.NamingException;
import javax.naming.directory.Attributes;
/* loaded from: classes3.dex */
public interface LdifParser {
    LdifEntry parse(String str) throws NamingException;

    void parse(Attributes attributes, String str) throws NamingException;
}
