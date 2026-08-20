package org.apache.commons.collections.map;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.apache.commons.collections.MapIterator;
import org.apache.commons.collections.OrderedMap;
import org.apache.commons.collections.OrderedMapIterator;
import org.apache.commons.collections.ResettableIterator;
import org.apache.commons.collections.iterators.AbstractIteratorDecorator;
import org.apache.commons.collections.keyvalue.AbstractMapEntry;
import org.apache.commons.collections.list.UnmodifiableList;
/* loaded from: classes5.dex */
public class ListOrderedMap extends AbstractMapDecorator implements OrderedMap {
    protected final List insertOrder;

    public static OrderedMap decorate(Map map) {
        return new ListOrderedMap(map);
    }

    protected ListOrderedMap(Map map) {
        super(map);
        ArrayList arrayList = new ArrayList();
        this.insertOrder = arrayList;
        arrayList.addAll(getMap().keySet());
    }

    @Override // org.apache.commons.collections.IterableMap
    public MapIterator mapIterator() {
        return orderedMapIterator();
    }

    @Override // org.apache.commons.collections.OrderedMap
    public OrderedMapIterator orderedMapIterator() {
        return new ListOrderedMapIterator(this);
    }

    @Override // org.apache.commons.collections.OrderedMap
    public Object firstKey() {
        if (size() == 0) {
            throw new NoSuchElementException("Map is empty");
        }
        return this.insertOrder.get(0);
    }

    @Override // org.apache.commons.collections.OrderedMap
    public Object lastKey() {
        if (size() == 0) {
            throw new NoSuchElementException("Map is empty");
        }
        return this.insertOrder.get(size() - 1);
    }

    @Override // org.apache.commons.collections.OrderedMap
    public Object nextKey(Object obj) {
        int indexOf = this.insertOrder.indexOf(obj);
        if (indexOf < 0 || indexOf >= size() - 1) {
            return null;
        }
        return this.insertOrder.get(indexOf + 1);
    }

