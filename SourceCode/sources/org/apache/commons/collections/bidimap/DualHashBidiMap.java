package org.apache.commons.collections.bidimap;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.collections.BidiMap;
/* loaded from: classes5.dex */
public class DualHashBidiMap extends AbstractDualBidiMap implements Serializable {
    private static final long serialVersionUID = 721969328361808L;

    public DualHashBidiMap() {
    }

    public DualHashBidiMap(Map map) {
        putAll(map);
    }

    protected DualHashBidiMap(Map map, Map map2, BidiMap bidiMap) {
        super(map, map2, bidiMap);
    }

    @Override // org.apache.commons.collections.bidimap.AbstractDualBidiMap
    protected Map createMap() {
        return new HashMap();
    }

    @Override // org.apache.commons.collections.bidimap.AbstractDualBidiMap
    protected BidiMap createBidiMap(Map map, Map map2, BidiMap bidiMap) {
        return new DualHashBidiMap(map, map2, bidiMap);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.maps[0]);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        putAll((Map) objectInputStream.readObject());
    }
}
