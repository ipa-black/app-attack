package com.yandex.metrica.billing.v3.library;

import android.os.Handler;
import android.os.Looper;
import com.android.billingclient.api.BillingClient;
import java.util.HashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f12407a;

    /* renamed from: b  reason: collision with root package name */
    private final BillingClient f12408b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<Object> f12409c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(BillingClient billingClient) {
        this(billingClient, new Handler(Looper.getMainLooper()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Object obj) {
        this.f12409c.remove(obj);
        if (this.f12409c.size() == 0) {
            this.f12407a.post(new a(this));
        }
    }

    b(BillingClient billingClient, Handler handler) {
        this.f12408b = billingClient;
        this.f12409c = new HashSet();
        this.f12407a = handler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Object obj) {
        this.f12409c.add(obj);
    }
}
