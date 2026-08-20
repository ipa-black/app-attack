package org.apache.commons.collections.map;

import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.collections.Predicate;
import org.apache.commons.collections.collection.AbstractCollectionDecorator;
import org.apache.commons.collections.iterators.AbstractIteratorDecorator;
import org.apache.commons.collections.keyvalue.AbstractMapEntryDecorator;
/* loaded from: classes5.dex */
public class PredicatedMap extends AbstractMapDecorator {
    protected final Predicate keyPredicate;
    protected final Predicate valuePredicate;

    public static Map decorate(Map map, Predicate predicate, Predicate predicate2) {
        return new PredicatedMap(map, predicate, predicate2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PredicatedMap(Map map, Predicate predicate, Predicate predicate2) {
        super(map);
        this.keyPredicate = predicate;
        this.valuePredicate = predicate2;
        for (Map.Entry entry : map.entrySet()) {
            validate(entry.getKey(), entry.getValue());
        }
    }

    protected void validate(Object obj, Object obj2) {
        Predicate predicate = this.keyPredicate;
        if (predicate != null && !predicate.evaluate(obj)) {
            throw new IllegalArgumentException("Cannot add key - Predicate rejected it");
        }
        Predicate predicate2 = this.valuePredicate;
        if (predicate2 != null && !predicate2.evaluate(obj2)) {
            throw new IllegalArgumentException("Cannot add value - Predicate rejected it");
        }
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections.BidiMap
    public Object put(Object obj, Object obj2) {
        validate(obj, obj2);
        return this.map.put(obj, obj2);
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public void putAll(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            validate(entry.getKey(), entry.getValue());
        }
        this.map.putAll(map);
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public Set entrySet() {
        if (this.valuePredicate == null) {
            return this.map.entrySet();
        }
        return new PredicatedMapEntrySet(this.map.entrySet(), this.valuePredicate);
    }

    /* loaded from: classes5.dex */
    static class PredicatedMapEntrySet extends AbstractCollectionDecorator implements Set {
        private final Predicate valuePredicate;

        protected PredicatedMapEntrySet(Set set, Predicate predicate) {
            super(set);
            this.valuePredicate = predicate;
        }

        @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection, java.lang.Iterable, org.apache.commons.collections.Bag
        public Iterator iterator() {
            return new PredicatedMapEntrySetIterator(this.collection.iterator(), this.valuePredicate);
        }

        @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection
        public Object[] toArray() {
            Object[] array = this.collection.toArray();
            for (int i = 0; i < array.length; i++) {
                array[i] = new PredicatedMapEntry((Map.Entry) array[i], this.valuePredicate);
            }
            return array;
        }

        @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection
        public Object[] toArray(Object[] objArr) {
            Object[] array = this.collection.toArray(objArr.length > 0 ? (Object[]) Array.newInstance(objArr.getClass().getComponentType(), 0) : objArr);
            for (int i = 0; i < array.length; i++) {
                array[i] = new PredicatedMapEntry((Map.Entry) array[i], this.valuePredicate);
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
    static class PredicatedMapEntrySetIterator extends AbstractIteratorDecorator {
        private final Predicate valuePredicate;

        protected PredicatedMapEntrySetIterator(Iterator it, Predicate predicate) {
            super(it);
            this.valuePredicate = predicate;
        }

        @Override // org.apache.commons.collections.iterators.AbstractIteratorDecorator, java.util.Iterator
        public Object next() {
            return new PredicatedMapEntry((Map.Entry) this.iterator.next(), this.valuePredicate);
        }
    }

    /* loaded from: classes5.dex */
    static class PredicatedMapEntry extends AbstractMapEntryDecorator {
        private final Predicate predicate;

        protected PredicatedMapEntry(Map.Entry entry, Predicate predicate) {
            super(entry);
            this.predicate = predicate;
        }

        @Override // org.apache.commons.collections.keyvalue.AbstractMapEntryDecorator, java.util.Map.Entry
        public Object setValue(Object obj) {
            Predicate predicate = this.predicate;
            if (predicate != null && !predicate.evaluate(obj)) {
                throw new IllegalArgumentException("Cannot set value - Predicate rejected it");
            }
            return this.entry.setValue(obj);
        }
    }
}
