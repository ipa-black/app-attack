package com.yandex.metrica.billing.v4.library;

import android.content.Context;
import com.android.billingclient.api.BillingClient;
import com.yandex.metrica.billing_interface.f;
import com.yandex.metrica.impl.ob.C1597i;
import com.yandex.metrica.impl.ob.InterfaceC1621j;
import com.yandex.metrica.impl.ob.InterfaceC1646k;
import com.yandex.metrica.impl.ob.InterfaceC1671l;
import com.yandex.metrica.impl.ob.InterfaceC1696m;
import com.yandex.metrica.impl.ob.InterfaceC1721n;
import com.yandex.metrica.impl.ob.InterfaceC1746o;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes3.dex */
public final class c implements InterfaceC1646k, InterfaceC1621j {

    /* renamed from: a  reason: collision with root package name */
    private C1597i f12468a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f12469b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f12470c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f12471d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC1696m f12472e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC1671l f12473f;

    /* renamed from: g  reason: collision with root package name */
    private final InterfaceC1746o f12474g;

    /* loaded from: classes3.dex */
    public static final class a extends f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ C1597i f12476b;

        a(C1597i c1597i) {
            this.f12476b = c1597i;
        }

        @Override // com.yandex.metrica.billing_interface.f
        public void a() {
            BillingClient build = BillingClient.newBuilder(c.this.f12469b).setListener(new PurchasesUpdatedListenerImpl()).enablePendingPurchases().build();
            Intrinsics.checkNotNullExpressionValue(build, "BillingClient\n          …                 .build()");
            build.startConnection(new BillingClientStateListenerImpl(this.f12476b, build, c.this));
        }
    }

    public c(Context context, Executor workerExecutor, Executor uiExecutor, InterfaceC1721n billingInfoStorage, InterfaceC1696m billingInfoSender, InterfaceC1671l billingInfoManager, InterfaceC1746o updatePolicy) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(workerExecutor, "workerExecutor");
        Intrinsics.checkNotNullParameter(uiExecutor, "uiExecutor");
        Intrinsics.checkNotNullParameter(billingInfoStorage, "billingInfoStorage");
        Intrinsics.checkNotNullParameter(billingInfoSender, "billingInfoSender");
        Intrinsics.checkNotNullParameter(billingInfoManager, "billingInfoManager");
        Intrinsics.checkNotNullParameter(updatePolicy, "updatePolicy");
        this.f12469b = context;
        this.f12470c = workerExecutor;
        this.f12471d = uiExecutor;
        this.f12472e = billingInfoSender;
        this.f12473f = billingInfoManager;
        this.f12474g = updatePolicy;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1646k
    public void b() {
        C1597i c1597i = this.f12468a;
        if (c1597i != null) {
            this.f12471d.execute(new a(c1597i));
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1621j
    public Executor c() {
        return this.f12471d;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1621j
    public InterfaceC1696m d() {
        return this.f12472e;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1621j
    public InterfaceC1671l e() {
        return this.f12473f;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1621j
    public InterfaceC1746o f() {
        return this.f12474g;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1646k
    public synchronized void a(C1597i c1597i) {
        this.f12468a = c1597i;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1621j
    public Executor a() {
        return this.f12470c;
    }
}
