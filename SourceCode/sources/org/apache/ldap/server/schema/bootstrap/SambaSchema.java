package org.apache.ldap.server.schema.bootstrap;

import java.util.ArrayList;
import org.apache.ldap.server.SystemPartition;
/* loaded from: classes3.dex */
public class SambaSchema extends AbstractBootstrapSchema {
    public SambaSchema() {
        super(SystemPartition.ADMIN_PRINCIPAL, "samba", "org.apache.ldap.server.schema.bootstrap");
        ArrayList arrayList = new ArrayList();
        arrayList.clear();
        arrayList.add("cosine");
        arrayList.add("inetorg");
        arrayList.add("nis");
        setDependencies((String[]) arrayList.toArray(AbstractBootstrapSchema.DEFAULT_DEPS));
    }
}
