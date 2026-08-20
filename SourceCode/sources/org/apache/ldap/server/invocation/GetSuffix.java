package org.apache.ldap.server.invocation;

import javax.naming.Name;
import javax.naming.NamingException;
import org.apache.ldap.server.BackingStore;
import org.apache.ldap.server.ContextPartition;
/* loaded from: classes3.dex */
public class GetSuffix extends Invocation {
    private static final long serialVersionUID = 3256443599162980407L;
    private Name name;
    private final boolean normalized;

    public GetSuffix(Name name, boolean z) {
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
        return ((ContextPartition) backingStore).getSuffix(this.normalized);
    }

    public void setName(Name name) {
        this.name = name;
    }
}
