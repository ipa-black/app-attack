package org.apache.commons.collections.primitives;

import java.util.EmptyStackException;
/* loaded from: classes5.dex */
public class LongStack {
    private ArrayLongList list = new ArrayLongList();

    public LongStack() {
    }

    public LongStack(long[] jArr) {
        for (long j : jArr) {
            this.list.add(j);
        }
    }

    public boolean empty() {
        return this.list.isEmpty();
    }

    public long peek() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayLongList arrayLongList = this.list;
        return arrayLongList.get(arrayLongList.size() - 1);
    }

    public long peek(int i) {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayLongList arrayLongList = this.list;
        return arrayLongList.get((arrayLongList.size() - i) - 1);
    }

    public long pop() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayLongList arrayLongList = this.list;
        return arrayLongList.removeElementAt(arrayLongList.size() - 1);
    }

    public long push(long j) {
        this.list.add(j);
        return j;
    }

    public int search(long j) {
        for (int size = this.list.size() - 1; size >= 0; size--) {
            if (this.list.get(size) == j) {
                return this.list.size() - size;
            }
        }
        return -1;
    }

    public long get(int i) {
        return this.list.get(i);
    }

    public int size() {
        return this.list.size();
    }

    public void clear() {
        this.list.clear();
    }
}
