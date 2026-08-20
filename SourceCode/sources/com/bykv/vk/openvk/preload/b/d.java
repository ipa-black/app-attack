package com.bykv.vk.openvk.preload.b;

import java.util.concurrent.atomic.AtomicLong;
/* compiled from: Interceptor.java */
/* loaded from: classes2.dex */
public abstract class d<IN, OUT> {

    /* renamed from: g  reason: collision with root package name */
    private static AtomicLong f8402g = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    d f8403a;

    /* renamed from: b  reason: collision with root package name */
    IN f8404b;

    /* renamed from: c  reason: collision with root package name */
    public OUT f8405c;

    /* renamed from: d  reason: collision with root package name */
    com.bykv.vk.openvk.preload.b.b.a f8406d;

    /* renamed from: e  reason: collision with root package name */
    b f8407e;

    /* renamed from: f  reason: collision with root package name */
    public long f8408f;

    public abstract Object a(b<OUT> bVar, IN in) throws Throwable;

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Object... objArr) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(b bVar, d dVar, IN in, com.bykv.vk.openvk.preload.b.b.a aVar, Object[] objArr) {
        this.f8407e = new m(bVar);
        this.f8403a = dVar;
        this.f8404b = in;
        this.f8406d = aVar;
        if (dVar != null) {
            this.f8408f = dVar.f8408f;
        } else {
            long andIncrement = f8402g.getAndIncrement();
            this.f8408f = andIncrement;
            if (andIncrement < 0) {
                throw new RuntimeException("Pipeline ID use up!");
            }
        }
        a(objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(Throwable th) {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f8406d;
        if (aVar == null) {
            return;
        }
        aVar.c(this.f8407e, this, th);
    }
}
