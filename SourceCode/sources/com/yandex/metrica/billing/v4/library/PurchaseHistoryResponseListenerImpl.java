package com.yandex.metrica.billing.v4.library;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PurchaseHistoryRecord;
import com.android.billingclient.api.PurchaseHistoryResponseListener;
import com.android.billingclient.api.SkuDetailsParams;
import com.appodeal.ads.modules.common.internal.Constants;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.ironsource.sdk.c.d;
import com.onesignal.NotificationBundleProcessor;
import com.yandex.metrica.billing_interface.e;
import com.yandex.metrica.billing_interface.f;
import com.yandex.metrica.impl.ob.C1547g;
import com.yandex.metrica.impl.ob.C1597i;
import com.yandex.metrica.impl.ob.InterfaceC1621j;
import com.yandex.metrica.impl.ob.InterfaceC1671l;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u001e\u001a\u00020\u001c\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010%\u001a\u00020\u000b\u0012\u0006\u0010\"\u001a\u00020\u001f¢\u0006\u0004\b&\u0010'J'\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0003¢\u0006\u0004\b\b\u0010\tJ)\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0003¢\u0006\u0004\b\b\u0010\rJ9\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fH\u0003¢\u0006\u0004\b\b\u0010\u0011J'\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0017¢\u0006\u0004\b\u0013\u0010\tR\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001c8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010%\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006("}, d2 = {"Lcom/yandex/metrica/billing/v4/library/PurchaseHistoryResponseListenerImpl;", "Lcom/android/billingclient/api/PurchaseHistoryResponseListener;", "Lcom/android/billingclient/api/BillingResult;", "billingResult", "", "Lcom/android/billingclient/api/PurchaseHistoryRecord;", "purchaseHistoryRecords", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V", "", "", "Lcom/yandex/metrica/billing_interface/a;", "(Ljava/util/List;)Ljava/util/Map;", "newSkus", "Lkotlin/Function0;", "billingInfoSentListener", "(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V", "list", "onPurchaseHistoryResponse", "Lcom/android/billingclient/api/BillingClient;", "b", "Lcom/android/billingclient/api/BillingClient;", "billingClient", "Lcom/yandex/metrica/impl/ob/j;", "c", "Lcom/yandex/metrica/impl/ob/j;", "utilsProvider", "Lcom/yandex/metrica/impl/ob/i;", "Lcom/yandex/metrica/impl/ob/i;", Constants.CONFIG, "Lcom/yandex/metrica/billing/v4/library/b;", "e", "Lcom/yandex/metrica/billing/v4/library/b;", "billingLibraryConnectionHolder", d.f11571a, "Ljava/lang/String;", SessionDescription.ATTR_TYPE, "<init>", "(Lcom/yandex/metrica/impl/ob/i;Lcom/android/billingclient/api/BillingClient;Lcom/yandex/metrica/impl/ob/j;Ljava/lang/String;Lcom/yandex/metrica/billing/v4/library/b;)V", "billing-v4_publicBinaryProdRelease"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes3.dex */
public final class PurchaseHistoryResponseListenerImpl implements PurchaseHistoryResponseListener {

    /* renamed from: a  reason: collision with root package name */
    private final C1597i f12429a;

    /* renamed from: b  reason: collision with root package name */
    private final BillingClient f12430b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1621j f12431c;

    /* renamed from: d  reason: collision with root package name */
    private final String f12432d;

    /* renamed from: e  reason: collision with root package name */
    private final com.yandex.metrica.billing.v4.library.b f12433e;

    /* loaded from: classes3.dex */
    public static final class a extends f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ BillingResult f12435b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f12436c;

        a(BillingResult billingResult, List list) {
            this.f12435b = billingResult;
            this.f12436c = list;
        }

        @Override // com.yandex.metrica.billing_interface.f
        public void a() {
            PurchaseHistoryResponseListenerImpl.this.a(this.f12435b, this.f12436c);
            PurchaseHistoryResponseListenerImpl.this.f12433e.b(PurchaseHistoryResponseListenerImpl.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f12438b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Map f12439c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Map map, Map map2) {
            super(0);
            this.f12438b = map;
            this.f12439c = map2;
        }

        @Override // kotlin.jvm.functions.Function0
        public Unit invoke() {
            C1547g c1547g = C1547g.f14766a;
            Map map = this.f12438b;
            Map map2 = this.f12439c;
            String str = PurchaseHistoryResponseListenerImpl.this.f12432d;
            InterfaceC1671l e2 = PurchaseHistoryResponseListenerImpl.this.f12431c.e();
            Intrinsics.checkNotNullExpressionValue(e2, "utilsProvider.billingInfoManager");
            C1547g.a(c1547g, map, map2, str, e2, null, 16);
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes3.dex */
    public static final class c extends f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SkuDetailsParams f12441b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ SkuDetailsResponseListenerImpl f12442c;

        /* loaded from: classes3.dex */
        public static final class a extends f {
            a() {
            }

            @Override // com.yandex.metrica.billing_interface.f
            public void a() {
                PurchaseHistoryResponseListenerImpl.this.f12433e.b(c.this.f12442c);
            }
        }

        c(SkuDetailsParams skuDetailsParams, SkuDetailsResponseListenerImpl skuDetailsResponseListenerImpl) {
            this.f12441b = skuDetailsParams;
            this.f12442c = skuDetailsResponseListenerImpl;
        }

        @Override // com.yandex.metrica.billing_interface.f
        public void a() {
            if (PurchaseHistoryResponseListenerImpl.this.f12430b.isReady()) {
                PurchaseHistoryResponseListenerImpl.this.f12430b.querySkuDetailsAsync(this.f12441b, this.f12442c);
            } else {
                PurchaseHistoryResponseListenerImpl.this.f12431c.a().execute(new a());
            }
        }
    }

    public PurchaseHistoryResponseListenerImpl(C1597i config, BillingClient billingClient, InterfaceC1621j utilsProvider, String type, com.yandex.metrica.billing.v4.library.b billingLibraryConnectionHolder) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(billingClient, "billingClient");
        Intrinsics.checkNotNullParameter(utilsProvider, "utilsProvider");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(billingLibraryConnectionHolder, "billingLibraryConnectionHolder");
        this.f12429a = config;
        this.f12430b = billingClient;
        this.f12431c = utilsProvider;
        this.f12432d = type;
        this.f12433e = billingLibraryConnectionHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(BillingResult billingResult, List<? extends PurchaseHistoryRecord> list) {
        if (billingResult.getResponseCode() != 0 || list == null) {
            return;
        }
        Map<String, com.yandex.metrica.billing_interface.a> a2 = a(list);
        Map<String, com.yandex.metrica.billing_interface.a> a3 = this.f12431c.f().a(this.f12429a, a2, this.f12431c.e());
        Intrinsics.checkNotNullExpressionValue(a3, "utilsProvider.updatePoli…lingInfoManager\n        )");
        if (a3.isEmpty()) {
            C1547g c1547g = C1547g.f14766a;
            String str = this.f12432d;
            InterfaceC1671l e2 = this.f12431c.e();
            Intrinsics.checkNotNullExpressionValue(e2, "utilsProvider.billingInfoManager");
            C1547g.a(c1547g, a2, a3, str, e2, null, 16);
            return;
        }
        a(list, CollectionsKt.toList(a3.keySet()), new b(a2, a3));
    }

    @Override // com.android.billingclient.api.PurchaseHistoryResponseListener
    public void onPurchaseHistoryResponse(BillingResult billingResult, List<? extends PurchaseHistoryRecord> list) {
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        this.f12431c.a().execute(new a(billingResult, list));
    }

    private final Map<String, com.yandex.metrica.billing_interface.a> a(List<? extends PurchaseHistoryRecord> list) {
        e eVar;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (PurchaseHistoryRecord purchaseHistoryRecord : list) {
            Iterator<String> it = purchaseHistoryRecord.getSkus().iterator();
            while (it.hasNext()) {
                String next = it.next();
                String type = this.f12432d;
                Intrinsics.checkNotNullParameter(type, "type");
                int hashCode = type.hashCode();
                if (hashCode != 3541555) {
                    if (hashCode == 100343516 && type.equals("inapp")) {
                        eVar = e.INAPP;
                    }
                    eVar = e.UNKNOWN;
                } else {
                    if (type.equals("subs")) {
                        eVar = e.SUBS;
                    }
                    eVar = e.UNKNOWN;
                }
                com.yandex.metrica.billing_interface.a aVar = new com.yandex.metrica.billing_interface.a(eVar, next, purchaseHistoryRecord.getPurchaseToken(), purchaseHistoryRecord.getPurchaseTime(), 0L);
                Intrinsics.checkNotNullExpressionValue(next, "info.sku");
                linkedHashMap.put(next, aVar);
            }
        }
        return linkedHashMap;
    }

    private final void a(List<? extends PurchaseHistoryRecord> list, List<String> list2, Function0<Unit> function0) {
        SkuDetailsParams build = SkuDetailsParams.newBuilder().setType(this.f12432d).setSkusList(list2).build();
        Intrinsics.checkNotNullExpressionValue(build, "SkuDetailsParams.newBuil…kus)\n            .build()");
        SkuDetailsResponseListenerImpl skuDetailsResponseListenerImpl = new SkuDetailsResponseListenerImpl(this.f12432d, this.f12430b, this.f12431c, function0, list, this.f12433e);
        this.f12433e.a(skuDetailsResponseListenerImpl);
        this.f12431c.c().execute(new c(build, skuDetailsResponseListenerImpl));
    }
}
