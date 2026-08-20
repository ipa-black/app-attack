package com.yandex.metrica.billing.v4.library;

import android.os.Handler;
import android.os.Looper;
import com.android.billingclient.api.BillingClient;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Object> f12465a;

    /* renamed from: b  reason: collision with root package name */
    private final BillingClient f12466b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f12467c;

    public b(BillingClient billingClient, Handler mainHandler) {
        Intrinsics.checkNotNullParameter(billingClient, "billingClient");
        Intrinsics.checkNotNullParameter(mainHandler, "mainHandler");
        this.f12466b = billingClient;
        this.f12467c = mainHandler;
        this.f12465a = new LinkedHashSet();
    }

    public final void b(Object listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f12465a.remove(listener);
        if (this.f12465a.size() == 0) {
            this.f12467c.post(new a(this));
        }
    }

    public final void a(Object listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f12465a.add(listener);
    }

    public /* synthetic */ b(BillingClient billingClient, Handler handler, int i) {
        this(billingClient, (i & 2) != 0 ? new Handler(Looper.getMainLooper()) : null);
    }
}
