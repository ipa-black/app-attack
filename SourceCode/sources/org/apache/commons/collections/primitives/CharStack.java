package org.apache.commons.collections.primitives;

import java.util.EmptyStackException;
/* loaded from: classes5.dex */
public class CharStack {
    private ArrayCharList list = new ArrayCharList();

    public CharStack() {
    }

    public CharStack(char[] cArr) {
        for (char c2 : cArr) {
            this.list.add(c2);
        }
    }

    public boolean empty() {
        return this.list.isEmpty();
    }

    public char peek() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayCharList arrayCharList = this.list;
        return arrayCharList.get(arrayCharList.size() - 1);
    }

    public char peek(int i) {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayCharList arrayCharList = this.list;
        return arrayCharList.get((arrayCharList.size() - i) - 1);
    }

    public char pop() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayCharList arrayCharList = this.list;
        return arrayCharList.removeElementAt(arrayCharList.size() - 1);
    }

    public char push(char c2) {
        this.list.add(c2);
        return c2;
    }

    public int search(char c2) {
        for (int size = this.list.size() - 1; size >= 0; size--) {
            if (this.list.get(size) == c2) {
                return this.list.size() - size;
            }
        }
        return -1;
    }

    public char get(int i) {
        return this.list.get(i);
    }

    public int size() {
        return this.list.size();
    }

    public void clear() {
        this.list.clear();
    }
}
