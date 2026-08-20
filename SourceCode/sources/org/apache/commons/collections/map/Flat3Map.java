package org.apache.commons.collections.map;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.apache.commons.collections.IterableMap;
import org.apache.commons.collections.IteratorUtils;
import org.apache.commons.collections.MapIterator;
import org.apache.commons.collections.ResettableIterator;
/* loaded from: classes5.dex */
public class Flat3Map implements IterableMap {
    private HashedMap delegateMap;
    private int hash1;
    private int hash2;
    private int hash3;
    private Object key1;
    private Object key2;
    private Object key3;
    private int size;
    private Object value1;
    private Object value2;
    private Object value3;

    public Flat3Map() {
    }

    public Flat3Map(Map map) {
        putAll(map);
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        HashedMap hashedMap = this.delegateMap;
        if (hashedMap != null) {
            return hashedMap.get(obj);
        }
        if (obj == null) {
            int i = this.size;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    if (this.key3 == null) {
                        return this.value3;
                    }
                }
                if (this.key2 == null) {
                    return this.value2;
                }
            }
            if (this.key1 == null) {
                return this.value1;
            }
            return null;
        } else if (this.size > 0) {
            int hashCode = obj.hashCode();
            int i2 = this.size;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        return null;
                    }
                    if (this.hash3 == hashCode && obj.equals(this.key3)) {
                        return this.value3;
                    }
                }
                if (this.hash2 == hashCode && obj.equals(this.key2)) {
                    return this.value2;
                }
            }
            if (this.hash1 == hashCode && obj.equals(this.key1)) {
                return this.value1;
            }
            return null;
        } else {
            return null;
        }
    }

    @Override // java.util.Map
    public int size() {
        HashedMap hashedMap = this.delegateMap;
        if (hashedMap != null) {
            return hashedMap.size();
        }
        return this.size;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        HashedMap hashedMap = this.delegateMap;
        if (hashedMap != null) {
            return hashedMap.containsKey(obj);
        }
        if (obj == null) {
            int i = this.size;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return false;
                    }
                    if (this.key3 == null) {
                        return true;
                    }
                }
                if (this.key2 == null) {
                    return true;
                }
            }
            return this.key1 == null;
        } else if (this.size > 0) {
            int hashCode = obj.hashCode();
            int i2 = this.size;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        return false;
                    }
                    if (this.hash3 == hashCode && obj.equals(this.key3)) {
                        return true;
                    }
                }
                if (this.hash2 == hashCode && obj.equals(this.key2)) {
                    return true;
                }
            }
            return this.hash1 == hashCode && obj.equals(this.key1);
        } else {
            return false;
        }
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        HashedMap hashedMap = this.delegateMap;
        if (hashedMap != null) {
            return hashedMap.containsValue(obj);
        }
        if (obj == null) {
            int i = this.size;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return false;
                    }
                    if (this.value3 == null) {
                        return true;
                    }
                }
                if (this.value2 == null) {
                    return true;
                }
            }
            return this.value1 == null;
        }
        int i2 = this.size;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    return false;
                }
                if (obj.equals(this.value3)) {
                    return true;
                }
            }
            if (obj.equals(this.value2)) {
                return true;
            }
        }
        return obj.equals(this.value1);
    }

    @Override // java.util.Map
    public Object put(Object obj, Object obj2) {
        HashedMap hashedMap = this.delegateMap;
        if (hashedMap != null) {
            return hashedMap.put(obj, obj2);
        }
        if (obj == null) {
            int i = this.size;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        if (this.key3 == null) {
                            Object obj3 = this.value3;
                            this.value3 = obj2;
                            return obj3;
                        }
                    }
                }
                if (this.key2 == null) {
                    Object obj4 = this.value2;
                    this.value2 = obj2;
                    return obj4;
                }
            }
            if (this.key1 == null) {
                Object obj5 = this.value1;
                this.value1 = obj2;
                return obj5;
            }
        } else if (this.size > 0) {
            int hashCode = obj.hashCode();
            int i2 = this.size;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        if (this.hash3 == hashCode && obj.equals(this.key3)) {
                            Object obj6 = this.value3;
                            this.value3 = obj2;
                            return obj6;
                        }
                    }
                }
                if (this.hash2 == hashCode && obj.equals(this.key2)) {
                    Object obj7 = this.value2;
                    this.value2 = obj2;
                    return obj7;
                }
            }
            if (this.hash1 == hashCode && obj.equals(this.key1)) {
                Object obj8 = this.value1;
                this.value1 = obj2;
                return obj8;
            }
        }
        int i3 = this.size;
        if (i3 == 0) {
            this.hash1 = obj != null ? obj.hashCode() : 0;
            this.key1 = obj;
            this.value1 = obj2;
        } else if (i3 == 1) {
            this.hash2 = obj != null ? obj.hashCode() : 0;
            this.key2 = obj;
            this.value2 = obj2;
        } else if (i3 != 2) {
            convertToMap();
            this.delegateMap.put(obj, obj2);
            return null;
        } else {
            this.hash3 = obj != null ? obj.hashCode() : 0;
            this.key3 = obj;
            this.value3 = obj2;
        }
        this.size++;
        return null;
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        int size = map.size();
        if (size == 0) {
            return;
        }
        HashedMap hashedMap = this.delegateMap;
        if (hashedMap != null) {
            hashedMap.putAll(map);
        } else if (size < 4) {
            for (Map.Entry entry : map.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
        } else {
            convertToMap();
            this.delegateMap.putAll(map);
        }
    }

    private void convertToMap() {
        HashedMap hashedMap = new HashedMap();
        this.delegateMap = hashedMap;
        int i = this.size;
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    hashedMap.put(this.key3, this.value3);
                }
                this.size = 0;
                this.hash3 = 0;
                this.hash2 = 0;
                this.hash1 = 0;
                this.key3 = null;
                this.key2 = null;
                this.key1 = null;
                this.value3 = null;
                this.value2 = null;
                this.value1 = null;
            }
            this.delegateMap.put(this.key2, this.value2);
        }
        this.delegateMap.put(this.key1, this.value1);
        this.size = 0;
        this.hash3 = 0;
        this.hash2 = 0;
        this.hash1 = 0;
        this.key3 = null;
        this.key2 = null;
        this.key1 = null;
        this.value3 = null;
        this.value2 = null;
        this.value1 = null;
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        HashedMap hashedMap = this.delegateMap;
        if (hashedMap != null) {
            return hashedMap.remove(obj);
        }
        int i = this.size;
        if (i == 0) {
            return null;
        }
        if (obj == null) {
            if (i != 1) {
                if (i == 2) {
                    Object obj2 = this.key2;
                    if (obj2 == null) {
                        Object obj3 = this.value2;
                        this.hash2 = 0;
                        this.key2 = null;
                        this.value2 = null;
                        this.size = 1;
                        return obj3;
                    } else if (this.key1 == null) {
                        Object obj4 = this.value2;
                        this.hash1 = this.hash2;
                        this.key1 = obj2;
                        this.value1 = obj4;
                        this.hash2 = 0;
                        this.key2 = null;
                        this.value2 = null;
                        this.size = 1;
                        return obj4;
                    } else {
                        return null;
                    }
                } else if (i == 3) {
                    Object obj5 = this.key3;
                    if (obj5 == null) {
                        Object obj6 = this.value3;
                        this.hash3 = 0;
                        this.key3 = null;
                        this.value3 = null;
                        this.size = 2;
                        return obj6;
                    } else if (this.key2 == null) {
                        Object obj7 = this.value3;
                        this.hash2 = this.hash3;
                        this.key2 = obj5;
                        this.value2 = obj7;
                        this.hash3 = 0;
                        this.key3 = null;
                        this.value3 = null;
                        this.size = 2;
                        return obj7;
                    } else if (this.key1 == null) {
                        Object obj8 = this.value3;
                        this.hash1 = this.hash3;
                        this.key1 = obj5;
                        this.value1 = obj8;
                        this.hash3 = 0;
                        this.key3 = null;
                        this.value3 = null;
                        this.size = 2;
                        return obj8;
                    } else {
                        return null;
                    }
                }
            } else if (this.key1 == null) {
                Object obj9 = this.value1;
                this.hash1 = 0;
                this.key1 = null;
                this.value1 = null;
                this.size = 0;
                return obj9;
            }
        } else if (i > 0) {
            int hashCode = obj.hashCode();
            int i2 = this.size;
            if (i2 != 1) {
                if (i2 == 2) {
                    if (this.hash2 == hashCode && obj.equals(this.key2)) {
                        Object obj10 = this.value2;
                        this.hash2 = 0;
                        this.key2 = null;
                        this.value2 = null;
                        this.size = 1;
                        return obj10;
                    } else if (this.hash1 == hashCode && obj.equals(this.key1)) {
                        Object obj11 = this.value2;
                        this.hash1 = this.hash2;
                        this.key1 = this.key2;
                        this.value1 = obj11;
                        this.hash2 = 0;
                        this.key2 = null;
                        this.value2 = null;
                        this.size = 1;
                        return obj11;
                    } else {
                        return null;
                    }
                } else if (i2 == 3) {
                    if (this.hash3 == hashCode && obj.equals(this.key3)) {
                        Object obj12 = this.value3;
                        this.hash3 = 0;
                        this.key3 = null;
                        this.value3 = null;
                        this.size = 2;
                        return obj12;
                    } else if (this.hash2 == hashCode && obj.equals(this.key2)) {
                        Object obj13 = this.value3;
                        this.hash2 = this.hash3;
                        this.key2 = this.key3;
                        this.value2 = obj13;
                        this.hash3 = 0;
                        this.key3 = null;
                        this.value3 = null;
                        this.size = 2;
                        return obj13;
                    } else if (this.hash1 == hashCode && obj.equals(this.key1)) {
                        Object obj14 = this.value3;
                        this.hash1 = this.hash3;
                        this.key1 = this.key3;
                        this.value1 = obj14;
                        this.hash3 = 0;
                        this.key3 = null;
                        this.value3 = null;
                        this.size = 2;
                        return obj14;
                    } else {
                        return null;
                    }
                }
            } else if (this.hash1 == hashCode && obj.equals(this.key1)) {
                Object obj15 = this.value1;
                this.hash1 = 0;
                this.key1 = null;
                this.value1 = null;
                this.size = 0;
                return obj15;
            }
        }
        return null;
    }

    @Override // java.util.Map
    public void clear() {
        HashedMap hashedMap = this.delegateMap;
        if (hashedMap != null) {
            hashedMap.clear();
            this.delegateMap = null;
            return;
        }
        this.size = 0;
        this.hash3 = 0;
        this.hash2 = 0;
        this.hash1 = 0;
        this.key3 = null;
        this.key2 = null;
        this.key1 = null;
        this.value3 = null;
        this.value2 = null;
        this.value1 = null;
    }

    @Override // org.apache.commons.collections.IterableMap
    public MapIterator mapIterator() {
        HashedMap hashedMap = this.delegateMap;
        if (hashedMap != null) {
            return hashedMap.mapIterator();
        }
        if (this.size == 0) {
            return IteratorUtils.EMPTY_MAP_ITERATOR;
        }
        return new FlatMapIterator(this);
    }

    /* loaded from: classes5.dex */
    static class FlatMapIterator implements MapIterator, ResettableIterator {
        private final Flat3Map parent;
        private int nextIndex = 0;
        private boolean canRemove = false;

        FlatMapIterator(Flat3Map flat3Map) {
            this.parent = flat3Map;
        }

        @Override // org.apache.commons.collections.MapIterator, java.util.Iterator
        public boolean hasNext() {
            return this.nextIndex < this.parent.size;
        }

        @Override // org.apache.commons.collections.MapIterator, java.util.Iterator
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException("No next() entry in the iteration");
            }
            this.canRemove = true;
            this.nextIndex++;
            return getKey();
        }

        @Override // org.apache.commons.collections.MapIterator, java.util.Iterator
        public void remove() {
            if (!this.canRemove) {
                throw new IllegalStateException("remove() can only be called once after next()");
            }
            this.parent.remove(getKey());
            this.nextIndex--;
            this.canRemove = false;
        }

        @Override // org.apache.commons.collections.MapIterator
        public Object getKey() {
            if (!this.canRemove) {
                throw new IllegalStateException("getKey() can only be called after next() and before remove()");
            }
            int i = this.nextIndex;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return this.parent.key3;
                    }
                    throw new IllegalStateException("Invalid map index");
                }
                return this.parent.key2;
            }
            return this.parent.key1;
        }

        @Override // org.apache.commons.collections.MapIterator
        public Object getValue() {
            if (!this.canRemove) {
                throw new IllegalStateException("getValue() can only be called after next() and before remove()");
            }
            int i = this.nextIndex;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return this.parent.value3;
                    }
                    throw new IllegalStateException("Invalid map index");
                }
                return this.parent.value2;
            }
            return this.parent.value1;
        }

        @Override // org.apache.commons.collections.MapIterator
        public Object setValue(Object obj) {
            if (!this.canRemove) {
                throw new IllegalStateException("setValue() can only be called after next() and before remove()");
            }
            Object value = getValue();
            int i = this.nextIndex;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        this.parent.value3 = obj;
                    }
                    return value;
                }
                this.parent.value2 = obj;
            }
            this.parent.value1 = obj;
            return value;
        }

        @Override // org.apache.commons.collections.ResettableIterator
        public void reset() {
            this.nextIndex = 0;
            this.canRemove = false;
        }

        public String toString() {
            if (this.canRemove) {
                return new StringBuffer("Iterator[").append(getKey()).append("=").append(getValue()).append("]").toString();
            }
            return "Iterator[]";
        }
    }

    @Override // java.util.Map
    public Set entrySet() {
        HashedMap hashedMap = this.delegateMap;
        if (hashedMap != null) {
            return hashedMap.entrySet();
        }
        return new EntrySet(this);
    }

    /* loaded from: classes5.dex */
    static class EntrySet extends AbstractSet {
        private final Flat3Map parent;

        EntrySet(Flat3Map flat3Map) {
            this.parent = flat3Map;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.parent.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.parent.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (obj instanceof Map.Entry) {
                Object key = ((Map.Entry) obj).getKey();
                boolean containsKey = this.parent.containsKey(key);
                this.parent.remove(key);
                return containsKey;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            if (this.parent.delegateMap != null) {
                return this.parent.delegateMap.entrySet().iterator();
            }
            if (this.parent.size() == 0) {
                return IteratorUtils.EMPTY_ITERATOR;
            }
            return new EntrySetIterator(this.parent);
        }
    }

    /* loaded from: classes5.dex */
    static class EntrySetIterator implements Iterator, Map.Entry {
        private final Flat3Map parent;
        private int nextIndex = 0;
        private boolean canRemove = false;

        EntrySetIterator(Flat3Map flat3Map) {
            this.parent = flat3Map;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.nextIndex < this.parent.size;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException("No next() entry in the iteration");
            }
            this.canRemove = true;
            this.nextIndex++;
            return this;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.canRemove) {
                throw new IllegalStateException("remove() can only be called once after next()");
            }
            this.parent.remove(getKey());
            this.nextIndex--;
            this.canRemove = false;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            if (!this.canRemove) {
                throw new IllegalStateException("getKey() can only be called after next() and before remove()");
            }
            int i = this.nextIndex;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return this.parent.key3;
                    }
                    throw new IllegalStateException("Invalid map index");
                }
                return this.parent.key2;
            }
            return this.parent.key1;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            if (!this.canRemove) {
                throw new IllegalStateException("getValue() can only be called after next() and before remove()");
            }
            int i = this.nextIndex;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return this.parent.value3;
                    }
                    throw new IllegalStateException("Invalid map index");
                }
                return this.parent.value2;
            }
            return this.parent.value1;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (!this.canRemove) {
                throw new IllegalStateException("setValue() can only be called after next() and before remove()");
            }
            Object value = getValue();
            int i = this.nextIndex;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        this.parent.value3 = obj;
                    }
                    return value;
                }
                this.parent.value2 = obj;
            }
            this.parent.value1 = obj;
            return value;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean equals;
            if (this.canRemove && (obj instanceof Map.Entry)) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = getKey();
                Object value = getValue();
                if (key == null) {
                    equals = entry.getKey() == null;
                } else {
                    equals = key.equals(entry.getKey());
                }
                if (equals) {
                    Object value2 = entry.getValue();
                    return value == null ? value2 == null : value.equals(value2);
                }
                return false;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (this.canRemove) {
                Object key = getKey();
                Object value = getValue();
                return (key == null ? 0 : key.hashCode()) ^ (value != null ? value.hashCode() : 0);
            }
            return 0;
        }

        public String toString() {
            if (this.canRemove) {
                return new StringBuffer().append(getKey()).append("=").append(getValue()).toString();
            }
            return "";
        }
    }

    @Override // java.util.Map
    public Set keySet() {
        HashedMap hashedMap = this.delegateMap;
        if (hashedMap != null) {
            return hashedMap.keySet();
        }
        return new KeySet(this);
    }

    /* loaded from: classes5.dex */
    static class KeySet extends AbstractSet {
        private final Flat3Map parent;

        KeySet(Flat3Map flat3Map) {
            this.parent = flat3Map;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.parent.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.parent.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.parent.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean containsKey = this.parent.containsKey(obj);
            this.parent.remove(obj);
            return containsKey;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            if (this.parent.delegateMap != null) {
                return this.parent.delegateMap.keySet().iterator();
            }
            if (this.parent.size() == 0) {
                return IteratorUtils.EMPTY_ITERATOR;
            }
            return new KeySetIterator(this.parent);
        }
    }

    /* loaded from: classes5.dex */
    static class KeySetIterator extends EntrySetIterator {
        KeySetIterator(Flat3Map flat3Map) {
            super(flat3Map);
        }

        @Override // org.apache.commons.collections.map.Flat3Map.EntrySetIterator, java.util.Iterator
        public Object next() {
            super.next();
            return getKey();
        }
    }

    @Override // java.util.Map
    public Collection values() {
        HashedMap hashedMap = this.delegateMap;
        if (hashedMap != null) {
            return hashedMap.values();
        }
        return new Values(this);
    }

    /* loaded from: classes5.dex */
    static class Values extends AbstractCollection {
        private final Flat3Map parent;

        Values(Flat3Map flat3Map) {
            this.parent = flat3Map;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.parent.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.parent.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.parent.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            if (this.parent.delegateMap != null) {
                return this.parent.delegateMap.values().iterator();
            }
            if (this.parent.size() == 0) {
                return IteratorUtils.EMPTY_ITERATOR;
            }
            return new ValuesIterator(this.parent);
        }
    }

    /* loaded from: classes5.dex */
    static class ValuesIterator extends EntrySetIterator {
        ValuesIterator(Flat3Map flat3Map) {
            super(flat3Map);
        }

        @Override // org.apache.commons.collections.map.Flat3Map.EntrySetIterator, java.util.Iterator
        public Object next() {
            super.next();
            return getValue();
        }
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        HashedMap hashedMap = this.delegateMap;
        if (hashedMap != null) {
            return hashedMap.equals(obj);
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.size != map.size()) {
                return false;
            }
            int i = this.size;
            if (i > 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            if (!map.containsKey(this.key3)) {
                                Object obj2 = map.get(this.key3);
                                Object obj3 = this.value3;
                                if (obj3 != null ? !obj3.equals(obj2) : obj2 != null) {
                                    return false;
                                }
                            }
                        }
                    }
                    if (!map.containsKey(this.key2)) {
                        Object obj4 = map.get(this.key2);
                        Object obj5 = this.value2;
                        if (obj5 != null ? !obj5.equals(obj4) : obj4 != null) {
                            return false;
                        }
                    }
                }
                if (!map.containsKey(this.key1)) {
                    Object obj6 = map.get(this.key1);
                    Object obj7 = this.value1;
                    if (obj7 != null ? !obj7.equals(obj6) : obj6 != null) {
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public int hashCode() {
        int i;
        int i2;
        HashedMap hashedMap = this.delegateMap;
        if (hashedMap != null) {
            return hashedMap.hashCode();
        }
        int i3 = this.size;
        if (i3 != 1) {
            if (i3 == 2) {
                i2 = 0;
            } else if (i3 != 3) {
                return 0;
            } else {
                int i4 = this.hash3;
                Object obj = this.value3;
                i2 = i4 ^ (obj == null ? 0 : obj.hashCode());
            }
            int i5 = this.hash2;
            Object obj2 = this.value2;
            i = i2 + (i5 ^ (obj2 == null ? 0 : obj2.hashCode()));
        } else {
            i = 0;
        }
        int i6 = this.hash1;
        Object obj3 = this.value1;
        return i + (i6 ^ (obj3 != null ? obj3.hashCode() : 0));
    }

    public String toString() {
        HashedMap hashedMap = this.delegateMap;
        if (hashedMap != null) {
            return hashedMap.toString();
        }
        if (this.size == 0) {
            return JsonUtils.EMPTY_JSON;
        }
        StringBuffer stringBuffer = new StringBuffer(128);
        stringBuffer.append('{');
        int i = this.size;
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    stringBuffer.append(this.key3);
                    stringBuffer.append('=');
                    stringBuffer.append(this.value3);
                    stringBuffer.append(',');
                }
                stringBuffer.append('}');
                return stringBuffer.toString();
            }
            stringBuffer.append(this.key2);
            stringBuffer.append('=');
            stringBuffer.append(this.value2);
            stringBuffer.append(',');
        }
        stringBuffer.append(this.key1);
        stringBuffer.append('=');
        stringBuffer.append(this.value1);
        stringBuffer.append('}');
        return stringBuffer.toString();
    }
}
