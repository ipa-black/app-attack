package com.yandex.metrica.impl.ob;

import android.os.Handler;
import android.os.SystemClock;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.b1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1424b1 {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f14431a;

    /* renamed from: b  reason: collision with root package name */
    private final B f14432b;

    /* renamed from: c  reason: collision with root package name */
    private final RunnableC1449c1 f14433c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1424b1(Handler handler, B b2) {
        this.f14431a = handler;
        this.f14432b = b2;
        this.f14433c = new RunnableC1449c1(handler, b2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f14431a.removeCallbacks(this.f14433c, this.f14432b.f12654b.b().a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a(this.f14431a, this.f14432b, this.f14433c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Handler handler, B b2, Runnable runnable) {
        handler.removeCallbacks(runnable, b2.f12654b.b().a());
        String a2 = b2.f12654b.b().a();
        long uptimeMillis = SystemClock.uptimeMillis();
        Integer l = b2.f12654b.b().l();
        if (l == null) {
            l = 10;
        }
        handler.postAtTime(runnable, a2, uptimeMillis + (l.intValue() * 500));
    }
}
