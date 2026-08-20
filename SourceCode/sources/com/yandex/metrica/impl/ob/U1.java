package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.IMetricaService;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C1748o1;
import com.yandex.metrica.impl.ob.J;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class U1 implements C1748o1.c, com.yandex.metrica.rtm.wrapper.k {

    /* renamed from: a  reason: collision with root package name */
    private final P0 f13998a;

    /* renamed from: b  reason: collision with root package name */
    private final C1748o1 f13999b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f14000c;

    /* renamed from: d  reason: collision with root package name */
    private final ICommonExecutor f14001d;

    /* renamed from: e  reason: collision with root package name */
    private final C1728n6 f14002e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends g {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ A3 f14003b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(A3 a3) {
            super(U1.this, null);
            this.f14003b = a3;
        }

        @Override // com.yandex.metrica.impl.ob.U1.g
        void a(IMetricaService iMetricaService) throws RemoteException {
            P0 p0 = U1.this.f13998a;
            A3 a3 = this.f14003b;
            ((T1) p0).getClass();
            Bundle bundle = new Bundle();
            synchronized (a3) {
                bundle.putParcelable("PROCESS_CFG_OBJ", a3);
            }
            iMetricaService.b(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b extends g {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ A3 f14005b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(A3 a3) {
            super(U1.this, null);
            this.f14005b = a3;
        }

        @Override // com.yandex.metrica.impl.ob.U1.g
        void a(IMetricaService iMetricaService) throws RemoteException {
            P0 p0 = U1.this.f13998a;
            A3 a3 = this.f14005b;
            ((T1) p0).getClass();
            Bundle bundle = new Bundle();
            synchronized (a3) {
                bundle.putParcelable("PROCESS_CFG_OBJ", a3);
            }
            iMetricaService.a(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c extends d {

        /* renamed from: d  reason: collision with root package name */
        private boolean f14007d;

        /* renamed from: e  reason: collision with root package name */
        private final Xl f14008e;

        c(f fVar, Xl xl) {
            super(fVar);
            this.f14007d = false;
            this.f14008e = xl;
        }

        @Override // com.yandex.metrica.impl.ob.U1.g
        boolean b() {
            f fVar = this.f14010b;
            if (fVar.b().f14514h == 0) {
                Context a2 = ((T1) U1.this.f13998a).a();
                Intent a3 = C1724n2.a(a2);
                fVar.b().f14511e = EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT.b();
                a3.putExtras(fVar.b().b(fVar.a().c()));
                try {
                    a2.startService(a3);
                    return false;
                } catch (Throwable unused) {
                    U1.this.f14002e.a(fVar);
                    return false;
                }
            }
            U1.this.f14002e.a(fVar);
            return false;
        }

        @Override // com.yandex.metrica.impl.ob.U1.g
        public synchronized Void a() {
            if (this.f14007d) {
                return null;
            }
            this.f14007d = true;
            Xl xl = this.f14008e;
            xl.getClass();
            try {
                if (!TextUtils.isEmpty(xl.b())) {
                    if (xl.b().endsWith(":Metrica")) {
                        a(this.f14010b);
                        return null;
                    }
                }
            } catch (Throwable unused) {
            }
            U1.this.f13999b.g();
            return super.call();
        }

        void a(f fVar) {
            U1.this.f14002e.a(fVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d extends g {

        /* renamed from: b  reason: collision with root package name */
        final f f14010b;

        d(f fVar) {
            super(U1.this, null);
            this.f14010b = fVar;
        }

        @Override // com.yandex.metrica.impl.ob.U1.g
        void a(IMetricaService iMetricaService) throws RemoteException {
            f fVar = this.f14010b;
            ((T1) U1.this.f13998a).a(iMetricaService, fVar.e(), fVar.f14013b);
        }

        @Override // com.yandex.metrica.impl.ob.U1.g
        void a(Throwable th) {
        }

        @Override // com.yandex.metrica.impl.ob.U1.g, java.util.concurrent.Callable
        public /* bridge */ /* synthetic */ Void call() throws Exception {
            return call();
        }
    }

    /* loaded from: classes5.dex */
    public interface e {
        C1448c0 a(C1448c0 c1448c0);
    }

    /* loaded from: classes5.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        private C1448c0 f14012a;

        /* renamed from: b  reason: collision with root package name */
        private Q1 f14013b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f14014c = false;

        /* renamed from: d  reason: collision with root package name */
        private e f14015d;

        /* renamed from: e  reason: collision with root package name */
        private HashMap<J.a, Integer> f14016e;

        public f(C1448c0 c1448c0, Q1 q1) {
            this.f14012a = c1448c0;
            this.f14013b = new Q1(new A3(q1.a()), new CounterConfiguration(q1.b()), q1.e());
        }

        public C1448c0 b() {
            return this.f14012a;
        }

        public HashMap<J.a, Integer> c() {
            return this.f14016e;
        }

        public boolean d() {
            return this.f14014c;
        }

        C1448c0 e() {
            e eVar = this.f14015d;
            return eVar != null ? eVar.a(this.f14012a) : this.f14012a;
        }

        public String toString() {
            return "ReportToSend{mReport=" + this.f14012a + ", mEnvironment=" + this.f14013b + ", mCrash=" + this.f14014c + ", mAction=" + this.f14015d + ", mTrimmedFields=" + this.f14016e + '}';
        }

        public f a(e eVar) {
            this.f14015d = eVar;
            return this;
        }

        public f a(HashMap<J.a, Integer> hashMap) {
            this.f14016e = hashMap;
            return this;
        }

        public f a(boolean z) {
            this.f14014c = z;
            return this;
        }

        public Q1 a() {
            return this.f14013b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public abstract class g implements Callable<Void> {
        private g() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() {
            int i = 0;
            do {
                try {
                    IMetricaService d2 = U1.this.f13999b.d();
                    if (d2 != null) {
                        try {
                            a(d2);
                            return null;
                        } catch (RemoteException unused) {
                        }
                    }
                    i++;
                    if (!b() || C1.a()) {
                        break;
                    }
                } catch (Throwable th) {
                    a(th);
                    return null;
                }
            } while (i < 2);
            return null;
        }

        abstract void a(IMetricaService iMetricaService) throws RemoteException;

        void a(Throwable th) {
        }

        boolean b() {
            U1.this.f13999b.b();
            synchronized (U1.this.f14000c) {
                if (!U1.this.f13999b.e()) {
                    try {
                        U1.this.f14000c.wait(5000L, 0);
                    } catch (InterruptedException unused) {
                        U1.this.f14000c.notifyAll();
                    }
                }
            }
            return true;
        }

        /* synthetic */ g(U1 u1, a aVar) {
            this();
        }
    }

    /* loaded from: classes5.dex */
    class h extends g {

        /* renamed from: b  reason: collision with root package name */
        private final int f14018b;

        /* renamed from: c  reason: collision with root package name */
        private final Bundle f14019c;

        h(U1 u1, int i, Bundle bundle) {
            super(u1, null);
            this.f14018b = i;
            this.f14019c = bundle;
        }

        @Override // com.yandex.metrica.impl.ob.U1.g
        void a(IMetricaService iMetricaService) throws RemoteException {
            iMetricaService.a(this.f14018b, this.f14019c);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public U1(com.yandex.metrica.impl.ob.P0 r4) {
        /*
            r3 = this;
            com.yandex.metrica.impl.ob.P r0 = com.yandex.metrica.impl.ob.P.g()
            com.yandex.metrica.impl.ob.Im r0 = r0.d()
            com.yandex.metrica.core.api.executors.ICommonExecutor r0 = r0.d()
            com.yandex.metrica.impl.ob.n6 r1 = new com.yandex.metrica.impl.ob.n6
            com.yandex.metrica.impl.ob.T1 r4 = (com.yandex.metrica.impl.ob.T1) r4
            android.content.Context r2 = r4.a()
            r1.<init>(r2)
            r3.<init>(r4, r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.U1.<init>(com.yandex.metrica.impl.ob.P0):void");
    }

    @Override // com.yandex.metrica.impl.ob.C1748o1.c
    public void onServiceConnected() {
        synchronized (this.f14000c) {
            this.f14000c.notifyAll();
        }
    }

    @Override // com.yandex.metrica.impl.ob.C1748o1.c
    public void onServiceDisconnected() {
    }

    public Future<Void> queuePauseUserSession(A3 a3) {
        return this.f14001d.submit(new b(a3));
    }

    public Future<Void> queueReport(f fVar) {
        Callable dVar;
        ICommonExecutor iCommonExecutor = this.f14001d;
        if (fVar.d()) {
            dVar = new c(fVar, P.g().h());
        } else {
            dVar = new d(fVar);
        }
        return iCommonExecutor.submit(dVar);
    }

    public Future<Void> queueResumeUserSession(A3 a3) {
        return this.f14001d.submit(new a(a3));
    }

    public void reportData(int i, Bundle bundle) {
        this.f14001d.submit(new h(this, i, bundle));
    }

    public void sendCrash(f fVar) {
        c cVar = new c(fVar, P.g().h());
        if (this.f13999b.e()) {
            try {
                this.f14001d.submit(cVar).get(4L, TimeUnit.SECONDS);
            } catch (Throwable unused) {
            }
        }
        if (cVar.f14007d) {
            return;
        }
        try {
            cVar.a();
        } catch (Throwable unused2) {
        }
    }

    public U1(P0 p0, ICommonExecutor iCommonExecutor, C1728n6 c1728n6) {
        this.f14000c = new Object();
        this.f13998a = p0;
        this.f14001d = iCommonExecutor;
        this.f14002e = c1728n6;
        C1748o1 c2 = ((T1) p0).c();
        this.f13999b = c2;
        c2.a(this);
    }
}
