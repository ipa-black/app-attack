package org.apache.commons.collections.primitives;

import java.util.EmptyStackException;
/* loaded from: classes5.dex */
public class IntStack {
    private ArrayIntList list = new ArrayIntList();

    public IntStack() {
    }

    public IntStack(int[] iArr) {
        for (int i : iArr) {
            this.list.add(i);
        }
    }

    public boolean empty() {
        return this.list.isEmpty();
    }

    public int peek() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayIntList arrayIntList = this.list;
        return arrayIntList.get(arrayIntList.size() - 1);
    }

    public int peek(int i) {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayIntList arrayIntList = this.list;
        return arrayIntList.get((arrayIntList.size() - i) - 1);
    }

    public int pop() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayIntList arrayIntList = this.list;
        return arrayIntList.removeElementAt(arrayIntList.size() - 1);
    }

    public int push(int i) {
        this.list.add(i);
        return i;
    }

    public int search(int i) {
        for (int size = this.list.size() - 1; size >= 0; size--) {
            if (this.list.get(size) == i) {
                return this.list.size() - size;
            }
        }
        return -1;
    }

    public int get(int i) {
        return this.list.get(i);
    }

    public int size() {
        return this.list.size();
    }

    public void clear() {
        this.list.clear();
    }
}
