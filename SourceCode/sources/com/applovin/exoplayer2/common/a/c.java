package com.applovin.exoplayer2.common.a;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class c<K, V> extends d<K, V> implements z<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    public c(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.applovin.exoplayer2.common.a.d
    Collection<V> a(K k, Collection<V> collection) {
        return a(k, (List) collection, null);
    }

    @Override // com.applovin.exoplayer2.common.a.d
    <E> Collection<E> a(Collection<E> collection) {
        return Collections.unmodifiableList((List) collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.exoplayer2.common.a.d
    /* renamed from: a */
    public abstract List<V> c();

    @Override // com.applovin.exoplayer2.common.a.z
    public List<V> a(@NullableDecl K k) {
        return (List) super.b((c<K, V>) k);
    }

    @Override // com.applovin.exoplayer2.common.a.d, com.applovin.exoplayer2.common.a.f, com.applovin.exoplayer2.common.a.ac
    public boolean a(@NullableDecl K k, @NullableDecl V v) {
        return super.a((c<K, V>) k, (K) v);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.applovin.exoplayer2.common.a.d, com.applovin.exoplayer2.common.a.ac
    public /* synthetic */ Collection b(@NullableDecl Object obj) {
        return a((c<K, V>) obj);
    }

    @Override // com.applovin.exoplayer2.common.a.f, com.applovin.exoplayer2.common.a.ac
    public Map<K, Collection<V>> b() {
        return super.b();
    }

    @Override // com.applovin.exoplayer2.common.a.f
    public boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }
}