    @Override // org.apache.commons.collections.OrderedMap
    public Object previousKey(Object obj) {
        int indexOf = this.insertOrder.indexOf(obj);
        if (indexOf > 0) {
            return this.insertOrder.get(indexOf - 1);
        }
        return null;
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections.BidiMap
    public Object put(Object obj, Object obj2) {
        if (getMap().containsKey(obj)) {
            return getMap().put(obj, obj2);
        }
        Object put = getMap().put(obj, obj2);
        this.insertOrder.add(obj);
        return put;
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public void putAll(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public Object remove(Object obj) {
        Object remove = getMap().remove(obj);
        this.insertOrder.remove(obj);
        return remove;
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public void clear() {
        getMap().clear();
        this.insertOrder.clear();
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public Set keySet() {
        return new KeySetView(this);
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public Collection values() {
        return new ValuesView(this);
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public Set entrySet() {
        return new EntrySetView(this, this.insertOrder);
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator
    public String toString() {
        if (isEmpty()) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuffer stringBuffer = new StringBuffer("{");
        boolean z = true;
        for (Map.Entry entry : entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (z) {
                z = false;
            } else {
                stringBuffer.append(", ");
            }
            if (key == this) {
                key = "(this Map)";
            }
            stringBuffer.append(key);
            stringBuffer.append('=');
            if (value == this) {
                value = "(this Map)";
            }
            stringBuffer.append(value);
        }
        stringBuffer.append('}');
        return stringBuffer.toString();
    }

    public Object get(int i) {
        return this.insertOrder.get(i);
    }

    public Object getValue(int i) {
        return get(this.insertOrder.get(i));
    }

    public int indexOf(Object obj) {
        return this.insertOrder.indexOf(obj);
    }

    public Object remove(int i) {
        return remove(get(i));
    }

    public List asList() {
        return UnmodifiableList.decorate(this.insertOrder);
    }

    /* loaded from: classes5.dex */
    static class ValuesView extends AbstractCollection {
        private final ListOrderedMap parent;

        ValuesView(ListOrderedMap listOrderedMap) {
            this.parent = listOrderedMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.parent.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.parent.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.parent.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return new AbstractIteratorDecorator(this, this.parent.entrySet().iterator()) { // from class: org.apache.commons.collections.map.ListOrderedMap.1
                private final /* synthetic */ ValuesView this$0;

                {
                    this.this$0 = this;
                }

                @Override // org.apache.commons.collections.iterators.AbstractIteratorDecorator, java.util.Iterator
                public Object next() {
                    return ((Map.Entry) this.iterator.next()).getValue();
                }
            };
        }
    }

    /* loaded from: classes5.dex */
    static class KeySetView extends AbstractSet {
        private final ListOrderedMap parent;

        KeySetView(ListOrderedMap listOrderedMap) {
            this.parent = listOrderedMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.parent.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.parent.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.parent.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new AbstractIteratorDecorator(this, this.parent.entrySet().iterator()) { // from class: org.apache.commons.collections.map.ListOrderedMap.2
                private final /* synthetic */ KeySetView this$0;

                {
                    this.this$0 = this;
                }

                @Override // org.apache.commons.collections.iterators.AbstractIteratorDecorator, java.util.Iterator
                public Object next() {
                    return ((Map.Entry) super.next()).getKey();
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class EntrySetView extends AbstractSet {
        private Set entrySet;
        private final List insertOrder;
        private final ListOrderedMap parent;

        public EntrySetView(ListOrderedMap listOrderedMap, List list) {
            this.parent = listOrderedMap;
            this.insertOrder = list;
        }

        private Set getEntrySet() {
            if (this.entrySet == null) {
                this.entrySet = this.parent.getMap().entrySet();
            }
            return this.entrySet;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.parent.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.parent.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return getEntrySet().contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection collection) {
            return getEntrySet().containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (obj instanceof Map.Entry) {
                Object key = ((Map.Entry) obj).getKey();
                if (this.parent.getMap().containsKey(key)) {
                    this.parent.remove(key);
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.parent.clear();
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return getEntrySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return getEntrySet().hashCode();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return getEntrySet().toString();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new ListOrderedIterator(this.parent, this.insertOrder);
        }
    }

    /* loaded from: classes5.dex */
    static class ListOrderedIterator extends AbstractIteratorDecorator {
        private Object last;
        private final ListOrderedMap parent;

        ListOrderedIterator(ListOrderedMap listOrderedMap, List list) {
            super(list.iterator());
            this.last = null;
            this.parent = listOrderedMap;
        }

        @Override // org.apache.commons.collections.iterators.AbstractIteratorDecorator, java.util.Iterator
        public Object next() {
            this.last = super.next();
            return new ListOrderedMapEntry(this.parent, this.last);
        }

        @Override // org.apache.commons.collections.iterators.AbstractIteratorDecorator, java.util.Iterator
        public void remove() {
            super.remove();
            this.parent.getMap().remove(this.last);
        }
    }

    /* loaded from: classes5.dex */
    static class ListOrderedMapEntry extends AbstractMapEntry {
        private final ListOrderedMap parent;

        ListOrderedMapEntry(ListOrderedMap listOrderedMap, Object obj) {
            super(obj, null);
            this.parent = listOrderedMap;
        }

        @Override // org.apache.commons.collections.keyvalue.AbstractKeyValue, org.apache.commons.collections.KeyValue
        public Object getValue() {
            return this.parent.get(this.key);
        }

        @Override // org.apache.commons.collections.keyvalue.AbstractMapEntry, java.util.Map.Entry
        public Object setValue(Object obj) {
            return this.parent.getMap().put(this.key, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class ListOrderedMapIterator implements OrderedMapIterator, ResettableIterator {
        private ListIterator iterator;
        private final ListOrderedMap parent;
        private Object last = null;
        private boolean readable = false;

        ListOrderedMapIterator(ListOrderedMap listOrderedMap) {
            this.parent = listOrderedMap;
            this.iterator = listOrderedMap.insertOrder.listIterator();
        }

        @Override // org.apache.commons.collections.MapIterator, java.util.Iterator
        public boolean hasNext() {
            return this.iterator.hasNext();
        }

        @Override // org.apache.commons.collections.MapIterator, java.util.Iterator
        public Object next() {
            Object next = this.iterator.next();
            this.last = next;
            this.readable = true;
            return next;
        }

        @Override // org.apache.commons.collections.OrderedMapIterator, org.apache.commons.collections.OrderedIterator
        public boolean hasPrevious() {
            return this.iterator.hasPrevious();
        }

        @Override // org.apache.commons.collections.OrderedMapIterator, org.apache.commons.collections.OrderedIterator
        public Object previous() {
            Object previous = this.iterator.previous();
            this.last = previous;
            this.readable = true;
            return previous;
        }

        @Override // org.apache.commons.collections.MapIterator, java.util.Iterator
        public void remove() {
            if (!this.readable) {
                throw new IllegalStateException("remove() can only be called once after next()");
            }
            this.iterator.remove();
            this.parent.map.remove(this.last);
            this.readable = false;
        }

        @Override // org.apache.commons.collections.MapIterator
        public Object getKey() {
            if (!this.readable) {
                throw new IllegalStateException("getKey() can only be called after next() and before remove()");
            }
            return this.last;
        }

        @Override // org.apache.commons.collections.MapIterator
        public Object getValue() {
            if (!this.readable) {
                throw new IllegalStateException("getValue() can only be called after next() and before remove()");
            }
            return this.parent.get(this.last);
        }

        @Override // org.apache.commons.collections.MapIterator
        public Object setValue(Object obj) {
            if (!this.readable) {
                throw new IllegalStateException("setValue() can only be called after next() and before remove()");
            }
            return this.parent.map.put(this.last, obj);
        }

        @Override // org.apache.commons.collections.ResettableIterator
        public void reset() {
            this.iterator = this.parent.insertOrder.listIterator();
            this.last = null;
            this.readable = false;
        }

        public String toString() {
            if (this.readable) {
                return new StringBuffer("Iterator[").append(getKey()).append("=").append(getValue()).append("]").toString();
            }
            return "Iterator[]";
        }
    }
}
