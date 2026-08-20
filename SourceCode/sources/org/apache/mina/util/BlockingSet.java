package org.apache.mina.util;

import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes5.dex */
public class BlockingSet extends HashSet {
    private static final long serialVersionUID = 3258134669538309941L;
    private int waiters = 0;

    @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public synchronized boolean add(Object obj) {
        boolean add;
        add = super.add(obj);
        if (add && this.waiters > 0) {
            notify();
        }
        return add;
    }

    @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return super.iterator();
    }

    @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public synchronized boolean remove(Object obj) {
        return super.remove(obj);
    }

    public synchronized void waitForNewItem() throws InterruptedException {
        this.waiters++;
        while (isEmpty()) {
            wait();
        }
        this.waiters--;
    }
}
