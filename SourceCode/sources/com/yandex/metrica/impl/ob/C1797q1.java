package com.yandex.metrica.impl.ob;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import com.yandex.metrica.MetricaService;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* renamed from: com.yandex.metrica.impl.ob.q1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1797q1 implements InterfaceC1773p1 {

    /* renamed from: a  reason: collision with root package name */
    private ICommonExecutor f15440a;

    /* renamed from: b  reason: collision with root package name */
    private InterfaceC1773p1 f15441b;

    /* renamed from: c  reason: collision with root package name */
    private final C1524f1 f15442c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f15443d;

    /* renamed from: com.yandex.metrica.impl.ob.q1$a */
    /* loaded from: classes5.dex */
    class a extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bundle f15444a;

        a(Bundle bundle) {
            this.f15444a = bundle;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() throws Exception {
            C1797q1.this.f15441b.b(this.f15444a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$b */
    /* loaded from: classes5.dex */
    class b extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bundle f15446a;

        b(Bundle bundle) {
            this.f15446a = bundle;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() throws Exception {
            C1797q1.this.f15441b.a(this.f15446a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$c */
    /* loaded from: classes5.dex */
    class c extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Configuration f15448a;

        c(Configuration configuration) {
            this.f15448a = configuration;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() throws Exception {
            C1797q1.this.f15441b.onConfigurationChanged(this.f15448a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$d */
    /* loaded from: classes5.dex */
    class d extends AbstractRunnableC1520em {
        d() {
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() {
            synchronized (C1797q1.this) {
                if (C1797q1.this.f15443d) {
                    C1797q1.this.f15442c.e();
                    C1797q1.this.f15441b.a();
                }
            }
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$e */
    /* loaded from: classes5.dex */
    class e extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f15451a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f15452b;

        e(Intent intent, int i) {
            this.f15451a = intent;
            this.f15452b = i;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() {
            C1797q1.this.f15441b.a(this.f15451a, this.f15452b);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$f */
    /* loaded from: classes5.dex */
    class f extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f15454a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f15455b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f15456c;

        f(Intent intent, int i, int i2) {
            this.f15454a = intent;
            this.f15455b = i;
            this.f15456c = i2;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() {
            C1797q1.this.f15441b.a(this.f15454a, this.f15455b, this.f15456c);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$g */
    /* loaded from: classes5.dex */
    class g extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f15458a;

        g(Intent intent) {
            this.f15458a = intent;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() {
            C1797q1.this.f15441b.a(this.f15458a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$h */
    /* loaded from: classes5.dex */
    class h extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f15460a;

        h(Intent intent) {
            this.f15460a = intent;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() {
            C1797q1.this.f15441b.c(this.f15460a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$i */
    /* loaded from: classes5.dex */
    class i extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f15462a;

        i(Intent intent) {
            this.f15462a = intent;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() {
            C1797q1.this.f15441b.b(this.f15462a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$j */
    /* loaded from: classes5.dex */
    class j extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15464a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f15465b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f15466c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Bundle f15467d;

        j(String str, int i, String str2, Bundle bundle) {
            this.f15464a = str;
            this.f15465b = i;
            this.f15466c = str2;
            this.f15467d = bundle;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() throws RemoteException {
            C1797q1.this.f15441b.a(this.f15464a, this.f15465b, this.f15466c, this.f15467d);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$k */
    /* loaded from: classes5.dex */
    class k extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bundle f15469a;

        k(Bundle bundle) {
            this.f15469a = bundle;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() throws Exception {
            C1797q1.this.f15441b.reportData(this.f15469a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$l */
    /* loaded from: classes5.dex */
    class l extends AbstractRunnableC1520em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f15471a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Bundle f15472b;

        l(int i, Bundle bundle) {
            this.f15471a = i;
            this.f15472b = bundle;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC1520em
        public void a() throws Exception {
            C1797q1.this.f15441b.a(this.f15471a, this.f15472b);
        }
    }

    public C1797q1(InterfaceC1773p1 interfaceC1773p1) {
        this(F0.g().q().c(), interfaceC1773p1, F0.g().h());
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void onConfigurationChanged(Configuration configuration) {
        this.f15440a.execute(new c(configuration));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1773p1
    public void reportData(Bundle bundle) {
        this.f15440a.execute(new k(bundle));
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public synchronized void a() {
        this.f15443d = true;
        this.f15440a.execute(new d());
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void b(Intent intent) {
        this.f15440a.execute(new i(intent));
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void c(Intent intent) {
        this.f15440a.execute(new h(intent));
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void b() {
        this.f15440a.removeAll();
        synchronized (this) {
            this.f15442c.f();
            this.f15443d = false;
        }
        this.f15441b.b();
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a(Intent intent, int i2) {
        this.f15440a.execute(new e(intent, i2));
    }

    C1797q1(ICommonExecutor iCommonExecutor, InterfaceC1773p1 interfaceC1773p1, C1524f1 c1524f1) {
        this.f15443d = false;
        this.f15440a = iCommonExecutor;
        this.f15441b = interfaceC1773p1;
        this.f15442c = c1524f1;
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a(Intent intent, int i2, int i3) {
        this.f15440a.execute(new f(intent, i2, i3));
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a(Intent intent) {
        this.f15440a.execute(new g(intent));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1773p1
    public void a(String str, int i2, String str2, Bundle bundle) {
        this.f15440a.execute(new j(str, i2, str2, bundle));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1773p1
    public void a(int i2, Bundle bundle) {
        this.f15440a.execute(new l(i2, bundle));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1773p1
    public void a(Bundle bundle) {
        this.f15440a.execute(new b(bundle));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1773p1
    public void a(MetricaService.d dVar) {
        this.f15441b.a(dVar);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1773p1
    public void b(Bundle bundle) {
        this.f15440a.execute(new a(bundle));
    }
}
