package com.yandex.metrica.impl.ob;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.yandex.metrica.IMetricaService;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.o1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1748o1 {
    public static final long j = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: a  reason: collision with root package name */
    private final Context f15301a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f15302b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15303c;

    /* renamed from: d  reason: collision with root package name */
    private final List<c> f15304d;

    /* renamed from: e  reason: collision with root package name */
    private IMetricaService f15305e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f15306f;

    /* renamed from: g  reason: collision with root package name */
    private final C2012z1 f15307g;

    /* renamed from: h  reason: collision with root package name */
    private final Runnable f15308h;
    private final ServiceConnection i;

    /* renamed from: com.yandex.metrica.impl.ob.o1$a */
    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1748o1.a(C1748o1.this);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.o1$b */
    /* loaded from: classes5.dex */
    class b implements ServiceConnection {
        b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (C1748o1.this) {
                C1748o1.this.f15305e = IMetricaService.a.a(iBinder);
            }
            C1748o1.b(C1748o1.this);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (C1748o1.this) {
                C1748o1.this.f15305e = null;
            }
            C1748o1.c(C1748o1.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.o1$c */
    /* loaded from: classes5.dex */
    public interface c {
        void onServiceConnected();

        void onServiceDisconnected();
    }

    public C1748o1(Context context, ICommonExecutor iCommonExecutor) {
        this(context, iCommonExecutor, P.g().i());
    }

    static void c(C1748o1 c1748o1) {
        for (c cVar : c1748o1.f15304d) {
            cVar.onServiceDisconnected();
        }
    }

    public void b() {
        synchronized (this) {
            if (this.f15305e != null) {
                return;
            }
            Intent a2 = C1724n2.a(this.f15301a);
            try {
                this.f15307g.a(this.f15301a);
                this.f15301a.bindService(a2, this.i, 1);
            } catch (Throwable unused) {
            }
        }
    }

    public synchronized IMetricaService d() {
        return this.f15305e;
    }

    public synchronized boolean e() {
        return this.f15305e != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        synchronized (this.f15306f) {
            this.f15302b.remove(this.f15308h);
        }
    }

    public void g() {
        ICommonExecutor iCommonExecutor = this.f15302b;
        synchronized (this.f15306f) {
            iCommonExecutor.remove(this.f15308h);
            if (!this.f15303c) {
                iCommonExecutor.executeDelayed(this.f15308h, j);
            }
        }
    }

    static void a(C1748o1 c1748o1) {
        synchronized (c1748o1) {
            if (c1748o1.f15301a != null && c1748o1.e()) {
                try {
                    c1748o1.f15305e = null;
                    c1748o1.f15301a.unbindService(c1748o1.i);
                } catch (Throwable unused) {
                }
            }
            c1748o1.f15305e = null;
            for (c cVar : c1748o1.f15304d) {
                cVar.onServiceDisconnected();
            }
        }
    }

    C1748o1(Context context, ICommonExecutor iCommonExecutor, C2012z1 c2012z1) {
        this.f15304d = new CopyOnWriteArrayList();
        this.f15305e = null;
        this.f15306f = new Object();
        this.f15308h = new a();
        this.i = new b();
        this.f15301a = context.getApplicationContext();
        this.f15302b = iCommonExecutor;
        this.f15303c = false;
        this.f15307g = c2012z1;
    }

    public void c() {
        synchronized (this.f15306f) {
            this.f15303c = true;
            f();
        }
    }

    static void b(C1748o1 c1748o1) {
        for (c cVar : c1748o1.f15304d) {
            cVar.onServiceConnected();
        }
    }

    public void a(c cVar) {
        this.f15304d.add(cVar);
    }

    public void a() {
        synchronized (this.f15306f) {
            this.f15303c = false;
            g();
        }
    }
}
