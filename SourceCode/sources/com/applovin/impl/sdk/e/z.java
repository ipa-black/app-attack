package com.applovin.impl.sdk.e;
/* loaded from: classes.dex */
public class z extends a {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f5778a;

    public z(com.applovin.impl.sdk.n nVar, Runnable runnable) {
        this(nVar, false, runnable);
    }

    public z(com.applovin.impl.sdk.n nVar, boolean z, Runnable runnable) {
        super("TaskRunnable", nVar, z);
        this.f5778a = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f5778a.run();
    }
}
