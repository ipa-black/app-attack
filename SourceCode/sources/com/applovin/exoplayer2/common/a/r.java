package com.applovin.exoplayer2.common.a;

import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
class r<K, V> extends e<K, V> implements Serializable {
    @NullableDecl

    /* renamed from: a  reason: collision with root package name */
    final K f1836a;
    @NullableDecl

    /* renamed from: b  reason: collision with root package name */
    final V f1837b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(@NullableDecl K k, @NullableDecl V v) {
        this.f1836a = k;
        this.f1837b = v;
    }

    @Override // com.applovin.exoplayer2.common.a.e, java.util.Map.Entry
    @NullableDecl
    public final K getKey() {
        return this.f1836a;
    }

    @Override // com.applovin.exoplayer2.common.a.e, java.util.Map.Entry
    @NullableDecl
    public final V getValue() {
        return this.f1837b;
    }

    @Override // com.applovin.exoplayer2.common.a.e, java.util.Map.Entry
    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
