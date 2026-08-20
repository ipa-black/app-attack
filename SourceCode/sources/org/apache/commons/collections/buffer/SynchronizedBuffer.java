package org.apache.commons.collections.buffer;

import org.apache.commons.collections.Buffer;
import org.apache.commons.collections.collection.SynchronizedCollection;
/* loaded from: classes5.dex */
public class SynchronizedBuffer extends SynchronizedCollection implements Buffer {
    public static Buffer decorate(Buffer buffer) {
        return new SynchronizedBuffer(buffer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SynchronizedBuffer(Buffer buffer) {
        super(buffer);
    }

    protected SynchronizedBuffer(Buffer buffer, Object obj) {
        super(buffer, obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Buffer getBuffer() {
        return (Buffer) this.collection;
    }

    public Object get() {
        Object obj;
        synchronized (this.lock) {
            obj = getBuffer().get();
        }
        return obj;
    }

    public Object remove() {
        Object remove;
        synchronized (this.lock) {
            remove = getBuffer().remove();
        }
        return remove;
    }
}
