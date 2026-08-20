package org.apache.commons.collections.primitives;

import java.util.EmptyStackException;
/* loaded from: classes5.dex */
public class FloatStack {
    private ArrayFloatList list = new ArrayFloatList();

    public FloatStack() {
    }

    public FloatStack(float[] fArr) {
        for (float f2 : fArr) {
            this.list.add(f2);
        }
    }

    public boolean empty() {
        return this.list.isEmpty();
    }

    public float peek() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayFloatList arrayFloatList = this.list;
        return arrayFloatList.get(arrayFloatList.size() - 1);
    }

    public float peek(int i) {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayFloatList arrayFloatList = this.list;
        return arrayFloatList.get((arrayFloatList.size() - i) - 1);
    }

    public float pop() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayFloatList arrayFloatList = this.list;
        return arrayFloatList.removeElementAt(arrayFloatList.size() - 1);
    }

    public float push(float f2) {
        this.list.add(f2);
        return f2;
    }

    public int search(float f2) {
        for (int size = this.list.size() - 1; size >= 0; size--) {
            if (this.list.get(size) == f2) {
                return this.list.size() - size;
            }
        }
        return -1;
    }

    public float get(int i) {
        return this.list.get(i);
    }

    public int size() {
        return this.list.size();
    }

    public void clear() {
        this.list.clear();
    }
}
