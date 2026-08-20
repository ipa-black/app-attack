package org.apache.ldap.server.invocation;

import javax.naming.Context;
import javax.naming.Name;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import org.apache.ldap.server.BackingStore;
import org.apache.ldap.server.ContextPartition;
import org.apache.ldap.server.PartitionNexus;
import org.apache.ldap.server.db.Database;
import org.apache.ldap.server.jndi.ProviderNexusAspect;
/* loaded from: classes3.dex */
public class Add extends Invocation {
    private static final long serialVersionUID = 3258131362430333495L;
    private final Attributes attributes;
    private Name normalizedName;
    private final String userProvidedName;

    public Add(String str, Name name, Attributes attributes) {
        if (str == null) {
            throw new NullPointerException("userProvidedName");
        }
        if (name == null) {
            throw new NullPointerException("normalizedName");
        }
        if (attributes == null) {
            throw new NullPointerException("attributes");
        }
        this.userProvidedName = str;
        this.normalizedName = name;
        this.attributes = attributes;
    }

    public Attributes getAttributes() {
        return this.attributes;
    }

    public Name getNormalizedName() {
        return this.normalizedName;
    }

    public void setNormalizedName(Name name) {
        this.normalizedName = name;
    }

    public String getUserProvidedName() {
        return this.userProvidedName;
    }

    @Override // org.apache.ldap.server.invocation.Invocation
    protected Object doExecute(BackingStore backingStore) throws NamingException {
        boolean z;
        boolean z2;
        String str = this.userProvidedName;
        Name name = this.normalizedName;
        Attributes attributes = this.attributes;
        try {
            if ((this instanceof Context) && !(this instanceof ContextPartition) && (backingStore instanceof PartitionNexus) && !(backingStore instanceof Database)) {
                ProviderNexusAspect.aspectOf().ajc$before$org_apache_ldap_server_jndi_ProviderNexusAspect$1$1ba52095((Context) this);
            }
            backingStore.add(str, name, attributes);
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
}
