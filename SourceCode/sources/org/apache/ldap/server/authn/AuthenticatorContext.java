package org.apache.ldap.server.authn;

import org.apache.ldap.server.PartitionNexus;
/* loaded from: classes3.dex */
public interface AuthenticatorContext {
    boolean getAllowAnonymous();

    PartitionNexus getPartitionNexus();
}
