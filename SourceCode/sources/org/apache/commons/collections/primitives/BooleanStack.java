package org.apache.commons.collections.primitives;

import java.util.EmptyStackException;
/* loaded from: classes5.dex */
public class BooleanStack {
    private ArrayBooleanList list = new ArrayBooleanList();

    public BooleanStack() {
    }

    public BooleanStack(boolean[] zArr) {
        for (boolean z : zArr) {
            this.list.add(z);
        }
    }

    public boolean empty() {
        return this.list.isEmpty();
    }

    public boolean peek() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayBooleanList arrayBooleanList = this.list;
        return arrayBooleanList.get(arrayBooleanList.size() - 1);
    }

    public boolean peek(int i) {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayBooleanList arrayBooleanList = this.list;
        return arrayBooleanList.get((arrayBooleanList.size() - i) - 1);
    }

    public boolean pop() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayBooleanList arrayBooleanList = this.list;
        return arrayBooleanList.removeElementAt(arrayBooleanList.size() - 1);
    }

    public boolean push(boolean z) {
        this.list.add(z);
        return z;
    }

    public int search(boolean z) {
        for (int size = this.list.size() - 1; size >= 0; size--) {
            if (this.list.get(size) == z) {
                return this.list.size() - size;
            }
        }
        return -1;
    }

    public boolean get(int i) {
        return this.list.get(i);
    }

    public int size() {
        return this.list.size();
    }

    public void clear() {
        this.list.clear();
    }
}
