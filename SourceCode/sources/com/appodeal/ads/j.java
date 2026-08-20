package com.appodeal.ads;

import android.content.Context;
/* loaded from: classes.dex */
public final class j extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f6743a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ i f6744b;

    public j(i iVar, Context context) {
        this.f6744b = iVar;
        this.f6743a = context;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        super.run();
        this.f6744b.b(this.f6743a);
    }
}
