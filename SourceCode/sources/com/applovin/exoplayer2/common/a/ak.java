package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ak<E> extends s<E> {

    /* renamed from: a  reason: collision with root package name */
    static final s<Object> f1716a = new ak(new Object[0], 0);

    /* renamed from: b  reason: collision with root package name */
    final transient Object[] f1717b;

    /* renamed from: c  reason: collision with root package name */
    private final transient int f1718c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(Object[] objArr, int i) {
        this.f1717b = objArr;
        this.f1718c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.exoplayer2.common.a.s, com.applovin.exoplayer2.common.a.q
    public int a(Object[] objArr, int i) {
        System.arraycopy(this.f1717b, 0, objArr, i, this.f1718c);
        return i + this.f1718c;
    }

    @Override // com.applovin.exoplayer2.common.a.q
    Object[] b() {
        return this.f1717b;
    }

    @Override // com.applovin.exoplayer2.common.a.q
    int c() {
        return 0;
    }

    @Override // com.applovin.exoplayer2.common.a.q
    int d() {
        return this.f1718c;
    }

    @Override // com.applovin.exoplayer2.common.a.q
    boolean f() {
        return false;
    }

    @Override // java.util.List
    public E get(int i) {
        Preconditions.checkElementIndex(i, this.f1718c);
        return (E) this.f1717b[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f1718c;
    }
}
