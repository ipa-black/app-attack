package org.apache.ldap.server.invocation;

import javax.naming.Context;
import javax.naming.Name;
import javax.naming.NamingException;
import org.apache.ldap.server.BackingStore;
import org.apache.ldap.server.ContextPartition;
import org.apache.ldap.server.PartitionNexus;
import org.apache.ldap.server.db.Database;
import org.apache.ldap.server.jndi.ProviderNexusAspect;
/* loaded from: classes3.dex */
public class Lookup extends Invocation {
    private static final long serialVersionUID = 4049074934456005177L;
    private Name name;

    public Lookup(Name name) {
        if (name == null) {
            throw new NullPointerException("name");
        }
        this.name = name;
    }

    public Name getName() {
        return this.name;
    }

    @Override // org.apache.ldap.server.invocation.Invocation
    protected Object doExecute(BackingStore backingStore) throws NamingException {
        Name name = this.name;
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && (backingStore instanceof PartitionNexus) && !(backingStore instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            return backingStore.lookup(name);
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && (backingStore instanceof PartitionNexus) && !(backingStore instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }

    public void setName(Name name) {
        this.name = name;
    }
}
