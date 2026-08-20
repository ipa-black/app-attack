package org.apache.commons.collections.map;

import java.util.Map;
import org.apache.commons.collections.Factory;
import org.apache.commons.collections.Transformer;
import org.apache.commons.collections.TransformerUtils;
/* loaded from: classes5.dex */
public class LazyMap extends AbstractMapDecorator implements Map {
    protected final Transformer factory;

    public static Map decorate(Map map, Factory factory) {
        return new LazyMap(map, factory);
    }

    public static Map decorate(Map map, Transformer transformer) {
        return new LazyMap(map, transformer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LazyMap(Map map, Factory factory) {
        super(map);
        if (factory == null) {
            throw new IllegalArgumentException("Factory must not be null");
        }
        this.factory = TransformerUtils.asTransformer(factory);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LazyMap(Map map, Transformer transformer) {
        super(map);
        if (transformer == null) {
            throw new IllegalArgumentException("Factory must not be null");
        }
        this.factory = transformer;
    }

    @Override // org.apache.commons.collections.map.AbstractMapDecorator, java.util.Map
    public Object get(Object obj) {
        if (!this.map.containsKey(obj)) {
            Object transform = this.factory.transform(obj);
            this.map.put(obj, transform);
            return transform;
        }
        return this.map.get(obj);
    }
}
