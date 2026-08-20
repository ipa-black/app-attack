package org.apache.commons.collections.primitives;

import java.util.EmptyStackException;
/* loaded from: classes5.dex */
public class DoubleStack {
    private ArrayDoubleList list = new ArrayDoubleList();

    public DoubleStack() {
    }

    public DoubleStack(double[] dArr) {
        for (double d2 : dArr) {
            this.list.add(d2);
        }
    }

    public boolean empty() {
        return this.list.isEmpty();
    }

    public double peek() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayDoubleList arrayDoubleList = this.list;
        return arrayDoubleList.get(arrayDoubleList.size() - 1);
    }

    public double peek(int i) {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayDoubleList arrayDoubleList = this.list;
        return arrayDoubleList.get((arrayDoubleList.size() - i) - 1);
    }

    public double pop() {
        if (this.list.isEmpty()) {
            throw new EmptyStackException();
        }
        ArrayDoubleList arrayDoubleList = this.list;
        return arrayDoubleList.removeElementAt(arrayDoubleList.size() - 1);
    }

    public double push(double d2) {
        this.list.add(d2);
        return d2;
    }

    public int search(double d2) {
        for (int size = this.list.size() - 1; size >= 0; size--) {
            if (this.list.get(size) == d2) {
                return this.list.size() - size;
            }
        }
        return -1;
    }

    public double get(int i) {
        return this.list.get(i);
    }

    public int size() {
        return this.list.size();
    }

    public void clear() {
        this.list.clear();
    }
}
