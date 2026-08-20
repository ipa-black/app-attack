package com.appodeal.ads.utils;

import android.os.Handler;
import android.os.Looper;
import java.util.Collection;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public static final Handler f7805a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    public static HashMap f7806b = new HashMap();

    /* loaded from: classes2.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final com.appodeal.ads.l f7807a;

        /* renamed from: b  reason: collision with root package name */
        public final b f7808b;

        /* renamed from: c  reason: collision with root package name */
        public final long f7809c;

        public a(com.appodeal.ads.l lVar, b bVar) {
            this.f7807a = lVar;
            this.f7808b = bVar;
            this.f7809c = (lVar.getExpTime() * 1000) + System.currentTimeMillis();
        }

        @Override // java.lang.Runnable
        public final void run() {
            o.b(this.f7807a);
            b bVar = this.f7808b;
            if (bVar != null) {
                bVar.a(this.f7807a);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface b<AdObjectType extends com.appodeal.ads.l> {
        void a(AdObjectType adobjecttype);
    }

    public static void a(com.appodeal.ads.l lVar) {
        a aVar;
        if (lVar == null || lVar.f6826c.getExpTime() <= 0 || (aVar = (a) f7806b.get(lVar)) == null) {
            return;
        }
        long currentTimeMillis = aVar.f7809c - System.currentTimeMillis();
        if (currentTimeMillis <= 0) {
            aVar.run();
            return;
        }
        Runnable runnable = (Runnable) f7806b.get(lVar);
        if (runnable != null) {
            f7805a.removeCallbacks(runnable);
        }
        f7805a.postDelayed(aVar, currentTimeMillis);
    }

    public static void a(Collection<? extends com.appodeal.ads.l> collection) {
        if (collection != null) {
            for (com.appodeal.ads.l lVar : collection) {
                b(lVar);
            }
        }
    }

    public static void b(com.appodeal.ads.l lVar) {
        if (lVar != null) {
            Runnable runnable = (Runnable) f7806b.get(lVar);
            if (runnable != null) {
                f7805a.removeCallbacks(runnable);
            }
            f7806b.remove(lVar);
        }
    }
}
