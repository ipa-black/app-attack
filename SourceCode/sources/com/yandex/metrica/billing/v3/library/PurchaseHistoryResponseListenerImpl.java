package com.yandex.metrica.billing.v3.library;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PurchaseHistoryRecord;
import com.android.billingclient.api.PurchaseHistoryResponseListener;
import com.android.billingclient.api.SkuDetailsParams;
import com.yandex.metrica.billing_interface.e;
import com.yandex.metrica.billing_interface.f;
import com.yandex.metrica.billing_interface.g;
import com.yandex.metrica.impl.ob.C1422b;
import com.yandex.metrica.impl.ob.C1597i;
import com.yandex.metrica.impl.ob.InterfaceC1621j;
import com.yandex.metrica.impl.ob.InterfaceC1671l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes3.dex */
class PurchaseHistoryResponseListenerImpl implements PurchaseHistoryResponseListener {

    /* renamed from: a  reason: collision with root package name */
    private final C1597i f12378a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f12379b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f12380c;

    /* renamed from: d  reason: collision with root package name */
    private final BillingClient f12381d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC1621j f12382e;

    /* renamed from: f  reason: collision with root package name */
    private final String f12383f;

    /* renamed from: g  reason: collision with root package name */
    private final com.yandex.metrica.billing.v3.library.b f12384g;

    /* renamed from: h  reason: collision with root package name */
    private final g f12385h;

    /* loaded from: classes3.dex */
    class a extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BillingResult f12386a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f12387b;

        a(BillingResult billingResult, List list) {
            this.f12386a = billingResult;
            this.f12387b = list;
        }

        @Override // com.yandex.metrica.billing_interface.f
        public void a() throws Throwable {
            PurchaseHistoryResponseListenerImpl.this.a(this.f12386a, this.f12387b);
            PurchaseHistoryResponseListenerImpl.this.f12384g.b(PurchaseHistoryResponseListenerImpl.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Callable<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f12389a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f12390b;

        b(Map map, Map map2) {
            this.f12389a = map;
            this.f12390b = map2;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            PurchaseHistoryResponseListenerImpl.this.a(this.f12389a, this.f12390b);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SkuDetailsParams f12392a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SkuDetailsResponseListenerImpl f12393b;

        /* loaded from: classes3.dex */
        class a extends f {
            a() {
            }

            @Override // com.yandex.metrica.billing_interface.f
            public void a() {
                PurchaseHistoryResponseListenerImpl.this.f12384g.b(c.this.f12393b);
            }
        }

        c(SkuDetailsParams skuDetailsParams, SkuDetailsResponseListenerImpl skuDetailsResponseListenerImpl) {
            this.f12392a = skuDetailsParams;
            this.f12393b = skuDetailsResponseListenerImpl;
        }

        @Override // com.yandex.metrica.billing_interface.f
        public void a() throws Throwable {
            if (PurchaseHistoryResponseListenerImpl.this.f12381d.isReady()) {
                PurchaseHistoryResponseListenerImpl.this.f12381d.querySkuDetailsAsync(this.f12392a, this.f12393b);
            } else {
                PurchaseHistoryResponseListenerImpl.this.f12379b.execute(new a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PurchaseHistoryResponseListenerImpl(C1597i c1597i, Executor executor, Executor executor2, BillingClient billingClient, InterfaceC1621j interfaceC1621j, String str, com.yandex.metrica.billing.v3.library.b bVar, g gVar) {
        this.f12378a = c1597i;
        this.f12379b = executor;
        this.f12380c = executor2;
        this.f12381d = billingClient;
        this.f12382e = interfaceC1621j;
        this.f12383f = str;
        this.f12384g = bVar;
        this.f12385h = gVar;
    }

    @Override // com.android.billingclient.api.PurchaseHistoryResponseListener
    public void onPurchaseHistoryResponse(BillingResult billingResult, List<PurchaseHistoryRecord> list) {
        this.f12379b.execute(new a(billingResult, list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(BillingResult billingResult, List<PurchaseHistoryRecord> list) throws Throwable {
        if (billingResult.getResponseCode() != 0 || list == null) {
            return;
        }
        Map<String, com.yandex.metrica.billing_interface.a> a2 = a(list);
        Map<String, com.yandex.metrica.billing_interface.a> a3 = this.f12382e.f().a(this.f12378a, a2, this.f12382e.e());
        if (a3.isEmpty()) {
            a(a2, a3);
        } else {
            a(a3, new b(a2, a3));
        }
    }

    private Map<String, com.yandex.metrica.billing_interface.a> a(List<PurchaseHistoryRecord> list) {
        HashMap hashMap = new HashMap();
        for (PurchaseHistoryRecord purchaseHistoryRecord : list) {
            e d2 = C1422b.d(this.f12383f);
            String sku = purchaseHistoryRecord.getSku();
            hashMap.put(sku, new com.yandex.metrica.billing_interface.a(d2, sku, purchaseHistoryRecord.getPurchaseToken(), purchaseHistoryRecord.getPurchaseTime(), 0L));
        }
        return hashMap;
    }

    private void a(Map<String, com.yandex.metrica.billing_interface.a> map, Callable<Void> callable) {
        SkuDetailsParams build = SkuDetailsParams.newBuilder().setType(this.f12383f).setSkusList(new ArrayList(map.keySet())).build();
        String str = this.f12383f;
        Executor executor = this.f12379b;
        BillingClient billingClient = this.f12381d;
        InterfaceC1621j interfaceC1621j = this.f12382e;
        com.yandex.metrica.billing.v3.library.b bVar = this.f12384g;
        SkuDetailsResponseListenerImpl skuDetailsResponseListenerImpl = new SkuDetailsResponseListenerImpl(str, executor, billingClient, interfaceC1621j, callable, map, bVar);
        bVar.a(skuDetailsResponseListenerImpl);
        this.f12380c.execute(new c(build, skuDetailsResponseListenerImpl));
    }

    protected void a(Map<String, com.yandex.metrica.billing_interface.a> map, Map<String, com.yandex.metrica.billing_interface.a> map2) {
        InterfaceC1671l e2 = this.f12382e.e();
        this.f12385h.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        for (com.yandex.metrica.billing_interface.a aVar : map.values()) {
            if (map2.containsKey(aVar.f12478b)) {
                aVar.f12481e = currentTimeMillis;
            } else {
                com.yandex.metrica.billing_interface.a a2 = e2.a(aVar.f12478b);
                if (a2 != null) {
                    aVar.f12481e = a2.f12481e;
                }
            }
        }
        e2.a(map);
        if (e2.a() || !"inapp".equals(this.f12383f)) {
            return;
        }
        e2.b();
    }
}
