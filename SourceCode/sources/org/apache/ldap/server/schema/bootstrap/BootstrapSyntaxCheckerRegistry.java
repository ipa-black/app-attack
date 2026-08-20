package org.apache.ldap.server.schema.bootstrap;

import java.util.HashMap;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.SyntaxChecker;
import org.apache.ldap.server.schema.SyntaxCheckerRegistry;
import org.apache.ldap.server.schema.SyntaxCheckerRegistryMonitor;
import org.apache.ldap.server.schema.SyntaxCheckerRegistryMonitorAdapter;
/* loaded from: classes3.dex */
public class BootstrapSyntaxCheckerRegistry implements SyntaxCheckerRegistry {
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();
    private SyntaxCheckerRegistryMonitor monitor = new SyntaxCheckerRegistryMonitorAdapter();

    public void setMonitor(SyntaxCheckerRegistryMonitor syntaxCheckerRegistryMonitor) {
        this.monitor = syntaxCheckerRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.SyntaxCheckerRegistry
    public void register(String str, String str2, SyntaxChecker syntaxChecker) throws NamingException {
        if (this.byOid.containsKey(str2)) {
            NamingException namingException = new NamingException(new StringBuffer("SyntaxChecker with OID ").append(str2).append(" already registered!").toString());
            this.monitor.registerFailed(str2, syntaxChecker, namingException);
            throw namingException;
        }
        this.byOid.put(str2, syntaxChecker);
        this.oidToSchema.put(str2, str);
        this.monitor.registered(str2, syntaxChecker);
    }

    @Override // org.apache.ldap.server.schema.SyntaxCheckerRegistry
    public SyntaxChecker lookup(String str) throws NamingException {
        if (!this.byOid.containsKey(str)) {
            NamingException namingException = new NamingException(new StringBuffer("SyntaxChecker for OID ").append(str).append(" not found!").toString());
            this.monitor.lookupFailed(str, namingException);
            throw namingException;
        }
        this.monitor.lookedUp(str, (SyntaxChecker) this.byOid.get(str));
        return null;
    }

    @Override // org.apache.ldap.server.schema.SyntaxCheckerRegistry
    public boolean hasSyntaxChecker(String str) {
        return this.byOid.containsKey(str);
    }

    @Override // org.apache.ldap.server.schema.SyntaxCheckerRegistry
    public String getSchemaName(String str) throws NamingException {
        if (Character.isDigit(str.charAt(0))) {
            throw new NamingException("Looks like the arg is not a numeric OID");
        }
        if (this.oidToSchema.containsKey(str)) {
            return (String) this.oidToSchema.get(str);
        }
        throw new NamingException(new StringBuffer("OID ").append(str).append(" not found in oid to schema name map!").toString());
    }
}
