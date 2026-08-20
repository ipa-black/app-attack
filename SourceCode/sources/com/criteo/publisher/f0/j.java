package com.criteo.publisher.f0;

import java.util.List;
/* compiled from: BoundedSendingQueue.java */
/* loaded from: classes2.dex */
class j<T> implements k<T> {

    /* renamed from: a  reason: collision with root package name */
    private final k<T> f8789a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f8790b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final a0<T> f8791c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(k<T> kVar, a0<T> a0Var) {
        this.f8789a = kVar;
        this.f8791c = a0Var;
    }

    @Override // com.criteo.publisher.f0.k
    public boolean a(T t) {
        boolean a2;
        synchronized (this.f8790b) {
            if (a() >= this.f8791c.c()) {
                this.f8789a.a(1);
            }
            a2 = this.f8789a.a((k<T>) t);
        }
        return a2;
    }

    @Override // com.criteo.publisher.f0.k
    public List<T> a(int i) {
        List<T> a2;
        synchronized (this.f8790b) {
            a2 = this.f8789a.a(i);
        }
        return a2;
    }

    @Override // com.criteo.publisher.f0.k
    public int a() {
        return this.f8789a.a();
    }
}
