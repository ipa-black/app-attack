package org.apache.ldap.server.schema;

import java.util.HashMap;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.SyntaxChecker;
import org.apache.ldap.server.SystemPartition;
import org.apache.ldap.server.schema.bootstrap.BootstrapSyntaxCheckerRegistry;
/* loaded from: classes3.dex */
public class GlobalSyntaxCheckerRegistry implements SyntaxCheckerRegistry {
    private BootstrapSyntaxCheckerRegistry bootstrap;
    private SystemPartition systemPartition;
    private final Map oidToSchema = new HashMap();
    private final Map syntaxCheckers = new HashMap();
    private SyntaxCheckerRegistryMonitor monitor = new SyntaxCheckerRegistryMonitorAdapter();

    public GlobalSyntaxCheckerRegistry(SystemPartition systemPartition, BootstrapSyntaxCheckerRegistry bootstrapSyntaxCheckerRegistry) {
        this.bootstrap = bootstrapSyntaxCheckerRegistry;
        if (bootstrapSyntaxCheckerRegistry == null) {
            throw new NullPointerException("the bootstrap registry cannot be null");
        }
        this.systemPartition = systemPartition;
        if (systemPartition == null) {
            throw new NullPointerException("the system partition cannot be null");
        }
    }

    public void setMonitor(SyntaxCheckerRegistryMonitor syntaxCheckerRegistryMonitor) {
        this.monitor = syntaxCheckerRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.SyntaxCheckerRegistry
    public void register(String str, String str2, SyntaxChecker syntaxChecker) throws NamingException {
        if (this.syntaxCheckers.containsKey(str2) || this.bootstrap.hasSyntaxChecker(str2)) {
            NamingException namingException = new NamingException(new StringBuffer("SyntaxChecker with OID ").append(str2).append(" already registered!").toString());
            this.monitor.registerFailed(str2, syntaxChecker, namingException);
            throw namingException;
        }
        this.oidToSchema.put(str2, str);
        this.syntaxCheckers.put(str2, syntaxChecker);
        this.monitor.registered(str2, syntaxChecker);
    }

    @Override // org.apache.ldap.server.schema.SyntaxCheckerRegistry
    public SyntaxChecker lookup(String str) throws NamingException {
        if (this.syntaxCheckers.containsKey(str)) {
            SyntaxChecker syntaxChecker = (SyntaxChecker) this.syntaxCheckers.get(str);
            this.monitor.lookedUp(str, syntaxChecker);
            return syntaxChecker;
        } else if (this.bootstrap.hasSyntaxChecker(str)) {
            SyntaxChecker lookup = this.bootstrap.lookup(str);
            this.monitor.lookedUp(str, lookup);
            return lookup;
        } else {
            NamingException namingException = new NamingException(new StringBuffer("SyntaxChecker not found for OID: ").append(str).toString());
            this.monitor.lookupFailed(str, namingException);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.schema.SyntaxCheckerRegistry
    public boolean hasSyntaxChecker(String str) {
        return this.syntaxCheckers.containsKey(str) || this.bootstrap.hasSyntaxChecker(str);
    }

    @Override // org.apache.ldap.server.schema.SyntaxCheckerRegistry
    public String getSchemaName(String str) throws NamingException {
        if (!Character.isDigit(str.charAt(0))) {
            throw new NamingException(new StringBuffer("OID ").append(str).append(" is not a numeric OID").toString());
        }
        if (this.oidToSchema.containsKey(str)) {
            return (String) this.oidToSchema.get(str);
        }
        if (this.bootstrap.hasSyntaxChecker(str)) {
            return this.bootstrap.getSchemaName(str);
        }
        throw new NamingException(new StringBuffer("OID ").append(str).append(" not found in oid to schema name map!").toString());
    }
}
