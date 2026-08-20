package com.pgl.ssdk;

import android.os.HandlerThread;
import java.lang.ref.WeakReference;
/* compiled from: HandlerPool.java */
/* loaded from: classes3.dex */
public class M {

    /* renamed from: a  reason: collision with root package name */
    private final P<N> f12183a;

    /* renamed from: b  reason: collision with root package name */
    private Q f12184b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HandlerPool.java */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final M f12185a = new M();
    }

    public static M a() {
        return b.f12185a;
    }

    public Q b() {
        if (this.f12184b == null) {
            synchronized (M.class) {
                if (this.f12184b == null) {
                    this.f12184b = a("ssdk_net_handler");
                }
            }
        }
        return this.f12184b;
    }

    public Q c() {
        if (this.f12184b == null) {
            synchronized (M.class) {
                if (this.f12184b == null) {
                    this.f12184b = a("ssdk_handler");
                }
            }
        }
        return this.f12184b;
    }

    private M() {
        this.f12183a = P.a(2);
    }

    public Q a(String str) {
        N a2 = this.f12183a.a();
        if (a2 != null) {
            a2.f12188a = new WeakReference<>(null);
            a2.a(str);
            return a2;
        }
        if (!H.b().a()) {
            try {
                HandlerThread handlerThread = new HandlerThread(str);
                handlerThread.start();
                return new N(handlerThread, null);
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
