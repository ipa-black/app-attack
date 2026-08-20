package com.yandex.metrica.billing.v3.library;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.api.SkuDetailsResponseListener;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.yandex.metrica.billing_interface.d;
import com.yandex.metrica.billing_interface.f;
import com.yandex.metrica.impl.ob.C1422b;
import com.yandex.metrica.impl.ob.C1426b3;
import com.yandex.metrica.impl.ob.InterfaceC1621j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes3.dex */
class SkuDetailsResponseListenerImpl implements SkuDetailsResponseListener {

    /* renamed from: a  reason: collision with root package name */
    private final String f12396a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f12397b;

    /* renamed from: c  reason: collision with root package name */
    private final BillingClient f12398c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1621j f12399d;

    /* renamed from: e  reason: collision with root package name */
    private final Callable<Void> f12400e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, com.yandex.metrica.billing_interface.a> f12401f;

    /* renamed from: g  reason: collision with root package name */
    private final b f12402g;

    /* loaded from: classes3.dex */
    class a extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BillingResult f12403a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f12404b;

        a(BillingResult billingResult, List list) {
            this.f12403a = billingResult;
            this.f12404b = list;
        }

        @Override // com.yandex.metrica.billing_interface.f
        public void a() throws Throwable {
            SkuDetailsResponseListenerImpl.this.a(this.f12403a, this.f12404b);
            SkuDetailsResponseListenerImpl.this.f12402g.b(SkuDetailsResponseListenerImpl.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SkuDetailsResponseListenerImpl(String str, Executor executor, BillingClient billingClient, InterfaceC1621j interfaceC1621j, Callable<Void> callable, Map<String, com.yandex.metrica.billing_interface.a> map, b bVar) {
        this.f12396a = str;
        this.f12397b = executor;
        this.f12398c = billingClient;
        this.f12399d = interfaceC1621j;
        this.f12400e = callable;
        this.f12401f = map;
        this.f12402g = bVar;
    }

    private int b(SkuDetails skuDetails) {
        if (skuDetails.getFreeTrialPeriod().isEmpty()) {
            try {
                return skuDetails.getIntroductoryPriceCycles();
            } catch (Throwable unused) {
                try {
                    String str = (String) skuDetails.getClass().getMethod("getIntroductoryPriceCycles", new Class[0]).invoke(skuDetails, new Object[0]);
                    if (str != null) {
                        return Integer.parseInt(str);
                    }
                } catch (Throwable unused2) {
                }
                return 0;
            }
        }
        return 1;
    }

    private com.yandex.metrica.billing_interface.c c(SkuDetails skuDetails) {
        if (skuDetails.getFreeTrialPeriod().isEmpty()) {
            return com.yandex.metrica.billing_interface.c.a(skuDetails.getIntroductoryPricePeriod());
        }
        return com.yandex.metrica.billing_interface.c.a(skuDetails.getFreeTrialPeriod());
    }

    @Override // com.android.billingclient.api.SkuDetailsResponseListener
    public void onSkuDetailsResponse(BillingResult billingResult, List<SkuDetails> list) {
        this.f12397b.execute(new a(billingResult, list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(BillingResult billingResult, List<SkuDetails> list) throws Throwable {
        if (billingResult.getResponseCode() != 0 || list == null || list.isEmpty()) {
            return;
        }
        Map<String, Purchase> a2 = a();
        ArrayList arrayList = new ArrayList();
        for (SkuDetails skuDetails : list) {
            com.yandex.metrica.billing_interface.a aVar = this.f12401f.get(skuDetails.getSku());
            Purchase purchase = (Purchase) ((HashMap) a2).get(skuDetails.getSku());
            if (aVar != null) {
                arrayList.add(a(skuDetails, aVar, purchase));
            }
        }
        ((C1426b3) this.f12399d.d()).a(arrayList);
        this.f12400e.call();
    }

    private Map<String, Purchase> a() {
        HashMap hashMap = new HashMap();
        Purchase.PurchasesResult queryPurchases = this.f12398c.queryPurchases(this.f12396a);
        List<Purchase> purchasesList = queryPurchases.getPurchasesList();
        if (queryPurchases.getResponseCode() == 0 && purchasesList != null) {
            for (Purchase purchase : purchasesList) {
                hashMap.put(purchase.getSku(), purchase);
            }
        }
        return hashMap;
    }

    private d a(SkuDetails skuDetails, com.yandex.metrica.billing_interface.a aVar, Purchase purchase) {
        return new d(C1422b.d(skuDetails.getType()), skuDetails.getSku(), 1, skuDetails.getPriceAmountMicros(), skuDetails.getPriceCurrencyCode(), a(skuDetails), c(skuDetails), b(skuDetails), com.yandex.metrica.billing_interface.c.a(skuDetails.getSubscriptionPeriod()), purchase != null ? purchase.getSignature() : "", aVar.f12479c, aVar.f12480d, purchase != null ? purchase.isAutoRenewing() : false, purchase != null ? purchase.getOriginalJson() : JsonUtils.EMPTY_JSON);
    }

    private long a(SkuDetails skuDetails) {
        if (skuDetails.getFreeTrialPeriod().isEmpty()) {
            return skuDetails.getIntroductoryPriceAmountMicros();
        }
        return 0L;
    }
}
