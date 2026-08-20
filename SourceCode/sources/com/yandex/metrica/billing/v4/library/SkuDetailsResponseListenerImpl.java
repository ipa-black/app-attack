package com.yandex.metrica.billing.v4.library;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PurchaseHistoryRecord;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.api.SkuDetailsResponseListener;
import com.appnext.base.b.f;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.ironsource.sdk.c.d;
import com.onesignal.NotificationBundleProcessor;
import com.yandex.metrica.impl.ob.InterfaceC1621j;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0019\u001a\u00020\u0017\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0013\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0004\u0012\u0006\u0010\u001d\u001a\u00020\u001a¢\u0006\u0004\b\"\u0010#J'\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0003¢\u0006\u0004\b\b\u0010\tJ'\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0017¢\u0006\u0004\b\n\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006$"}, d2 = {"Lcom/yandex/metrica/billing/v4/library/SkuDetailsResponseListenerImpl;", "Lcom/android/billingclient/api/SkuDetailsResponseListener;", "Lcom/android/billingclient/api/BillingResult;", "billingResult", "", "Lcom/android/billingclient/api/SkuDetails;", "skuDetails", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V", "onSkuDetailsResponse", "Lcom/yandex/metrica/impl/ob/j;", "c", "Lcom/yandex/metrica/impl/ob/j;", "utilsProvider", "Lcom/android/billingclient/api/PurchaseHistoryRecord;", "e", "Ljava/util/List;", "purchaseHistoryRecords", "Lkotlin/Function0;", d.f11571a, "Lkotlin/jvm/functions/Function0;", "billingInfoSentListener", "", "Ljava/lang/String;", SessionDescription.ATTR_TYPE, "Lcom/yandex/metrica/billing/v4/library/b;", f.TAG, "Lcom/yandex/metrica/billing/v4/library/b;", "billingLibraryConnectionHolder", "Lcom/android/billingclient/api/BillingClient;", "b", "Lcom/android/billingclient/api/BillingClient;", "billingClient", "<init>", "(Ljava/lang/String;Lcom/android/billingclient/api/BillingClient;Lcom/yandex/metrica/impl/ob/j;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lcom/yandex/metrica/billing/v4/library/b;)V", "billing-v4_publicBinaryProdRelease"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes3.dex */
public final class SkuDetailsResponseListenerImpl implements SkuDetailsResponseListener {

    /* renamed from: a  reason: collision with root package name */
    private final String f12452a;

    /* renamed from: b  reason: collision with root package name */
    private final BillingClient f12453b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1621j f12454c;

    /* renamed from: d  reason: collision with root package name */
    private final Function0<Unit> f12455d;

    /* renamed from: e  reason: collision with root package name */
    private final List<PurchaseHistoryRecord> f12456e;

    /* renamed from: f  reason: collision with root package name */
    private final com.yandex.metrica.billing.v4.library.b f12457f;

    /* loaded from: classes3.dex */
    public static final class a extends com.yandex.metrica.billing_interface.f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ BillingResult f12459b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f12460c;

        a(BillingResult billingResult, List list) {
            this.f12459b = billingResult;
            this.f12460c = list;
        }

        @Override // com.yandex.metrica.billing_interface.f
        public void a() {
            SkuDetailsResponseListenerImpl.this.a(this.f12459b, this.f12460c);
            SkuDetailsResponseListenerImpl.this.f12457f.b(SkuDetailsResponseListenerImpl.this);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends com.yandex.metrica.billing_interface.f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PurchaseResponseListenerImpl f12462b;

        /* loaded from: classes3.dex */
        public static final class a extends com.yandex.metrica.billing_interface.f {
            a() {
            }

            @Override // com.yandex.metrica.billing_interface.f
            public void a() {
                SkuDetailsResponseListenerImpl.this.f12457f.b(b.this.f12462b);
            }
        }

        b(PurchaseResponseListenerImpl purchaseResponseListenerImpl) {
            this.f12462b = purchaseResponseListenerImpl;
        }

        @Override // com.yandex.metrica.billing_interface.f
        public void a() {
            if (SkuDetailsResponseListenerImpl.this.f12453b.isReady()) {
                SkuDetailsResponseListenerImpl.this.f12453b.queryPurchasesAsync(SkuDetailsResponseListenerImpl.this.f12452a, this.f12462b);
            } else {
                SkuDetailsResponseListenerImpl.this.f12454c.a().execute(new a());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SkuDetailsResponseListenerImpl(String type, BillingClient billingClient, InterfaceC1621j utilsProvider, Function0<Unit> billingInfoSentListener, List<? extends PurchaseHistoryRecord> purchaseHistoryRecords, com.yandex.metrica.billing.v4.library.b billingLibraryConnectionHolder) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(billingClient, "billingClient");
        Intrinsics.checkNotNullParameter(utilsProvider, "utilsProvider");
        Intrinsics.checkNotNullParameter(billingInfoSentListener, "billingInfoSentListener");
        Intrinsics.checkNotNullParameter(purchaseHistoryRecords, "purchaseHistoryRecords");
        Intrinsics.checkNotNullParameter(billingLibraryConnectionHolder, "billingLibraryConnectionHolder");
        this.f12452a = type;
        this.f12453b = billingClient;
        this.f12454c = utilsProvider;
        this.f12455d = billingInfoSentListener;
        this.f12456e = purchaseHistoryRecords;
        this.f12457f = billingLibraryConnectionHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(BillingResult billingResult, List<? extends SkuDetails> list) {
        if (billingResult.getResponseCode() != 0 || list == null || list.isEmpty()) {
            return;
        }
        PurchaseResponseListenerImpl purchaseResponseListenerImpl = new PurchaseResponseListenerImpl(this.f12452a, this.f12454c, this.f12455d, this.f12456e, list, this.f12457f);
        this.f12457f.a(purchaseResponseListenerImpl);
        this.f12454c.c().execute(new b(purchaseResponseListenerImpl));
    }

    @Override // com.android.billingclient.api.SkuDetailsResponseListener
    public void onSkuDetailsResponse(BillingResult billingResult, List<? extends SkuDetails> list) {
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        this.f12454c.a().execute(new a(billingResult, list));
    }
}
