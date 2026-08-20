package org.apache.mina.util;

import java.io.Serializable;
import java.util.Arrays;
/* loaded from: classes5.dex */
public class Queue implements Serializable {
    private static final int DEFAULT_CAPACITY = 4;
    private static final int DEFAULT_MASK = 3;
    private static final long serialVersionUID = 3835151744526464313L;
    private int first = 0;
    private int last = 0;
    private int size = 0;
    private Object[] items = new Object[4];
    private int mask = 3;

    public int capacity() {
        return this.items.length;
    }

    public void clear() {
        Arrays.fill(this.items, (Object) null);
        this.first = 0;
        this.last = 0;
        this.size = 0;
    }

    public Object pop() {
        int i = this.size;
        if (i == 0) {
            return null;
        }
        Object[] objArr = this.items;
        int i2 = this.first;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.first = this.mask & (i2 + 1);
        this.size = i - 1;
        return obj;
    }

    public void push(Object obj) {
        int i = this.size;
        Object[] objArr = this.items;
        if (i == objArr.length) {
            int length = objArr.length;
            int i2 = length * 2;
            Object[] objArr2 = new Object[i2];
            int i3 = this.first;
            int i4 = this.last;
            if (i3 < i4) {
                System.arraycopy(objArr, i3, objArr2, 0, i4 - i3);
            } else {
                System.arraycopy(objArr, i3, objArr2, 0, length - i3);
                System.arraycopy(this.items, 0, objArr2, length - this.first, this.last);
            }
            this.first = 0;
            this.last = length;
            this.items = objArr2;
            this.mask = i2 - 1;
        }
        Object[] objArr3 = this.items;
        int i5 = this.last;
        objArr3[i5] = obj;
        this.last = this.mask & (i5 + 1);
        this.size++;
    }

    public Object first() {
        if (this.size == 0) {
            return null;
        }
        return this.items[this.first];
    }

    public Object last() {
        if (this.size == 0) {
            return null;
        }
        Object[] objArr = this.items;
        return objArr[((this.last + objArr.length) - 1) & this.mask];
    }

    public Object get(int i) {
        return this.items[this.mask & (this.first + i)];
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public int size() {
        return this.size;
    }

    public String toString() {
        return new StringBuffer("first=").append(this.first).append(", last=").append(this.last).append(", size=").append(this.size).append(", mask = ").append(this.mask).toString();
    }
}
