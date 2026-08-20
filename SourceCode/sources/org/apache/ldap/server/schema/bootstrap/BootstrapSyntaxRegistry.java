package org.apache.ldap.server.schema.bootstrap;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.Syntax;
import org.apache.ldap.server.schema.OidRegistry;
import org.apache.ldap.server.schema.SyntaxRegistry;
import org.apache.ldap.server.schema.SyntaxRegistryMonitor;
import org.apache.ldap.server.schema.SyntaxRegistryMonitorAdapter;
/* loaded from: classes3.dex */
public class BootstrapSyntaxRegistry implements SyntaxRegistry {
    private SyntaxRegistryMonitor monitor;
    private final OidRegistry oidRegistry;
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();

    public BootstrapSyntaxRegistry(OidRegistry oidRegistry) {
        this.monitor = null;
        this.oidRegistry = oidRegistry;
        this.monitor = new SyntaxRegistryMonitorAdapter();
    }

    @Override // org.apache.ldap.server.schema.SyntaxRegistry
    public Syntax lookup(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.byOid.containsKey(oid)) {
            Syntax syntax = (Syntax) this.byOid.get(oid);
            this.monitor.lookedUp(syntax);
            return syntax;
        }
        NamingException namingException = new NamingException(new StringBuffer("Unknown syntax OID ").append(oid).toString());
        this.monitor.lookupFailed(oid, namingException);
        throw namingException;
    }

    @Override // org.apache.ldap.server.schema.SyntaxRegistry
    public void register(String str, Syntax syntax) throws NamingException {
        if (this.byOid.containsKey(syntax.getOid())) {
            NamingException namingException = new NamingException(new StringBuffer("syntax w/ OID ").append(syntax.getOid()).append(" has already been registered!").toString());
            this.monitor.registerFailed(syntax, namingException);
            throw namingException;
        }
        this.oidRegistry.register(syntax.getName(), syntax.getOid());
        this.byOid.put(syntax.getOid(), syntax);
        this.oidToSchema.put(syntax.getOid(), str);
        this.monitor.registered(syntax);
    }

    @Override // org.apache.ldap.server.schema.SyntaxRegistry
    public boolean hasSyntax(String str) {
        if (this.oidRegistry.hasOid(str)) {
            try {
                return this.byOid.containsKey(this.oidRegistry.getOid(str));
            } catch (NamingException unused) {
            }
        }
        return false;
    }

    @Override // org.apache.ldap.server.schema.SyntaxRegistry
    public String getSchemaName(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.oidToSchema.containsKey(oid)) {
            return (String) this.oidToSchema.get(oid);
        }
        throw new NamingException(new StringBuffer("OID ").append(oid).append(" not found in oid to schema name map!").toString());
    }

    SyntaxRegistryMonitor getMonitor() {
        return this.monitor;
    }

    void setMonitor(SyntaxRegistryMonitor syntaxRegistryMonitor) {
        this.monitor = syntaxRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.SyntaxRegistry
    public Iterator list() {
        return this.byOid.values().iterator();
    }
}
