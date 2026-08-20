package org.apache.ldap.common.message;

import java.util.NoSuchElementException;
import javax.naming.NamingEnumeration;
/* loaded from: classes3.dex */
public class ArrayNamingEnumeration implements NamingEnumeration {
    private int index = 0;
    private final Object[] objects;

    public ArrayNamingEnumeration(Object[] objArr) {
        this.objects = objArr;
    }

    public void close() {
        Object[] objArr = this.objects;
        if (objArr != null) {
            this.index = objArr.length;
        }
    }

    public boolean hasMore() {
        Object[] objArr = this.objects;
        return (objArr == null || objArr.length == 0 || this.index >= objArr.length) ? false : true;
    }

    public Object next() {
        int i;
        Object[] objArr = this.objects;
        if (objArr == null || objArr.length == 0 || (i = this.index) >= objArr.length) {
            throw new NoSuchElementException();
        }
        Object obj = objArr[i];
        this.index = i + 1;
        return obj;
    }

    public boolean hasMoreElements() {
        return hasMore();
    }

    public Object nextElement() {
        return next();
    }
}
