package com.criteo.publisher.f0;

import com.criteo.publisher.s;
/* compiled from: SendingQueueFactory.java */
/* loaded from: classes2.dex */
public class b0<T> implements s.a<k<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final z<T> f8745a;

    /* renamed from: b  reason: collision with root package name */
    private final a0<T> f8746b;

    public b0(z<T> zVar, a0<T> a0Var) {
        this.f8745a = zVar;
        this.f8746b = a0Var;
    }

    @Override // com.criteo.publisher.s.a
    /* renamed from: b */
    public k<T> a() {
        return new j(new e0(this.f8745a, this.f8746b), this.f8746b);
    }
}
