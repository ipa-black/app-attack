package org.apache.ldap.server.schema;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.Syntax;
import org.apache.ldap.common.util.JoinIterator;
import org.apache.ldap.server.SystemPartition;
import org.apache.ldap.server.schema.bootstrap.BootstrapSyntaxRegistry;
/* loaded from: classes3.dex */
public class GlobalSyntaxRegistry implements SyntaxRegistry {
    private BootstrapSyntaxRegistry bootstrap;
    private final OidRegistry oidRegistry;
    private SystemPartition systemPartition;
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();
    private SyntaxRegistryMonitor monitor = new SyntaxRegistryMonitorAdapter();

    public GlobalSyntaxRegistry(SystemPartition systemPartition, BootstrapSyntaxRegistry bootstrapSyntaxRegistry, OidRegistry oidRegistry) {
        this.oidRegistry = oidRegistry;
        this.bootstrap = bootstrapSyntaxRegistry;
        if (bootstrapSyntaxRegistry == null) {
            throw new NullPointerException("the bootstrap registry cannot be null");
        }
        this.systemPartition = systemPartition;
        if (systemPartition == null) {
            throw new NullPointerException("the system partition cannot be null");
        }
    }

    public void setMonitor(SyntaxRegistryMonitor syntaxRegistryMonitor) {
        this.monitor = syntaxRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.SyntaxRegistry
    public void register(String str, Syntax syntax) throws NamingException {
        if (this.byOid.containsKey(syntax.getOid()) || this.bootstrap.hasSyntax(syntax.getOid())) {
            NamingException namingException = new NamingException(new StringBuffer("dITContentRule w/ OID ").append(syntax.getOid()).append(" has already been registered!").toString());
            this.monitor.registerFailed(syntax, namingException);
            throw namingException;
        }
        this.oidRegistry.register(syntax.getName(), syntax.getOid());
        this.byOid.put(syntax.getOid(), syntax);
        this.oidToSchema.put(syntax.getOid(), str);
        this.monitor.registered(syntax);
    }

    @Override // org.apache.ldap.server.schema.SyntaxRegistry
    public Syntax lookup(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.byOid.containsKey(oid)) {
            Syntax syntax = (Syntax) this.byOid.get(oid);
            this.monitor.lookedUp(syntax);
            return syntax;
        } else if (this.bootstrap.hasSyntax(oid)) {
            Syntax lookup = this.bootstrap.lookup(oid);
            this.monitor.lookedUp(lookup);
            return lookup;
        } else {
            NamingException namingException = new NamingException(new StringBuffer("dITContentRule w/ OID ").append(oid).append(" not registered!").toString());
            this.monitor.lookupFailed(oid, namingException);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.schema.SyntaxRegistry
    public boolean hasSyntax(String str) {
        if (this.oidRegistry.hasOid(str)) {
            try {
                if (this.byOid.containsKey(this.oidRegistry.getOid(str))) {
                    return true;
                }
                return this.bootstrap.hasSyntax(str);
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
        if (this.bootstrap.hasSyntax(oid)) {
            return this.bootstrap.getSchemaName(oid);
        }
        throw new NamingException(new StringBuffer("OID ").append(oid).append(" not found in oid to schema name map!").toString());
    }

    @Override // org.apache.ldap.server.schema.SyntaxRegistry
    public Iterator list() {
        return new JoinIterator(new Iterator[]{this.byOid.values().iterator(), this.bootstrap.list()});
    }
}
