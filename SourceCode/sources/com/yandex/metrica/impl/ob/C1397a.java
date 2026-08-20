package com.yandex.metrica.impl.ob;

import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.yandex.metrica.impl.ob.a  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1397a {

    /* renamed from: f  reason: collision with root package name */
    private static final long f14367f = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: a  reason: collision with root package name */
    private final b f14368a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f14369b = new Handler(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    private final Thread f14370c = new c();

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f14371d = new AtomicBoolean();

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f14372e = new RunnableC0352a();

    /* renamed from: com.yandex.metrica.impl.ob.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class RunnableC0352a implements Runnable {
        RunnableC0352a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1397a.this.f14371d.set(true);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.a$b */
    /* loaded from: classes5.dex */
    public interface b {
        void a();
    }

    /* renamed from: com.yandex.metrica.impl.ob.a$c */
    /* loaded from: classes5.dex */
    private class c extends Thread {
        public c() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            boolean z = false;
            int i = 0;
            while (!isInterrupted()) {
                if (!z) {
                    C1397a.this.f14371d.set(false);
                    C1397a.this.f14369b.post(C1397a.this.f14372e);
                    i = 0;
                }
                try {
                    Thread.sleep(C1397a.f14367f);
                    if (C1397a.this.f14371d.get()) {
                        z = false;
                    } else {
                        i++;
                        if (i == 4 && !Debug.isDebuggerConnected()) {
                            C1397a.this.b();
                        }
                        z = true;
                    }
                } catch (InterruptedException unused) {
                    return;
                }
            }
        }
    }

    public C1397a(b bVar) {
        this.f14368a = bVar;
    }

    public void b() {
        this.f14368a.a();
    }

    public void c() {
        try {
            this.f14370c.setName("CR-WatchDog");
        } catch (SecurityException unused) {
        }
        this.f14370c.start();
    }
}
