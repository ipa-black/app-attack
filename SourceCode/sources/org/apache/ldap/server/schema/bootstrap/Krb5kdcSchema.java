package org.apache.ldap.server.schema.bootstrap;

import java.util.ArrayList;
import org.apache.ldap.server.SystemPartition;
/* loaded from: classes3.dex */
public class Krb5kdcSchema extends AbstractBootstrapSchema {
    public Krb5kdcSchema() {
        super(SystemPartition.ADMIN_PRINCIPAL, "krb5kdc", "org.apache.ldap.server.schema.bootstrap");
        ArrayList arrayList = new ArrayList();
        arrayList.clear();
        arrayList.add("system");
        arrayList.add("core");
        setDependencies((String[]) arrayList.toArray(AbstractBootstrapSchema.DEFAULT_DEPS));
    }
}
