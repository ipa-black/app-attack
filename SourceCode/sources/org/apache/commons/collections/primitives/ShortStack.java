package org.apache.commons.collections.primitives;

import java.util.EmptyStackException;
/* loaded from: classes5.dex */
public class ShortStack {
    private ArrayShortList list = new ArrayShortList();

    public ShortStack() {
    }

    public ShortStack(short[] sArr) {
        for (short s : sArr) {
            this.list.add(s);
        }
    }

    public boolean empty() {
        return this.list.isEmpty();
    }

    public short peek() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayShortList arrayShortList = this.list;
        return arrayShortList.get(arrayShortList.size() - 1);
    }

    public short peek(int i) {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayShortList arrayShortList = this.list;
        return arrayShortList.get((arrayShortList.size() - i) - 1);
    }

    public short pop() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayShortList arrayShortList = this.list;
        return arrayShortList.removeElementAt(arrayShortList.size() - 1);
    }

    public short push(short s) {
        this.list.add(s);
        return s;
    }

    public int search(short s) {
        for (int size = this.list.size() - 1; size >= 0; size--) {
            if (this.list.get(size) == s) {
                return this.list.size() - size;
            }
        }
        return -1;
    }

    public short get(int i) {
        return this.list.get(i);
    }

    public int size() {
        return this.list.size();
    }

    public void clear() {
        this.list.clear();
    }
}
