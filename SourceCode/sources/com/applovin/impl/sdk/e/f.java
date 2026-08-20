package com.applovin.impl.sdk.e;

import com.applovin.impl.sdk.o;
/* loaded from: classes.dex */
public class f extends com.applovin.impl.sdk.e.a {

    /* renamed from: a  reason: collision with root package name */
    private final a f5695a;

    /* loaded from: classes.dex */
    public interface a {
        void a(o.a aVar);
    }

    public f(com.applovin.impl.sdk.n nVar, a aVar) {
        super("TaskCollectAdvertisingId", nVar, true);
        this.f5695a = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f5695a.a(this.f5674b.Y().k());
    }
}
