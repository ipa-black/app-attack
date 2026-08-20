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
public class Move extends Invocation {
    private static final long serialVersionUID = 3258132440382978098L;
    private Name name;
    private Name newParentName;

    public Move(Name name, Name name2) {
        if (name == null) {
            throw new NullPointerException("name");
        }
        if (name2 == null) {
            throw new NullPointerException("newParentName");
        }
        this.name = name;
        this.newParentName = name2;
    }

    public Name getName() {
        return this.name;
    }

    public Name getNewParentName() {
        return this.newParentName;
    }

    @Override // org.apache.ldap.server.invocation.Invocation
    protected Object doExecute(BackingStore backingStore) throws NamingException {
        boolean z;
        boolean z2;
        Name name = this.name;
        Name name2 = this.newParentName;
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && (backingStore instanceof PartitionNexus) && !(backingStore instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            backingStore.move(name, name2);
            if (z) {
                if (z2) {
                    return null;
                }
                return null;
            }
            return null;
        } finally {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && (backingStore instanceof PartitionNexus) && !(backingStore instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$after$org_apache_ldap_server_jndi_ProviderNexusAspect$2$1ba52095((Context) this);
            }
        }
    }

    public void setName(Name name) {
        this.name = name;
    }

    public void setNewParentName(Name name) {
        this.newParentName = name;
    }
}
