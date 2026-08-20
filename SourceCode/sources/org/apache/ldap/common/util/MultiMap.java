package org.apache.ldap.common.util;

import java.util.Collection;
import java.util.Map;
/* loaded from: classes3.dex */
public interface MultiMap extends Map {
    @Override // java.util.Map
    boolean containsValue(Object obj);

    @Override // java.util.Map
    Object get(Object obj);

    @Override // java.util.Map
    Object put(Object obj, Object obj2);

    @Override // java.util.Map
    Object remove(Object obj);

    @Override // java.util.Map
    Object remove(Object obj, Object obj2);

    @Override // java.util.Map
    int size();

    @Override // java.util.Map
    Collection values();
}
