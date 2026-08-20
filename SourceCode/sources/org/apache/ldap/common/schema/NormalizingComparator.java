package org.apache.ldap.common.schema;

import java.util.Comparator;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class NormalizingComparator implements Comparator {
    private Comparator comparator;
    private Normalizer normalizer;

    public NormalizingComparator(Normalizer normalizer, Comparator comparator) {
        this.normalizer = normalizer;
        this.comparator = comparator;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        try {
            obj = this.normalizer.normalize(obj);
        } catch (NamingException e2) {
            e2.printStackTrace();
        }
        try {
            obj2 = this.normalizer.normalize(obj2);
        } catch (NamingException e3) {
            e3.printStackTrace();
        }
        return this.comparator.compare(obj, obj2);
    }
}
