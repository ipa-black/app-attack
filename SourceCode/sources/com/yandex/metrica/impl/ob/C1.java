package com.yandex.metrica.impl.ob;

import java.lang.Thread;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
class C1 implements Thread.UncaughtExceptionHandler {

    /* renamed from: f  reason: collision with root package name */
    private static final AtomicBoolean f12726f = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    private final List<A6> f12727a;

    /* renamed from: b  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f12728b;

    /* renamed from: c  reason: collision with root package name */
    private final C1650k3 f12729c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1445bm f12730d;

    /* renamed from: e  reason: collision with root package name */
    private final C1601i3 f12731e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, List<A6> list, InterfaceC1445bm interfaceC1445bm, C1601i3 c1601i3, C1650k3 c1650k3) {
        this.f12727a = list;
        this.f12728b = uncaughtExceptionHandler;
        this.f12730d = interfaceC1445bm;
        this.f12731e = c1601i3;
        this.f12729c = c1650k3;
    }

    public static boolean a() {
        return f12726f.get();
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            f12726f.set(true);
            C1945w6 c1945w6 = new C1945w6(this.f12731e.a(thread), this.f12729c.a(thread), ((Xl) this.f12730d).b());
            for (A6 a6 : this.f12727a) {
                a6.a(th, c1945w6);
            }
        } finally {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f12728b;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        }
    }
}
