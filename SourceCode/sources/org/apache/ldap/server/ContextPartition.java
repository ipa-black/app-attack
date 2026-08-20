package org.apache.ldap.server;

import javax.naming.Name;
/* loaded from: classes3.dex */
public interface ContextPartition extends BackingStore {
    Name getSuffix(boolean z);
}
