package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class H0 {

    /* renamed from: a  reason: collision with root package name */
    private final ICommonExecutor f12998a;

    /* renamed from: b  reason: collision with root package name */
    private final J0 f12999b;

    /* renamed from: c  reason: collision with root package name */
    private final d f13000c;

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f13001d = new a();

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f13002e = new b();

    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            H0.this.f12999b.a();
        }
    }

    /* loaded from: classes5.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((AbstractC1917v2) H0.this.f13000c).b()) {
                H0.this.f13001d.run();
            }
        }
    }

    /* loaded from: classes5.dex */
    public static class c {
        public H0 a(ICommonExecutor iCommonExecutor, J0 j0, d dVar) {
            return new H0(iCommonExecutor, j0, dVar);
        }
    }

    /* loaded from: classes5.dex */
    public interface d {
    }

    public H0(ICommonExecutor iCommonExecutor, J0 j0, d dVar) {
        this.f12998a = iCommonExecutor;
        this.f12999b = j0;
        this.f13000c = dVar;
    }

    public void d() {
        this.f12998a.remove(this.f13001d);
        this.f12998a.remove(this.f13002e);
    }

    public void a() {
        this.f12998a.remove(this.f13001d);
        this.f12998a.executeDelayed(this.f13001d, 90L, TimeUnit.SECONDS);
    }

    public void b() {
        this.f12998a.execute(this.f13002e);
    }

    public void c() {
        this.f12998a.remove(this.f13001d);
        this.f12998a.executeDelayed(this.f13001d, 90L, TimeUnit.SECONDS);
    }
}
