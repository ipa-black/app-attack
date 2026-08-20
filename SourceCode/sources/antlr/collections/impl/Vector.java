package antlr.collections.impl;

import java.util.Enumeration;
/* loaded from: classes.dex */
public class Vector implements Cloneable {
    protected Object[] data;
    protected int lastElement;

    public Vector() {
        this(10);
    }

    public Vector(int i) {
        this.lastElement = -1;
        this.data = new Object[i];
    }

    public synchronized void appendElement(Object obj) {
        ensureCapacity(this.lastElement + 2);
        Object[] objArr = this.data;
        int i = this.lastElement + 1;
        this.lastElement = i;
        objArr[i] = obj;
    }

    public int capacity() {
        return this.data.length;
    }

    public Object clone() {
        try {
            Vector vector = (Vector) super.clone();
            Object[] objArr = new Object[size()];
            vector.data = objArr;
            System.arraycopy(this.data, 0, objArr, 0, size());
            return vector;
        } catch (CloneNotSupportedException unused) {
            System.err.println("cannot clone Vector.super");
            return null;
        }
    }

    public synchronized Object elementAt(int i) {
        Object[] objArr;
        objArr = this.data;
        if (i >= objArr.length) {
            throw new ArrayIndexOutOfBoundsException(new StringBuffer().append(i).append(" >= ").append(this.data.length).toString());
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(new StringBuffer().append(i).append(" < 0 ").toString());
        }
        return objArr[i];
    }

    public synchronized Enumeration elements() {
        return new VectorEnumerator(this);
    }

    public synchronized void ensureCapacity(int i) {
        int i2 = i + 1;
        Object[] objArr = this.data;
        if (i2 > objArr.length) {
            int length = objArr.length * 2;
            if (i2 <= length) {
                i2 = length;
            }
            Object[] objArr2 = new Object[i2];
            this.data = objArr2;
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        }
    }

    public synchronized boolean removeElement(Object obj) {
        int i;
        int i2 = 0;
        while (true) {
            i = this.lastElement;
            if (i2 > i || this.data[i2] == obj) {
                break;
            }
            i2++;
        }
        if (i2 <= i) {
            Object[] objArr = this.data;
            objArr[i2] = null;
            int i3 = i - i2;
            if (i3 > 0) {
                System.arraycopy(objArr, i2 + 1, objArr, i2, i3);
            }
            this.lastElement--;
            return true;
        }
        return false;
    }

    public synchronized void setElementAt(Object obj, int i) {
        Object[] objArr = this.data;
        if (i >= objArr.length) {
            throw new ArrayIndexOutOfBoundsException(new StringBuffer().append(i).append(" >= ").append(this.data.length).toString());
        }
        objArr[i] = obj;
        if (i > this.lastElement) {
            this.lastElement = i;
        }
    }

    public int size() {
        return this.lastElement + 1;
    }
}
