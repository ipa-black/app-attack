package org.apache.commons.collections.primitives;

import java.util.EmptyStackException;
/* loaded from: classes5.dex */
public class ByteStack {
    private ArrayByteList list = new ArrayByteList();

    public ByteStack() {
    }

    public ByteStack(byte[] bArr) {
        for (byte b2 : bArr) {
            this.list.add(b2);
        }
    }

    public boolean empty() {
        return this.list.isEmpty();
    }

    public byte peek() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayByteList arrayByteList = this.list;
        return arrayByteList.get(arrayByteList.size() - 1);
    }

    public byte peek(int i) {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayByteList arrayByteList = this.list;
        return arrayByteList.get((arrayByteList.size() - i) - 1);
    }

    public byte pop() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayByteList arrayByteList = this.list;
        return arrayByteList.removeElementAt(arrayByteList.size() - 1);
    }

    public byte push(byte b2) {
        this.list.add(b2);
        return b2;
    }

    public int search(byte b2) {
        for (int size = this.list.size() - 1; size >= 0; size--) {
            if (this.list.get(size) == b2) {
                return this.list.size() - size;
            }
        }
        return -1;
    }

    public byte get(int i) {
        return this.list.get(i);
    }

    public int size() {
        return this.list.size();
    }

    public void clear() {
        this.list.clear();
    }
}
