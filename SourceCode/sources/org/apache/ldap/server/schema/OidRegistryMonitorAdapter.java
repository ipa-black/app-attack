package org.apache.ldap.server.schema;

import java.util.List;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class OidRegistryMonitorAdapter implements OidRegistryMonitor {
    @Override // org.apache.ldap.server.schema.OidRegistryMonitor
    public void getOidWithOid(String str) {
    }

    @Override // org.apache.ldap.server.schema.OidRegistryMonitor
    public void nameResolved(String str, String str2) {
    }

    @Override // org.apache.ldap.server.schema.OidRegistryMonitor
    public void namesResolved(String str, List list) {
    }

    @Override // org.apache.ldap.server.schema.OidRegistryMonitor
    public void oidResolved(String str, String str2) {
    }

    @Override // org.apache.ldap.server.schema.OidRegistryMonitor
    public void oidResolved(String str, String str2, String str3) {
    }

    @Override // org.apache.ldap.server.schema.OidRegistryMonitor
    public void registered(String str, String str2) {
    }

    @Override // org.apache.ldap.server.schema.OidRegistryMonitor
    public void oidResolutionFailed(String str, NamingException namingException) {
        if (namingException != null) {
            namingException.printStackTrace();
        }
    }

    @Override // org.apache.ldap.server.schema.OidRegistryMonitor
    public void oidDoesNotExist(String str, NamingException namingException) {
        if (namingException != null) {
            namingException.printStackTrace();
        }
    }
}
