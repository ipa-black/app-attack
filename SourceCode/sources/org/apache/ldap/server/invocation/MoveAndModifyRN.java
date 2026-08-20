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
public class MoveAndModifyRN extends Invocation {
    private static final long serialVersionUID = 3258135751786248245L;
    private final boolean deleteOldName;
    private Name name;
    private Name newParentName;
    private final String newRelativeName;

    public MoveAndModifyRN(Name name, Name name2, String str, boolean z) {
        if (name == null) {
            throw new NullPointerException("name");
        }
        if (name2 == null) {
            throw new NullPointerException("newParentName");
        }
        if (str == null) {
            throw new NullPointerException("newRelativeName");
        }
        this.name = name;
        this.newParentName = name2;
        this.newRelativeName = str;
        this.deleteOldName = z;
    }

    public Name getName() {
        return this.name;
    }

    public Name getNewParentName() {
        return this.newParentName;
    }

    public String getNewRelativeName() {
        return this.newRelativeName;
    }

    public boolean isDeleteOldName() {
        return this.deleteOldName;
    }

    @Override // org.apache.ldap.server.invocation.Invocation
    protected Object doExecute(BackingStore backingStore) throws NamingException {
        boolean z;
        boolean z2;
        Name name = this.name;
        Name name2 = this.newParentName;
        String str = this.newRelativeName;
        boolean z3 = this.deleteOldName;
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && (backingStore instanceof PartitionNexus) && !(backingStore instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            backingStore.move(name, name2, str, z3);
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
