package org.apache.commons.collections;

import com.appsgeyser.multiTabApp.BuildConfig;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes5.dex */
public class MultiHashMap extends HashMap implements MultiMap {
    private static final long serialVersionUID = 1943563828307035349L;
    private transient Collection values;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.commons.collections.MultiHashMap$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public class AnonymousClass1 {
    }

    public MultiHashMap() {
        this.values = null;
    }

    public MultiHashMap(int i) {
        super(i);
        this.values = null;
    }

    public MultiHashMap(int i, float f2) {
        super(i, f2);
        this.values = null;
    }

    public MultiHashMap(Map map) {
        super(map);
        this.values = null;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        String str;
        objectInputStream.defaultReadObject();
        try {
            str = System.getProperty("java.version");
        } catch (SecurityException unused) {
            str = "1.2";
        }
        if (str.startsWith("1.2") || str.startsWith(BuildConfig.VERSION_NAME)) {
            for (Map.Entry entry : entrySet()) {
                super.put(entry.getKey(), ((Collection) entry.getValue()).iterator().next());
            }
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        Collection collection = (Collection) super.get(obj);
        if (collection == null) {
            collection = createCollection(null);
            super.put(obj, collection);
        }
        if (collection.add(obj2)) {
            return obj2;
        }
        return null;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        Set<Map.Entry> entrySet = super.entrySet();
        if (entrySet == null) {
            return false;
        }
        for (Map.Entry entry : entrySet) {
            if (((Collection) entry.getValue()).contains(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.HashMap, java.util.Map, org.apache.commons.collections.MultiMap
    public Object remove(Object obj, Object obj2) {
        Collection collection = (Collection) super.get(obj);
        if (collection == null) {
            return null;
        }
        collection.remove(obj2);
        if (collection.isEmpty()) {
            remove(obj);
        }
        return obj2;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        for (Map.Entry entry : super.entrySet()) {
            ((Collection) entry.getValue()).clear();
        }
        super.clear();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Collection values() {
        Collection collection = this.values;
        if (collection != null) {
            return collection;
        }
        Values values = new Values(this, null);
        this.values = values;
        return values;
    }

    /* loaded from: classes5.dex */
    private class Values extends AbstractCollection {
        private Values() {
        }

        /* synthetic */ Values(MultiHashMap multiHashMap, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return new ValueIterator(MultiHashMap.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            Iterator it = iterator();
            int i = 0;
            while (it.hasNext()) {
                it.next();
                i++;
            }
            return i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            MultiHashMap.this.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class ValueIterator implements Iterator {
        private Iterator backedIterator;
        private Iterator tempIterator;

        /* synthetic */ ValueIterator(MultiHashMap multiHashMap, AnonymousClass1 anonymousClass1) {
            this();
        }

        private ValueIterator() {
            this.backedIterator = MultiHashMap.super.values().iterator();
        }

        private boolean searchNextIterator() {
            while (true) {
                Iterator it = this.tempIterator;
                if (it != null && it.hasNext()) {
                    return true;
                }
                if (!this.backedIterator.hasNext()) {
                    return false;
                }
                this.tempIterator = ((Collection) this.backedIterator.next()).iterator();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return searchNextIterator();
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!searchNextIterator()) {
                throw new NoSuchElementException();
            }
            return this.tempIterator.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            Iterator it = this.tempIterator;
            if (it == null) {
                throw new IllegalStateException();
            }
            it.remove();
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap
    public Object clone() {
        MultiHashMap multiHashMap = (MultiHashMap) super.clone();
        for (Map.Entry entry : entrySet()) {
            entry.setValue(createCollection((Collection) entry.getValue()));
        }
        return multiHashMap;
    }

    protected Collection createCollection(Collection collection) {
        if (collection == null) {
            return new ArrayList();
        }
        return new ArrayList(collection);
    }
}
