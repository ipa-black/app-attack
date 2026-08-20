package org.apache.ldap.server.invocation;

import javax.naming.Context;
import javax.naming.Name;
import javax.naming.NamingException;
import javax.naming.directory.ModificationItem;
import org.apache.ldap.server.BackingStore;
import org.apache.ldap.server.ContextPartition;
import org.apache.ldap.server.PartitionNexus;
import org.apache.ldap.server.db.Database;
import org.apache.ldap.server.jndi.ProviderNexusAspect;
/* loaded from: classes3.dex */
public class ModifyMany extends Invocation {
    private static final long serialVersionUID = 3258695386024915001L;
    private final ModificationItem[] modificationItems;
    private Name name;

    public ModifyMany(Name name, ModificationItem[] modificationItemArr) {
        if (name == null) {
            throw new NullPointerException("name");
        }
        if (modificationItemArr == null) {
            throw new NullPointerException("modificationItems");
        }
        this.name = name;
        this.modificationItems = modificationItemArr;
    }

    public Name getName() {
        return this.name;
    }

    public ModificationItem[] getModificationItems() {
        return this.modificationItems;
    }

    @Override // org.apache.ldap.server.invocation.Invocation
    protected Object doExecute(BackingStore backingStore) throws NamingException {
        boolean z;
        boolean z2;
        Name name = this.name;
        ModificationItem[] modificationItemArr = this.modificationItems;
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && (backingStore instanceof PartitionNexus) && !(backingStore instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            backingStore.modify(name, modificationItemArr);
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
}
