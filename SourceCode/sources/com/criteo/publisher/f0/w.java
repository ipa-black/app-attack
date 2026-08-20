package com.criteo.publisher.f0;

import java.util.concurrent.Executor;
/* compiled from: MetricSendingQueueConsumer.java */
/* loaded from: classes2.dex */
public class w {

    /* renamed from: a  reason: collision with root package name */
    private final u f8826a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.k0.g f8827b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.n0.g f8828c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.model.t f8829d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f8830e;

    public w(u uVar, com.criteo.publisher.k0.g gVar, com.criteo.publisher.n0.g gVar2, com.criteo.publisher.model.t tVar, Executor executor) {
        this.f8826a = uVar;
        this.f8827b = gVar;
        this.f8828c = gVar2;
        this.f8829d = tVar;
        this.f8830e = executor;
    }

    public void a() {
        if (this.f8829d.g()) {
            this.f8830e.execute(new y(this.f8826a, this.f8827b, this.f8828c));
        }
    }
}
