package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;
import com.google.errorprone.annotations.concurrent.LazyInit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ar<E> extends w<E> {

    /* renamed from: a  reason: collision with root package name */
    final transient E f1750a;
    @LazyInit

    /* renamed from: b  reason: collision with root package name */
    private transient int f1751b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(E e2) {
        this.f1750a = (E) Preconditions.checkNotNull(e2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(E e2, int i) {
        this.f1750a = e2;
        this.f1751b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.exoplayer2.common.a.q
    public int a(Object[] objArr, int i) {
        objArr[i] = this.f1750a;
        return i + 1;
    }

    @Override // com.applovin.exoplayer2.common.a.w, com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: a */
    public ax<E> iterator() {
        return y.a(this.f1750a);
    }

    @Override // com.applovin.exoplayer2.common.a.q, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f1750a.equals(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.exoplayer2.common.a.q
    public boolean f() {
        return false;
    }

    @Override // com.applovin.exoplayer2.common.a.w
    boolean h() {
        return this.f1751b != 0;
    }

    @Override // com.applovin.exoplayer2.common.a.w, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f1751b;
        if (i == 0) {
            int hashCode = this.f1750a.hashCode();
            this.f1751b = hashCode;
            return hashCode;
        }
        return i;
    }

    @Override // com.applovin.exoplayer2.common.a.w
    s<E> i() {
        return s.a(this.f1750a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return "[" + this.f1750a.toString() + ']';
    }
}
