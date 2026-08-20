package org.apache.ldap.server;

import java.util.Iterator;
import javax.naming.Name;
import javax.naming.NamingException;
import javax.naming.ldap.LdapContext;
/* loaded from: classes3.dex */
public interface PartitionNexus extends BackingStore {
    LdapContext getLdapContext();

    Name getMatchedDn(Name name, boolean z) throws NamingException;

    Name getSuffix(Name name, boolean z) throws NamingException;

    Iterator listSuffixes(boolean z) throws NamingException;

    void register(ContextPartition contextPartition);

    void unregister(ContextPartition contextPartition);
}
