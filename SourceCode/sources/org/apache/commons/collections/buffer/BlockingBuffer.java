package org.apache.commons.collections.buffer;

import java.util.Collection;
import org.apache.commons.collections.Buffer;
import org.apache.commons.collections.BufferUnderflowException;
/* loaded from: classes5.dex */
public class BlockingBuffer extends SynchronizedBuffer {
    public static Buffer decorate(Buffer buffer) {
        return new BlockingBuffer(buffer);
    }

    protected BlockingBuffer(Buffer buffer) {
        super(buffer);
    }

    @Override // org.apache.commons.collections.collection.SynchronizedCollection, java.util.Collection
    public boolean add(Object obj) {
        boolean add;
        synchronized (this.lock) {
            add = this.collection.add(obj);
            notifyAll();
        }
        return add;
    }

    @Override // org.apache.commons.collections.collection.SynchronizedCollection, java.util.Collection
    public boolean addAll(Collection collection) {
        boolean addAll;
        synchronized (this.lock) {
            addAll = this.collection.addAll(collection);
            notifyAll();
        }
        return addAll;
    }

    @Override // org.apache.commons.collections.buffer.SynchronizedBuffer, org.apache.commons.collections.Buffer
    public Object get() {
        Object obj;
        synchronized (this.lock) {
            while (this.collection.isEmpty()) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    throw new BufferUnderflowException();
                }
            }
            obj = getBuffer().get();
        }
        return obj;
    }

    @Override // org.apache.commons.collections.buffer.SynchronizedBuffer, org.apache.commons.collections.Buffer
    public Object remove() {
        Object remove;
        synchronized (this.lock) {
            while (this.collection.isEmpty()) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    throw new BufferUnderflowException();
                }
            }
            remove = getBuffer().remove();
        }
        return remove;
    }
}
