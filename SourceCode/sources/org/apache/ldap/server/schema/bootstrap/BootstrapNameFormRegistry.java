package org.apache.ldap.server.schema.bootstrap;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.NameForm;
import org.apache.ldap.server.schema.NameFormRegistry;
import org.apache.ldap.server.schema.NameFormRegistryMonitor;
import org.apache.ldap.server.schema.NameFormRegistryMonitorAdapter;
import org.apache.ldap.server.schema.OidRegistry;
/* loaded from: classes3.dex */
public class BootstrapNameFormRegistry implements NameFormRegistry {
    private final OidRegistry oidRegistry;
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();
    private NameFormRegistryMonitor monitor = new NameFormRegistryMonitorAdapter();

    public BootstrapNameFormRegistry(OidRegistry oidRegistry) {
        this.oidRegistry = oidRegistry;
    }

    public void setMonitor(NameFormRegistryMonitor nameFormRegistryMonitor) {
        this.monitor = nameFormRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.NameFormRegistry
    public void register(String str, NameForm nameForm) throws NamingException {
        if (this.byOid.containsKey(nameForm.getOid())) {
            Throwable namingException = new NamingException(new StringBuffer("nameForm w/ OID ").append(nameForm.getOid()).append(" has already been registered!").toString());
            this.monitor.registerFailed(nameForm, namingException);
            throw namingException;
        }
        this.oidToSchema.put(nameForm.getOid(), str);
        this.oidRegistry.register(nameForm.getName(), nameForm.getOid());
        this.byOid.put(nameForm.getOid(), nameForm);
        this.monitor.registered(nameForm);
    }

    @Override // org.apache.ldap.server.schema.NameFormRegistry
    public NameForm lookup(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (!this.byOid.containsKey(oid)) {
            Throwable namingException = new NamingException(new StringBuffer("nameForm w/ OID ").append(oid).append(" not registered!").toString());
            this.monitor.lookupFailed(oid, namingException);
            throw namingException;
        }
        NameForm nameForm = (NameForm) this.byOid.get(oid);
        this.monitor.lookedUp(nameForm);
        return nameForm;
    }

    @Override // org.apache.ldap.server.schema.NameFormRegistry
    public boolean hasNameForm(String str) {
        if (this.oidRegistry.hasOid(str)) {
            try {
                return this.byOid.containsKey(this.oidRegistry.getOid(str));
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
        throw new NamingException(new StringBuffer("OID ").append(oid).append(" not found in oid to schema name map!").toString());
    }

    @Override // org.apache.ldap.server.schema.NameFormRegistry
    public Iterator list() {
        return this.byOid.values().iterator();
    }
}
