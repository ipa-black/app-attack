package org.apache.ldap.server.schema.bootstrap;

import java.util.ArrayList;
import org.apache.ldap.server.SystemPartition;
/* loaded from: classes3.dex */
public class AutofsSchema extends AbstractBootstrapSchema {
    public AutofsSchema() {
        super(SystemPartition.ADMIN_PRINCIPAL, "autofs", "org.apache.ldap.server.schema.bootstrap");
        ArrayList arrayList = new ArrayList();
        arrayList.clear();
        arrayList.add("system");
        arrayList.add("core");
        arrayList.add("cosine");
        setDependencies((String[]) arrayList.toArray(AbstractBootstrapSchema.DEFAULT_DEPS));
    }
}
