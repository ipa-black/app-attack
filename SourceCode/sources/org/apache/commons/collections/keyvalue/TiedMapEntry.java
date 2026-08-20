package org.apache.commons.collections.keyvalue;

import java.util.Map;
import org.apache.commons.collections.KeyValue;
/* loaded from: classes5.dex */
public class TiedMapEntry implements Map.Entry, KeyValue {
    private final Object key;
    private final Map map;

    public TiedMapEntry(Map map, Object obj) {
        this.map = map;
        this.key = obj;
    }

    @Override // java.util.Map.Entry, org.apache.commons.collections.KeyValue
    public Object getKey() {
        return this.key;
    }

    @Override // java.util.Map.Entry, org.apache.commons.collections.KeyValue
    public Object getValue() {
        return this.map.get(this.key);
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        if (obj == this) {
            throw new IllegalArgumentException("Cannot set value to this map entry");
        }
        return this.map.put(this.key, obj);
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object value = getValue();
            Object obj2 = this.key;
            if (obj2 == null ? entry.getKey() == null : obj2.equals(entry.getKey())) {
                Object value2 = entry.getValue();
                if (value == null ? value2 == null : value.equals(value2)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        Object value = getValue();
        return (getKey() == null ? 0 : getKey().hashCode()) ^ (value != null ? value.hashCode() : 0);
    }

    public String toString() {
        return new StringBuffer().append(getKey()).append("=").append(getValue()).toString();
    }
}
