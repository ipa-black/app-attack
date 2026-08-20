package org.apache.ldap.common.schema;

import javax.naming.NamingException;
import org.apache.ldap.common.util.LRUMap;
/* loaded from: classes3.dex */
public class CachingNormalizer implements Normalizer {
    public static final int CACHE_MAX = 250;
    private final LRUMap cache;
    private final Normalizer normalizer;

    public CachingNormalizer(Normalizer normalizer) {
        this(normalizer, 250);
    }

    public CachingNormalizer(Normalizer normalizer, int i) {
        this.normalizer = normalizer;
        this.cache = new LRUMap(i);
    }

    @Override // org.apache.ldap.common.schema.Normalizer
    public Object normalize(Object obj) throws NamingException {
        if (this.cache.containsKey(obj)) {
            return this.cache.get(obj);
        }
        Object normalize = this.normalizer.normalize(obj);
        this.cache.put(obj, normalize);
        return normalize;
    }
}
