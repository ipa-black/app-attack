package jdbm.helper;

import java.util.Enumeration;
/* loaded from: classes5.dex */
public interface CachePolicy {
    void addListener(CachePolicyListener cachePolicyListener) throws IllegalArgumentException;

    Enumeration elements();

    Object get(Object obj);

    void put(Object obj, Object obj2) throws CacheEvictionException;

    void remove(Object obj);

    void removeAll();

    void removeListener(CachePolicyListener cachePolicyListener);
}
