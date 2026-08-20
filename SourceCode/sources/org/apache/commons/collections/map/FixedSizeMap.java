package org.apache.commons.collections.map;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.apache.commons.collections.BoundedMap;
import org.apache.commons.collections.collection.UnmodifiableCollection;
import org.apache.commons.collections.set.UnmodifiableSet;
/* loaded from: classes5.dex */
public class FixedSizeMap extends AbstractMapDecorator implements Map, BoundedMap {
    @Override // org.apache.commons.collections.BoundedMap
    public boolean isFull() {
        return true;
    }

    public static Map decorate(Map map) {
        return new FixedSizeMap(map);
    }

    protected FixedSizeMap(Map map) {
        super(map);
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections.BidiMap
    public Object put(Object obj, Object obj2) {
        if (!this.map.containsKey(obj)) {
            throw new IllegalArgumentException("Cannot put new key/value pair - Map is fixed size");
        }
        return this.map.put(obj, obj2);
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public void putAll(Map map) {
        for (Object obj : map.keySet()) {
            if (!map.containsKey(obj)) {
                throw new IllegalArgumentException("Cannot put new key/value pair - Map is fixed size");
            }
        }
        this.map.putAll(map);
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Map is fixed size");
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public Object remove(Object obj) {
        throw new UnsupportedOperationException("Map is fixed size");
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public Set entrySet() {
        return UnmodifiableSet.decorate(this.map.entrySet());
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public Set keySet() {
        return UnmodifiableSet.decorate(this.map.keySet());
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public Collection values() {
        return UnmodifiableCollection.decorate(this.map.values());
    }

    @Override // org.apache.commons.collections.BoundedMap
    public int maxSize() {
        return size();
    }
}
