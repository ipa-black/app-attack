package org.apache.commons.collections.map;

import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.collections.Transformer;
import org.apache.commons.collections.collection.AbstractCollectionDecorator;
import org.apache.commons.collections.iterators.AbstractIteratorDecorator;
import org.apache.commons.collections.keyvalue.AbstractMapEntryDecorator;
/* loaded from: classes5.dex */
public class TransformedMap extends AbstractMapDecorator {
    protected final Transformer keyTransformer;
    protected final Transformer valueTransformer;

    public static Map decorate(Map map, Transformer transformer, Transformer transformer2) {
        return new TransformedMap(map, transformer, transformer2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TransformedMap(Map map, Transformer transformer, Transformer transformer2) {
        super(map);
        this.keyTransformer = transformer;
        this.valueTransformer = transformer2;
    }

    protected Object transformKey(Object obj) {
        Transformer transformer = this.keyTransformer;
        return transformer == null ? obj : transformer.transform(obj);
    }

    protected Object transformValue(Object obj) {
        Transformer transformer = this.valueTransformer;
        return transformer == null ? obj : transformer.transform(obj);
    }

    protected Map transformMap(Map map) {
        HashMap hashMap = new HashMap(map.size());
        for (Map.Entry entry : map.entrySet()) {
            hashMap.put(transformKey(entry.getKey()), transformValue(entry.getValue()));
        }
        return hashMap;
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections.BidiMap
    public Object put(Object obj, Object obj2) {
        return getMap().put(transformKey(obj), transformValue(obj2));
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public void putAll(Map map) {
        getMap().putAll(transformMap(map));
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public Set entrySet() {
        if (this.valueTransformer == null) {
            return this.map.entrySet();
        }
        return new TransformedMapEntrySet(this.map.entrySet(), this.valueTransformer);
    }

    /* loaded from: classes5.dex */
    static class TransformedMapEntrySet extends AbstractCollectionDecorator implements Set {
        private final Transformer valueTransformer;

        protected TransformedMapEntrySet(Set set, Transformer transformer) {
            super(set);
            this.valueTransformer = transformer;
        }

        @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection, java.lang.Iterable, org.apache.commons.collections.Bag
        public Iterator iterator() {
            return new TransformedMapEntrySetIterator(this.collection.iterator(), this.valueTransformer);
        }

        @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection
        public Object[] toArray() {
            Object[] array = this.collection.toArray();
            for (int i = 0; i < array.length; i++) {
                array[i] = new TransformedMapEntry((Map.Entry) array[i], this.valueTransformer);
            }
            return array;
        }

        @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection
        public Object[] toArray(Object[] objArr) {
            Object[] array = this.collection.toArray(objArr.length > 0 ? (Object[]) Array.newInstance(objArr.getClass().getComponentType(), 0) : objArr);
            for (int i = 0; i < array.length; i++) {
                array[i] = new TransformedMapEntry((Map.Entry) array[i], this.valueTransformer);
            }
            if (array.length > objArr.length) {
                return array;
            }
            System.arraycopy(array, 0, objArr, 0, array.length);
            if (objArr.length > array.length) {
                objArr[array.length] = null;
            }
            return objArr;
        }
    }

    /* loaded from: classes5.dex */
    static class TransformedMapEntrySetIterator extends AbstractIteratorDecorator {
        private final Transformer valueTransformer;

        protected TransformedMapEntrySetIterator(Iterator it, Transformer transformer) {
            super(it);
            this.valueTransformer = transformer;
        }

        @Override // org.apache.commons.collections.iterators.AbstractIteratorDecorator, java.util.Iterator
        public Object next() {
            return new TransformedMapEntry((Map.Entry) this.iterator.next(), this.valueTransformer);
        }
    }

    /* loaded from: classes5.dex */
    static class TransformedMapEntry extends AbstractMapEntryDecorator {
        private final Transformer valueTransformer;

        protected TransformedMapEntry(Map.Entry entry, Transformer transformer) {
            super(entry);
            this.valueTransformer = transformer;
        }

        @Override // org.apache.commons.collections.keyvalue.AbstractMapEntryDecorator, java.util.Map.Entry
        public Object setValue(Object obj) {
            Transformer transformer = this.valueTransformer;
            if (transformer != null) {
                obj = transformer.transform(obj);
            }
            return this.entry.setValue(obj);
        }
    }
}
