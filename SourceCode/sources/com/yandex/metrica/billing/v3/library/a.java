package com.yandex.metrica.billing.v3.library;

import com.android.billingclient.api.BillingClient;
import com.yandex.metrica.billing_interface.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class a extends f {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f12406a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b bVar) {
        this.f12406a = bVar;
    }

    @Override // com.yandex.metrica.billing_interface.f
    public void a() {
        BillingClient billingClient;
        billingClient = this.f12406a.f12408b;
        billingClient.endConnection();
    }
}
