package com.yandex.metrica.billing.v3.library;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingResult;
import com.yandex.metrica.billing_interface.f;
import com.yandex.metrica.billing_interface.g;
import com.yandex.metrica.impl.ob.C1597i;
import com.yandex.metrica.impl.ob.InterfaceC1621j;
import java.util.Arrays;
import java.util.concurrent.Executor;
/* loaded from: classes3.dex */
class BillingClientStateListenerImpl implements BillingClientStateListener {

    /* renamed from: a  reason: collision with root package name */
    private final C1597i f12366a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f12367b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f12368c;

    /* renamed from: d  reason: collision with root package name */
    private final BillingClient f12369d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC1621j f12370e;

    /* renamed from: f  reason: collision with root package name */
    private final com.yandex.metrica.billing.v3.library.b f12371f;

    /* loaded from: classes3.dex */
    class a extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BillingResult f12372a;

        a(BillingResult billingResult) {
            this.f12372a = billingResult;
        }

        @Override // com.yandex.metrica.billing_interface.f
        public void a() throws Throwable {
            BillingClientStateListenerImpl.this.a(this.f12372a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f12374a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PurchaseHistoryResponseListenerImpl f12375b;

        /* loaded from: classes3.dex */
        class a extends f {
            a() {
            }

            @Override // com.yandex.metrica.billing_interface.f
            public void a() {
                BillingClientStateListenerImpl.this.f12371f.b(b.this.f12375b);
            }
        }

        b(String str, PurchaseHistoryResponseListenerImpl purchaseHistoryResponseListenerImpl) {
            this.f12374a = str;
            this.f12375b = purchaseHistoryResponseListenerImpl;
        }

        @Override // com.yandex.metrica.billing_interface.f
        public void a() throws Throwable {
            if (!BillingClientStateListenerImpl.this.f12369d.isReady()) {
                BillingClientStateListenerImpl.this.f12367b.execute(new a());
            } else {
                BillingClientStateListenerImpl.this.f12369d.queryPurchaseHistoryAsync(this.f12374a, this.f12375b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BillingClientStateListenerImpl(C1597i c1597i, Executor executor, Executor executor2, BillingClient billingClient, InterfaceC1621j interfaceC1621j, com.yandex.metrica.billing.v3.library.b bVar) {
        this.f12366a = c1597i;
        this.f12367b = executor;
        this.f12368c = executor2;
        this.f12369d = billingClient;
        this.f12370e = interfaceC1621j;
        this.f12371f = bVar;
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingServiceDisconnected() {
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingSetupFinished(BillingResult billingResult) {
        this.f12367b.execute(new a(billingResult));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(BillingResult billingResult) throws Throwable {
        if (billingResult.getResponseCode() == 0) {
            for (String str : Arrays.asList("inapp", "subs")) {
                C1597i c1597i = this.f12366a;
                Executor executor = this.f12367b;
                Executor executor2 = this.f12368c;
                BillingClient billingClient = this.f12369d;
                InterfaceC1621j interfaceC1621j = this.f12370e;
                com.yandex.metrica.billing.v3.library.b bVar = this.f12371f;
                PurchaseHistoryResponseListenerImpl purchaseHistoryResponseListenerImpl = new PurchaseHistoryResponseListenerImpl(c1597i, executor, executor2, billingClient, interfaceC1621j, str, bVar, new g());
                bVar.a(purchaseHistoryResponseListenerImpl);
                this.f12368c.execute(new b(str, purchaseHistoryResponseListenerImpl));
            }
        }
    }
}
