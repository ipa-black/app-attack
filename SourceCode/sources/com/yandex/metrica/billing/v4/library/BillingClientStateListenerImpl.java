package com.yandex.metrica.billing.v4.library;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingResult;
import com.appodeal.ads.modules.common.internal.Constants;
import com.ironsource.sdk.c.d;
import com.onesignal.NotificationBundleProcessor;
import com.yandex.metrica.billing_interface.f;
import com.yandex.metrica.impl.ob.C1597i;
import com.yandex.metrica.impl.ob.InterfaceC1621j;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015¢\u0006\u0004\b\u0019\u0010\u001aB!\b\u0016\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0019\u0010\u001bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\f\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, d2 = {"Lcom/yandex/metrica/billing/v4/library/BillingClientStateListenerImpl;", "Lcom/android/billingclient/api/BillingClientStateListener;", "Lcom/android/billingclient/api/BillingResult;", "billingResult", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "(Lcom/android/billingclient/api/BillingResult;)V", "onBillingSetupFinished", "onBillingServiceDisconnected", "()V", "Lcom/yandex/metrica/impl/ob/i;", "Lcom/yandex/metrica/impl/ob/i;", Constants.CONFIG, "Lcom/android/billingclient/api/BillingClient;", "b", "Lcom/android/billingclient/api/BillingClient;", "billingClient", "Lcom/yandex/metrica/impl/ob/j;", "c", "Lcom/yandex/metrica/impl/ob/j;", "utilsProvider", "Lcom/yandex/metrica/billing/v4/library/b;", d.f11571a, "Lcom/yandex/metrica/billing/v4/library/b;", "billingLibraryConnectionHolder", "<init>", "(Lcom/yandex/metrica/impl/ob/i;Lcom/android/billingclient/api/BillingClient;Lcom/yandex/metrica/impl/ob/j;Lcom/yandex/metrica/billing/v4/library/b;)V", "(Lcom/yandex/metrica/impl/ob/i;Lcom/android/billingclient/api/BillingClient;Lcom/yandex/metrica/impl/ob/j;)V", "billing-v4_publicBinaryProdRelease"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes3.dex */
public final class BillingClientStateListenerImpl implements BillingClientStateListener {

    /* renamed from: a  reason: collision with root package name */
    private final C1597i f12419a;

    /* renamed from: b  reason: collision with root package name */
    private final BillingClient f12420b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1621j f12421c;

    /* renamed from: d  reason: collision with root package name */
    private final com.yandex.metrica.billing.v4.library.b f12422d;

    /* loaded from: classes3.dex */
    public static final class a extends f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ BillingResult f12424b;

        a(BillingResult billingResult) {
            this.f12424b = billingResult;
        }

        @Override // com.yandex.metrica.billing_interface.f
        public void a() {
            BillingClientStateListenerImpl.this.a(this.f12424b);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f12425a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PurchaseHistoryResponseListenerImpl f12426b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ BillingClientStateListenerImpl f12427c;

        /* loaded from: classes3.dex */
        public static final class a extends f {
            a() {
            }

            @Override // com.yandex.metrica.billing_interface.f
            public void a() {
                b.this.f12427c.f12422d.b(b.this.f12426b);
            }
        }

        b(String str, PurchaseHistoryResponseListenerImpl purchaseHistoryResponseListenerImpl, BillingClientStateListenerImpl billingClientStateListenerImpl) {
            this.f12425a = str;
            this.f12426b = purchaseHistoryResponseListenerImpl;
            this.f12427c = billingClientStateListenerImpl;
        }

        @Override // com.yandex.metrica.billing_interface.f
        public void a() {
            if (this.f12427c.f12420b.isReady()) {
                this.f12427c.f12420b.queryPurchaseHistoryAsync(this.f12425a, this.f12426b);
            } else {
                this.f12427c.f12421c.a().execute(new a());
            }
        }
    }

    public BillingClientStateListenerImpl(C1597i config, BillingClient billingClient, InterfaceC1621j utilsProvider, com.yandex.metrica.billing.v4.library.b billingLibraryConnectionHolder) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(billingClient, "billingClient");
        Intrinsics.checkNotNullParameter(utilsProvider, "utilsProvider");
        Intrinsics.checkNotNullParameter(billingLibraryConnectionHolder, "billingLibraryConnectionHolder");
        this.f12419a = config;
        this.f12420b = billingClient;
        this.f12421c = utilsProvider;
        this.f12422d = billingLibraryConnectionHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(BillingResult billingResult) {
        if (billingResult.getResponseCode() != 0) {
            return;
        }
        for (String str : CollectionsKt.listOf((Object[]) new String[]{"inapp", "subs"})) {
            PurchaseHistoryResponseListenerImpl purchaseHistoryResponseListenerImpl = new PurchaseHistoryResponseListenerImpl(this.f12419a, this.f12420b, this.f12421c, str, this.f12422d);
            this.f12422d.a(purchaseHistoryResponseListenerImpl);
            this.f12421c.c().execute(new b(str, purchaseHistoryResponseListenerImpl, this));
        }
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingServiceDisconnected() {
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingSetupFinished(BillingResult billingResult) {
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        this.f12421c.a().execute(new a(billingResult));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BillingClientStateListenerImpl(C1597i config, BillingClient billingClient, InterfaceC1621j utilsProvider) {
        this(config, billingClient, utilsProvider, new com.yandex.metrica.billing.v4.library.b(billingClient, null, 2));
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(billingClient, "billingClient");
        Intrinsics.checkNotNullParameter(utilsProvider, "utilsProvider");
    }
}
