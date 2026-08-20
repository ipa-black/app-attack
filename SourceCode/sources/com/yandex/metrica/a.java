package com.yandex.metrica;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.P;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final ICommonExecutor f12343a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<b> f12344b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f12345c;

    /* renamed from: com.yandex.metrica.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0343a {
        void a();

        void b();
    }

    /* loaded from: classes3.dex */
    private class b {

        /* renamed from: a  reason: collision with root package name */
        final ICommonExecutor f12346a;

        /* renamed from: b  reason: collision with root package name */
        final InterfaceC0343a f12347b;

        /* renamed from: c  reason: collision with root package name */
        private final long f12348c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f12349d = true;

        /* renamed from: e  reason: collision with root package name */
        private final Runnable f12350e = new RunnableC0344a();

        /* renamed from: com.yandex.metrica.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0344a implements Runnable {
            RunnableC0344a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.f12347b.a();
            }
        }

        b(a aVar, InterfaceC0343a interfaceC0343a, ICommonExecutor iCommonExecutor, long j) {
            this.f12347b = interfaceC0343a;
            this.f12346a = iCommonExecutor;
            this.f12348c = j;
        }

        void a() {
            if (this.f12349d) {
                return;
            }
            this.f12349d = true;
            this.f12346a.executeDelayed(this.f12350e, this.f12348c);
        }

        void b() {
            if (this.f12349d) {
                this.f12349d = false;
                this.f12346a.remove(this.f12350e);
                this.f12347b.b();
            }
        }
    }

    public a(long j) {
        this(j, P.g().d().b());
    }

    public synchronized void a() {
        this.f12345c = true;
        for (b bVar : this.f12344b) {
            bVar.a();
        }
    }

    public synchronized void b() {
        this.f12345c = false;
        for (b bVar : this.f12344b) {
            bVar.b();
        }
    }

    a(long j, ICommonExecutor iCommonExecutor) {
        this.f12344b = new HashSet();
        this.f12345c = true;
        this.f12343a = iCommonExecutor;
    }

    public synchronized void a(InterfaceC0343a interfaceC0343a, long j) {
        synchronized (this) {
            this.f12344b.add(new b(this, interfaceC0343a, this.f12343a, j));
        }
    }
}
