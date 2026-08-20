package org.apache.commons.collections.map;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import org.apache.commons.collections.BoundedMap;
import org.apache.commons.collections.map.AbstractHashedMap;
import org.apache.commons.collections.map.AbstractLinkedMap;
/* loaded from: classes5.dex */
public class LRUMap extends AbstractLinkedMap implements BoundedMap, Serializable, Cloneable {
    protected static final int DEFAULT_MAX_SIZE = 100;
    static final long serialVersionUID = -612114643488955218L;
    private transient int maxSize;

    protected boolean removeLRU(AbstractLinkedMap.LinkEntry linkEntry) {
        return true;
    }

    public LRUMap() {
        this(100, 0.75f);
    }

    public LRUMap(int i) {
        this(i, 0.75f);
    }

    public LRUMap(int i, float f2) {
        super(i < 1 ? 16 : i, f2);
        if (i < 1) {
            throw new IllegalArgumentException("LRUMap max size must be greater than 0");
        }
        this.maxSize = i;
    }

    public LRUMap(Map map) {
        this(map.size(), 0.75f);
        putAll(map);
    }

    @Override // org.apache.commons.collections.map.AbstractHashedMap, java.util.Map
    public Object get(Object obj) {
        AbstractLinkedMap.LinkEntry linkEntry = (AbstractLinkedMap.LinkEntry) getEntry(obj);
        if (linkEntry == null) {
            return null;
        }
        moveToMRU(linkEntry);
        return linkEntry.getValue();
    }

    protected void moveToMRU(AbstractLinkedMap.LinkEntry linkEntry) {
        if (linkEntry.after != this.header) {
            this.modCount++;
            linkEntry.before.after = linkEntry.after;
            linkEntry.after.before = linkEntry.before;
            linkEntry.after = this.header;
            linkEntry.before = this.header.before;
            this.header.before.after = linkEntry;
            this.header.before = linkEntry;
        }
    }

    @Override // org.apache.commons.collections.map.AbstractHashedMap
    protected void updateEntry(AbstractHashedMap.HashEntry hashEntry, Object obj) {
        moveToMRU((AbstractLinkedMap.LinkEntry) hashEntry);
        hashEntry.setValue(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.map.AbstractHashedMap
    public void addMapping(int i, int i2, Object obj, Object obj2) {
        if (this.size >= this.maxSize && removeLRU(this.header.before)) {
            reuseMapping(this.header.after, i, i2, obj, obj2);
        } else {
            super.addMapping(i, i2, obj, obj2);
        }
    }

    protected void reuseMapping(AbstractLinkedMap.LinkEntry linkEntry, int i, int i2, Object obj, Object obj2) {
        int hashIndex = hashIndex(linkEntry.hashCode, this.data.length);
        AbstractHashedMap.HashEntry hashEntry = null;
        for (AbstractHashedMap.HashEntry hashEntry2 = this.data[hashIndex]; hashEntry2 != linkEntry; hashEntry2 = hashEntry2.next) {
            hashEntry = hashEntry2;
        }
        this.modCount++;
        removeEntry(linkEntry, hashIndex, hashEntry);
        reuseEntry(linkEntry, i, i2, obj, obj2);
        addEntry(linkEntry, i);
    }

    @Override // org.apache.commons.collections.BoundedMap
    public boolean isFull() {
        return this.size >= this.maxSize;
    }

    @Override // org.apache.commons.collections.BoundedMap
    public int maxSize() {
        return this.maxSize;
    }

    @Override // org.apache.commons.collections.map.AbstractHashedMap
    public Object clone() {
        return super.clone();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        doWriteObject(objectOutputStream);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        doReadObject(objectInputStream);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.map.AbstractHashedMap
    public void doWriteObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.maxSize);
        super.doWriteObject(objectOutputStream);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.collections.map.AbstractHashedMap
    public void doReadObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.maxSize = objectInputStream.readInt();
        super.doReadObject(objectInputStream);
    }
}
