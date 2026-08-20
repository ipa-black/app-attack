package org.apache.ldap.common.util;

import java.util.Enumeration;
import java.util.NoSuchElementException;
/* loaded from: classes3.dex */
public class ArrayEnumeration implements Enumeration {
    private final Object[] array;
    private int index = 0;

    public ArrayEnumeration(Object[] objArr) {
        this.array = objArr;
    }

    @Override // java.util.Enumeration
    public final boolean hasMoreElements() {
        Object[] objArr = this.array;
        return (objArr == null || objArr.length == 0 || this.index >= objArr.length) ? false : true;
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        if (!hasMoreElements()) {
            throw new NoSuchElementException("no more objects in array");
        }
        Object[] objArr = this.array;
        int i = this.index;
        this.index = i + 1;
        return objArr[i];
    }
}
