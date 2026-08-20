package org.apache.ldap.common.name;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface NameComponentNormalizer {
    String normalizeByName(String str, String str2) throws NamingException;

    String normalizeByOid(String str, String str2) throws NamingException;
}
