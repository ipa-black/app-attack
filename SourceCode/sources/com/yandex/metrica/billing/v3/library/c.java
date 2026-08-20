package com.yandex.metrica.billing.v3.library;

import android.content.Context;
import com.android.billingclient.api.BillingClient;
import com.yandex.metrica.billing_interface.f;
import com.yandex.metrica.impl.ob.C1597i;
import com.yandex.metrica.impl.ob.InterfaceC1621j;
import com.yandex.metrica.impl.ob.InterfaceC1646k;
import com.yandex.metrica.impl.ob.InterfaceC1671l;
import com.yandex.metrica.impl.ob.InterfaceC1696m;
import com.yandex.metrica.impl.ob.InterfaceC1746o;
import java.util.concurrent.Executor;
/* loaded from: classes3.dex */
public class c implements InterfaceC1646k, InterfaceC1621j {

    /* renamed from: a  reason: collision with root package name */
    private final Context f12410a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f12411b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f12412c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1671l f12413d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC1746o f12414e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC1696m f12415f;

    /* renamed from: g  reason: collision with root package name */
    private C1597i f12416g;

    /* loaded from: classes3.dex */
    class a extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1597i f12417a;

        a(C1597i c1597i) {
            this.f12417a = c1597i;
        }

        @Override // com.yandex.metrica.billing_interface.f
        public void a() {
            BillingClient build = BillingClient.newBuilder(c.this.f12410a).setListener(new PurchasesUpdatedListenerImpl()).enablePendingPurchases().build();
            build.startConnection(new BillingClientStateListenerImpl(this.f12417a, c.this.f12411b, c.this.f12412c, build, c.this, new b(build)));
        }
    }

    public c(Context context, Executor executor, Executor executor2, InterfaceC1671l interfaceC1671l, InterfaceC1746o interfaceC1746o, InterfaceC1696m interfaceC1696m) {
        this.f12410a = context;
        this.f12411b = executor;
        this.f12412c = executor2;
        this.f12413d = interfaceC1671l;
        this.f12414e = interfaceC1746o;
        this.f12415f = interfaceC1696m;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1621j
    public InterfaceC1696m d() {
        return this.f12415f;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1621j
    public InterfaceC1671l e() {
        return this.f12413d;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1621j
    public InterfaceC1746o f() {
        return this.f12414e;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1646k
    public synchronized void a(C1597i c1597i) {
        this.f12416g = c1597i;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1646k
    public void b() throws Throwable {
        C1597i c1597i = this.f12416g;
        if (c1597i != null) {
            this.f12412c.execute(new a(c1597i));
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1621j
    public Executor c() {
        return this.f12412c;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1621j
    public Executor a() {
        return this.f12411b;
    }
}
