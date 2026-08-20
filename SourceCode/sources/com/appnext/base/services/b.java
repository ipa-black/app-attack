package com.appnext.base.services;

import android.content.Context;
import android.os.Bundle;
import com.appnext.base.a.b.c;
import com.appnext.base.b.e;
import com.appnext.base.b.i;
import com.appnext.base.operations.a;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
/* loaded from: classes.dex */
public final class b {
    public final void a(Context context, String str, String str2, Bundle bundle, Object obj, a.InterfaceC0092a interfaceC0092a) {
        try {
            i.aR().init(context.getApplicationContext());
            e.init(context.getApplicationContext());
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context.getApplicationContext());
            if (advertisingIdInfo != null && advertisingIdInfo.isLimitAdTrackingEnabled()) {
                i.aR().putBoolean(i.fC, true);
                b(interfaceC0092a);
                return;
            }
            c t = com.appnext.base.a.a.X().ab().t(str);
            if (t == null) {
                b(interfaceC0092a);
            } else {
                com.appnext.base.operations.b.aI().a(t.getKey(), t, bundle, obj, interfaceC0092a);
            }
        } catch (Throwable unused) {
            b(interfaceC0092a);
        }
    }

    private static void b(a.InterfaceC0092a interfaceC0092a) {
        if (interfaceC0092a != null) {
            try {
                interfaceC0092a.aH();
            } catch (Throwable unused) {
            }
        }
    }
}
