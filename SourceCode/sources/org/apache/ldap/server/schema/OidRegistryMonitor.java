package org.apache.ldap.server.schema;

import java.util.List;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface OidRegistryMonitor {
    void getOidWithOid(String str);

    void nameResolved(String str, String str2);

    void namesResolved(String str, List list);

    void oidDoesNotExist(String str, NamingException namingException);

    void oidResolutionFailed(String str, NamingException namingException);

    void oidResolved(String str, String str2);

    void oidResolved(String str, String str2, String str3);

    void registered(String str, String str2);
}
