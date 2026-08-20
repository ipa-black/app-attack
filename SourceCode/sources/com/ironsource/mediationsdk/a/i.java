package com.ironsource.mediationsdk.a;

import android.os.Handler;
import android.os.HandlerThread;
/* loaded from: classes3.dex */
public final class i extends Thread {

    /* renamed from: b  reason: collision with root package name */
    private static i f10943b;

    /* renamed from: a  reason: collision with root package name */
    private a f10944a;

    /* loaded from: classes3.dex */
    class a extends HandlerThread {

        /* renamed from: a  reason: collision with root package name */
        Handler f10945a;

        a(String str) {
            super(str);
            setUncaughtExceptionHandler(new com.ironsource.mediationsdk.logger.c());
        }
    }

    private i() {
        a aVar = new a(getClass().getSimpleName());
        this.f10944a = aVar;
        aVar.start();
        a aVar2 = this.f10944a;
        aVar2.f10945a = new Handler(aVar2.getLooper());
    }

    public static synchronized i a() {
        i iVar;
        synchronized (i.class) {
            if (f10943b == null) {
                f10943b = new i();
            }
            iVar = f10943b;
        }
        return iVar;
    }

    public final synchronized void a(Runnable runnable) {
        a aVar = this.f10944a;
        if (aVar == null) {
            return;
        }
        Handler handler = aVar.f10945a;
        if (handler != null) {
            handler.post(runnable);
        }
    }
}
