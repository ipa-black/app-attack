package org.apache.ldap.server.schema;

import java.io.Serializable;
import java.util.Comparator;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class SerializableComparator implements Comparator, Serializable {
    private static ComparatorRegistry registry = null;
    private static final long serialVersionUID = 3257566226288162870L;
    private String matchingRuleOid;
    private transient Comparator wrapped;

    public static void setRegistry(ComparatorRegistry comparatorRegistry) {
        registry = comparatorRegistry;
    }

    public SerializableComparator(String str) {
        this.matchingRuleOid = str;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        if (this.wrapped == null) {
            try {
                this.wrapped = registry.lookup(this.matchingRuleOid);
            } catch (NamingException e2) {
                e2.printStackTrace();
            }
        }
        return this.wrapped.compare(obj, obj2);
    }
}
