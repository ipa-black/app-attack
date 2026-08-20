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
public class GetMatchedDN extends Invocation {
    private static final long serialVersionUID = 3834032467559723826L;
    private Name name;
    private final boolean normalized;

    public GetMatchedDN(Name name, boolean z) {
        if (name == null) {
            throw new NullPointerException("name");
        }
        this.name = name;
        this.normalized = z;
    }

    public boolean isNormalized() {
        return this.normalized;
    }

    public Name getName() {
        return this.name;
    }

    @Override // org.apache.ldap.server.invocation.Invocation
    protected Object doExecute(BackingStore backingStore) throws NamingException {
        PartitionNexus partitionNexus = (PartitionNexus) backingStore;
        Name name = this.name;
        boolean z = this.normalized;
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            return partitionNexus.getMatchedDn(name, z);
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && !(partitionNexus instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }

    public void setName(Name name) {
        this.name = name;
    }
}
