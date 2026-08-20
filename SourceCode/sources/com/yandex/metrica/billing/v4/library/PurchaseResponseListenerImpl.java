package com.yandex.metrica.billing.v4.library;

import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchaseHistoryRecord;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.SkuDetails;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.ironsource.sdk.c.d;
import com.onesignal.NotificationBundleProcessor;
import com.yandex.metrica.billing_interface.f;
import com.yandex.metrica.impl.ob.C1426b3;
import com.yandex.metrica.impl.ob.C1497e;
import com.yandex.metrica.impl.ob.InterfaceC1621j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010 \u001a\u00020\u000b\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u0012\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00070\u001d\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0004\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u0004\u0012\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b!\u0010\"J%\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0003¢\u0006\u0004\b\b\u0010\tJ)\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\n2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0003¢\u0006\u0004\b\f\u0010\rJ)\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0004H\u0003¢\u0006\u0004\b\b\u0010\rJ%\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\tR\u0016\u0010\u0013\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0012R\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u0016R\u001c\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00070\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u001e¨\u0006#"}, d2 = {"Lcom/yandex/metrica/billing/v4/library/PurchaseResponseListenerImpl;", "Lcom/android/billingclient/api/PurchasesResponseListener;", "Lcom/android/billingclient/api/BillingResult;", "billingResult", "", "Lcom/android/billingclient/api/Purchase;", "purchases", "", NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY, "(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V", "", "", "b", "(Ljava/util/List;)Ljava/util/Map;", "Lcom/android/billingclient/api/PurchaseHistoryRecord;", "purchaseHistoryRecords", "onQueryPurchasesResponse", "Lcom/yandex/metrica/impl/ob/j;", "Lcom/yandex/metrica/impl/ob/j;", "utilsProvider", "Lcom/android/billingclient/api/SkuDetails;", d.f11571a, "Ljava/util/List;", "skuDetails", "Lcom/yandex/metrica/billing/v4/library/b;", "e", "Lcom/yandex/metrica/billing/v4/library/b;", "billingLibraryConnectionHolder", "c", "Lkotlin/Function0;", "Lkotlin/jvm/functions/Function0;", "billingInfoSentListener", SessionDescription.ATTR_TYPE, "<init>", "(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/j;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/util/List;Lcom/yandex/metrica/billing/v4/library/b;)V", "billing-v4_publicBinaryProdRelease"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes3.dex */
public final class PurchaseResponseListenerImpl implements PurchasesResponseListener {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1621j f12444a;

    /* renamed from: b  reason: collision with root package name */
    private final Function0<Unit> f12445b;

    /* renamed from: c  reason: collision with root package name */
    private final List<PurchaseHistoryRecord> f12446c;

    /* renamed from: d  reason: collision with root package name */
    private final List<SkuDetails> f12447d;

    /* renamed from: e  reason: collision with root package name */
    private final b f12448e;

    /* loaded from: classes3.dex */
    public static final class a extends f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ BillingResult f12450b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f12451c;

        a(BillingResult billingResult, List list) {
            this.f12450b = billingResult;
            this.f12451c = list;
        }

        @Override // com.yandex.metrica.billing_interface.f
        public void a() {
            PurchaseResponseListenerImpl.this.a(this.f12450b, this.f12451c);
            PurchaseResponseListenerImpl.this.f12448e.b(PurchaseResponseListenerImpl.this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PurchaseResponseListenerImpl(String type, InterfaceC1621j utilsProvider, Function0<Unit> billingInfoSentListener, List<? extends PurchaseHistoryRecord> purchaseHistoryRecords, List<? extends SkuDetails> skuDetails, b billingLibraryConnectionHolder) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(utilsProvider, "utilsProvider");
        Intrinsics.checkNotNullParameter(billingInfoSentListener, "billingInfoSentListener");
        Intrinsics.checkNotNullParameter(purchaseHistoryRecords, "purchaseHistoryRecords");
        Intrinsics.checkNotNullParameter(skuDetails, "skuDetails");
        Intrinsics.checkNotNullParameter(billingLibraryConnectionHolder, "billingLibraryConnectionHolder");
        this.f12444a = utilsProvider;
        this.f12445b = billingInfoSentListener;
        this.f12446c = purchaseHistoryRecords;
        this.f12447d = skuDetails;
        this.f12448e = billingLibraryConnectionHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(BillingResult billingResult, List<? extends Purchase> list) {
        if (billingResult.getResponseCode() != 0) {
            return;
        }
        Map<String, Purchase> b2 = b(list);
        Map<String, PurchaseHistoryRecord> a2 = a(this.f12446c);
        List<SkuDetails> list2 = this.f12447d;
        ArrayList arrayList = new ArrayList();
        for (SkuDetails skuDetails : list2) {
            PurchaseHistoryRecord purchaseHistoryRecord = (PurchaseHistoryRecord) ((LinkedHashMap) a2).get(skuDetails.getSku());
            com.yandex.metrica.billing_interface.d a3 = purchaseHistoryRecord != null ? C1497e.f14629a.a(purchaseHistoryRecord, skuDetails, (Purchase) ((LinkedHashMap) b2).get(skuDetails.getSku())) : null;
            if (a3 != null) {
                arrayList.add(a3);
            }
        }
        ((C1426b3) this.f12444a.d()).a(arrayList);
        this.f12445b.invoke();
    }

    private final Map<String, Purchase> b(List<? extends Purchase> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Purchase purchase : list) {
            Iterator<String> it = purchase.getSkus().iterator();
            while (it.hasNext()) {
                String sku = it.next();
                Intrinsics.checkNotNullExpressionValue(sku, "sku");
                linkedHashMap.put(sku, purchase);
            }
        }
        return linkedHashMap;
    }

    @Override // com.android.billingclient.api.PurchasesResponseListener
    public void onQueryPurchasesResponse(BillingResult billingResult, List<? extends Purchase> purchases) {
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        Intrinsics.checkNotNullParameter(purchases, "purchases");
        this.f12444a.a().execute(new a(billingResult, purchases));
    }

    private final Map<String, PurchaseHistoryRecord> a(List<? extends PurchaseHistoryRecord> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (PurchaseHistoryRecord purchaseHistoryRecord : list) {
            Iterator<String> it = purchaseHistoryRecord.getSkus().iterator();
            while (it.hasNext()) {
                String sku = it.next();
                Intrinsics.checkNotNullExpressionValue(sku, "sku");
                linkedHashMap.put(sku, purchaseHistoryRecord);
            }
        }
        return linkedHashMap;
    }
}
