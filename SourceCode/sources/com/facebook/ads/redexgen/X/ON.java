package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: assets/audience_network.dex */
public final class ON {
    public static final Map<String, WeakReference<OM>> A00 = new HashMap();

    public static int A00() {
        return A00.size();
    }

    public static OM A01(C1203Xc c1203Xc, AbstractC1268Zs abstractC1268Zs, int i, OK ok) {
        OM om = new OM(c1203Xc, abstractC1268Zs, c1203Xc.A01().A09(), i);
        om.A0b(ok);
        om.A0X();
        A00.put(abstractC1268Zs.A0L(), new WeakReference<>(om));
        return om;
    }

    @Nullable
    public static OM A02(String str) {
        WeakReference<OM> weakReference = A00.get(str);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public static void A03(AbstractC1268Zs abstractC1268Zs, OM om) {
        A00.put(abstractC1268Zs.A0L(), new WeakReference<>(om));
    }

    public static void A04(String str) {
        A00.remove(str);
    }
}
