package org.apache.ldap.common.util;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Comparator;
/* loaded from: classes3.dex */
public class BigIntegerComparator implements Comparator, Serializable {
    public static final BigIntegerComparator INSTANCE = new BigIntegerComparator();
    static final long serialVersionUID = 1;

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        if (obj != null) {
            if (obj2 == null) {
                throw new IllegalArgumentException("Argument 'an_obj2' is null");
            }
            return ((BigInteger) obj).compareTo((BigInteger) obj2);
        }
        throw new IllegalArgumentException("Argument 'an_obj1' is null");
    }
}
