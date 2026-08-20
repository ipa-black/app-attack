package org.apache.ldap.server.schema.bootstrap;

import java.util.ArrayList;
import org.apache.ldap.server.SystemPartition;
/* loaded from: classes3.dex */
public class NisSchema extends AbstractBootstrapSchema {
    public NisSchema() {
        super(SystemPartition.ADMIN_PRINCIPAL, "nis", "org.apache.ldap.server.schema.bootstrap");
        ArrayList arrayList = new ArrayList();
        arrayList.clear();
        arrayList.add("system");
        arrayList.add("core");
        arrayList.add("cosine");
        setDependencies((String[]) arrayList.toArray(AbstractBootstrapSchema.DEFAULT_DEPS));
    }
}
