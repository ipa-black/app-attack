package org.apache.ldap.server.schema.bootstrap;

import java.util.ArrayList;
import org.apache.ldap.server.SystemPartition;
/* loaded from: classes3.dex */
public class SystemSchema extends AbstractBootstrapSchema {
    public SystemSchema() {
        super(SystemPartition.ADMIN_PRINCIPAL, "system", "org.apache.ldap.server.schema.bootstrap");
        ArrayList arrayList = new ArrayList();
        arrayList.clear();
        arrayList.add("");
        setDependencies((String[]) arrayList.toArray(AbstractBootstrapSchema.DEFAULT_DEPS));
    }
}
