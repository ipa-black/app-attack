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
public class ModifyRN extends Invocation {
    private static final long serialVersionUID = 3257849883007465528L;
    private final boolean deleteOldName;
    private Name name;
    private final String newRelativeName;

    public ModifyRN(Name name, String str, boolean z) {
        if (name == null) {
            throw new NullPointerException("name");
        }
        if (str == null) {
            throw new NullPointerException("newRelativeName");
        }
        this.name = name;
        this.newRelativeName = str;
        this.deleteOldName = z;
    }

    public Name getName() {
        return this.name;
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
        String str = this.newRelativeName;
        boolean z3 = this.deleteOldName;
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && (backingStore instanceof PartitionNexus) && !(backingStore instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            backingStore.modifyRn(name, str, z3);
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
