package org.apache.ldap.server.schema;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.NameForm;
import org.apache.ldap.common.util.JoinIterator;
import org.apache.ldap.server.SystemPartition;
import org.apache.ldap.server.schema.bootstrap.BootstrapNameFormRegistry;
/* loaded from: classes3.dex */
public class GlobalNameFormRegistry implements NameFormRegistry {
    private BootstrapNameFormRegistry bootstrap;
    private final OidRegistry oidRegistry;
    private SystemPartition systemPartition;
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();
    private NameFormRegistryMonitor monitor = new NameFormRegistryMonitorAdapter();

    public GlobalNameFormRegistry(SystemPartition systemPartition, BootstrapNameFormRegistry bootstrapNameFormRegistry, OidRegistry oidRegistry) {
        this.oidRegistry = oidRegistry;
        this.bootstrap = bootstrapNameFormRegistry;
        if (bootstrapNameFormRegistry == null) {
            throw new NullPointerException("the bootstrap registry cannot be null");
        }
        this.systemPartition = systemPartition;
        if (systemPartition == null) {
            throw new NullPointerException("the system partition cannot be null");
        }
    }

    public void setMonitor(NameFormRegistryMonitor nameFormRegistryMonitor) {
        this.monitor = nameFormRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.NameFormRegistry
    public void register(String str, NameForm nameForm) throws NamingException {
        if (this.byOid.containsKey(nameForm.getOid()) || this.bootstrap.hasNameForm(nameForm.getOid())) {
            Throwable namingException = new NamingException(new StringBuffer("dITContentRule w/ OID ").append(nameForm.getOid()).append(" has already been registered!").toString());
            this.monitor.registerFailed(nameForm, namingException);
            throw namingException;
        }
        this.oidRegistry.register(nameForm.getName(), nameForm.getOid());
        this.byOid.put(nameForm.getOid(), nameForm);
        this.oidToSchema.put(nameForm.getOid(), str);
        this.monitor.registered(nameForm);
    }

    @Override // org.apache.ldap.server.schema.NameFormRegistry
    public NameForm lookup(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.byOid.containsKey(oid)) {
            NameForm nameForm = (NameForm) this.byOid.get(oid);
            this.monitor.lookedUp(nameForm);
            return nameForm;
        } else if (this.bootstrap.hasNameForm(oid)) {
            NameForm lookup = this.bootstrap.lookup(oid);
            this.monitor.lookedUp(lookup);
            return lookup;
        } else {
            Throwable namingException = new NamingException(new StringBuffer("dITContentRule w/ OID ").append(oid).append(" not registered!").toString());
            this.monitor.lookupFailed(oid, namingException);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.schema.NameFormRegistry
    public boolean hasNameForm(String str) {
        if (this.oidRegistry.hasOid(str)) {
            try {
                if (this.byOid.containsKey(this.oidRegistry.getOid(str))) {
                    return true;
                }
                return this.bootstrap.hasNameForm(str);
            } catch (NamingException unused) {
            }
        }
        return false;
    }

    @Override // org.apache.ldap.server.schema.NameFormRegistry
    public String getSchemaName(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.oidToSchema.containsKey(oid)) {
            return (String) this.oidToSchema.get(oid);
        }
        if (this.bootstrap.hasNameForm(oid)) {
            return this.bootstrap.getSchemaName(oid);
        }
        throw new NamingException(new StringBuffer("OID ").append(oid).append(" not found in oid to schema name map!").toString());
    }

    @Override // org.apache.ldap.server.schema.NameFormRegistry
    public Iterator list() {
        return new JoinIterator(new Iterator[]{this.byOid.values().iterator(), this.bootstrap.list()});
    }
}
