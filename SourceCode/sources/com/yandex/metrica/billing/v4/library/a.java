package com.yandex.metrica.billing.v4.library;

import com.android.billingclient.api.BillingClient;
import com.yandex.metrica.billing_interface.f;
/* loaded from: classes3.dex */
public final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f12464a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b bVar) {
        this.f12464a = bVar;
    }

    @Override // com.yandex.metrica.billing_interface.f
    public void a() {
        BillingClient billingClient;
        billingClient = this.f12464a.f12466b;
        billingClient.endConnection();
    }
}
