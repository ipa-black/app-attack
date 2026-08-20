package org.apache.commons.collections.keyvalue;

import java.io.Serializable;
import java.util.Arrays;
/* loaded from: classes5.dex */
public class MultiKey implements Serializable {
    private static final long serialVersionUID = 4465448607415788805L;
    private final int hashCode;
    private final Object[] keys;

    public MultiKey(Object obj, Object obj2) {
        this(new Object[]{obj, obj2}, false);
    }

    public MultiKey(Object obj, Object obj2, Object obj3) {
        this(new Object[]{obj, obj2, obj3}, false);
    }

    public MultiKey(Object obj, Object obj2, Object obj3, Object obj4) {
        this(new Object[]{obj, obj2, obj3, obj4}, false);
    }

    public MultiKey(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        this(new Object[]{obj, obj2, obj3, obj4, obj5}, false);
    }

    public MultiKey(Object[] objArr) {
        this(objArr, true);
    }

    protected MultiKey(Object[] objArr, boolean z) {
        if (objArr == null) {
            throw new IllegalArgumentException("The array of keys must not be null");
        }
        if (z) {
            this.keys = (Object[]) objArr.clone();
        } else {
            this.keys = objArr;
        }
        int i = 0;
        for (int i2 = 0; i2 < objArr.length; i2++) {
            Object obj = objArr[i2];
            if (obj != null) {
                if (i2 == 0) {
                    i = obj.hashCode();
                } else {
                    i ^= obj.hashCode();
                }
            }
        }
        this.hashCode = i;
    }

    public Object[] getKeys() {
        return (Object[]) this.keys.clone();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof MultiKey) {
            return Arrays.equals(this.keys, ((MultiKey) obj).keys);
        }
        return false;
    }

    public int hashCode() {
        return this.hashCode;
    }

    public String toString() {
        return new StringBuffer("MultiKey").append(Arrays.asList(this.keys).toString()).toString();
    }
}
