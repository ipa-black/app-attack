package org.apache.mina.util;

import java.io.Serializable;
import java.util.Arrays;
/* loaded from: classes5.dex */
public class Stack implements Serializable {
    private static final int DEFAULT_CAPACITY = 4;
    private static final long serialVersionUID = 3546919169401434168L;
    private int size = 0;
    private Object[] items = new Object[4];

    public void clear() {
        Arrays.fill(this.items, (Object) null);
        this.size = 0;
    }

    public Object pop() {
        int i = this.size;
        if (i == 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.items;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.size = i - 1;
        return obj;
    }

    public void push(Object obj) {
        int i = this.size;
        Object[] objArr = this.items;
        if (i == objArr.length) {
            Object[] objArr2 = new Object[objArr.length * 2];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            this.items = objArr2;
        }
        Object[] objArr3 = this.items;
        int i2 = this.size;
        objArr3[i2] = obj;
        this.size = i2 + 1;
    }

    public void remove(Object obj) {
        for (int i = this.size - 1; i >= 0; i--) {
            Object[] objArr = this.items;
            if (objArr[i] == obj) {
                System.arraycopy(objArr, i + 1, objArr, i, (this.size - i) - 1);
                Object[] objArr2 = this.items;
                int i2 = this.size;
                objArr2[i2 - 1] = null;
                this.size = i2 - 1;
                return;
            }
        }
    }

    public Object first() {
        int i = this.size;
        if (i == 0) {
            return null;
        }
        return this.items[i - 1];
    }

    public Object last() {
        if (this.size == 0) {
            return null;
        }
        return this.items[0];
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public int size() {
        return this.size;
    }
}
