package org.apache.commons.collections.bidimap;

import org.apache.commons.collections.OrderedBidiMap;
import org.apache.commons.collections.OrderedMapIterator;
/* loaded from: classes5.dex */
public abstract class AbstractOrderedBidiMapDecorator extends AbstractBidiMapDecorator implements OrderedBidiMap {
    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractOrderedBidiMapDecorator(OrderedBidiMap orderedBidiMap) {
        super(orderedBidiMap);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OrderedBidiMap getOrderedBidiMap() {
        return (OrderedBidiMap) this.map;
    }

    @Override // org.apache.commons.collections.OrderedMap
    public OrderedMapIterator orderedMapIterator() {
        return getOrderedBidiMap().orderedMapIterator();
    }

    @Override // org.apache.commons.collections.OrderedMap
    public Object firstKey() {
        return getOrderedBidiMap().firstKey();
    }

    @Override // org.apache.commons.collections.OrderedMap
    public Object lastKey() {
        return getOrderedBidiMap().lastKey();
    }

    @Override // org.apache.commons.collections.OrderedMap
    public Object nextKey(Object obj) {
        return getOrderedBidiMap().nextKey(obj);
    }

    @Override // org.apache.commons.collections.OrderedMap
    public Object previousKey(Object obj) {
        return getOrderedBidiMap().previousKey(obj);
    }

    @Override // org.apache.commons.collections.OrderedBidiMap
    public OrderedBidiMap inverseOrderedBidiMap() {
        return getOrderedBidiMap().inverseOrderedBidiMap();
    }
}
