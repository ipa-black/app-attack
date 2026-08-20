package org.apache.ldap.server.authn;

import org.apache.ldap.server.PartitionNexus;
/* loaded from: classes3.dex */
public class GenericAuthenticatorContext implements AuthenticatorContext {
    private boolean allowAnonymous = false;
    private PartitionNexus partitionNexus;

    @Override // org.apache.ldap.server.authn.AuthenticatorContext
    public PartitionNexus getPartitionNexus() {
        return this.partitionNexus;
    }

    public void setPartitionNexus(PartitionNexus partitionNexus) {
        this.partitionNexus = partitionNexus;
    }

    @Override // org.apache.ldap.server.authn.AuthenticatorContext
    public boolean getAllowAnonymous() {
        return this.allowAnonymous;
    }

    public void setAllowAnonymous(boolean z) {
        this.allowAnonymous = z;
    }
}
