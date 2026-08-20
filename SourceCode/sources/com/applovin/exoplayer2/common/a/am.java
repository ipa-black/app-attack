package com.applovin.exoplayer2.common.a;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class am<E> extends w<E> {

    /* renamed from: a  reason: collision with root package name */
    static final am<Object> f1733a = new am<>(new Object[0], 0, null, 0, 0);

    /* renamed from: b  reason: collision with root package name */
    final transient Object[] f1734b;

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f1735c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f1736d;

    /* renamed from: e  reason: collision with root package name */
    private final transient int f1737e;

    /* renamed from: f  reason: collision with root package name */
    private final transient int f1738f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f1734b = objArr;
        this.f1735c = objArr2;
        this.f1736d = i2;
        this.f1737e = i;
        this.f1738f = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.exoplayer2.common.a.q
    public int a(Object[] objArr, int i) {
        System.arraycopy(this.f1734b, 0, objArr, i, this.f1738f);
        return i + this.f1738f;
    }

    @Override // com.applovin.exoplayer2.common.a.w, com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: a */
    public ax<E> iterator() {
        return e().iterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.exoplayer2.common.a.q
    public Object[] b() {
        return this.f1734b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.exoplayer2.common.a.q
    public int c() {
        return 0;
    }

    @Override // com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        Object[] objArr = this.f1735c;
        if (obj == null || objArr == null) {
            return false;
        }
        int a2 = p.a(obj);
        while (true) {
            int i = a2 & this.f1736d;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            a2 = i + 1;
        }
    }

    @Override // com.applovin.exoplayer2.common.a.q
    int d() {
        return this.f1738f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.exoplayer2.common.a.q
    public boolean f() {
        return false;
    }

    @Override // com.applovin.exoplayer2.common.a.w
    boolean h() {
        return true;
    }

    @Override // com.applovin.exoplayer2.common.a.w, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f1737e;
    }

    @Override // com.applovin.exoplayer2.common.a.w
    s<E> i() {
        return s.b(this.f1734b, this.f1738f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f1738f;
    }
}
