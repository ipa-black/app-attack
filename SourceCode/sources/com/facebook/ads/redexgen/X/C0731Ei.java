package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.Ei  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0731Ei extends TO<ZU> {
    public static String[] A00 = {"ByMq6MLqhjUJsdWB3RBIp", "zuOr3", "msyHKBX3wHVeYE5obxbctQprcgEzI02t", "I3sOgeRwcNYGF4oixOV5Q17", "dcB", "ibtCqc8qysdz0E5AMIDmPhuL1XZA", "mNtKCg4kzaH6sXUtb2oDuqx2", "ObFvkEusatMYzjWaq72f4FkWXHrQjerH"};

    public C0731Ei(ZU zu) {
        super(zu);
    }

    @Override // com.facebook.ads.redexgen.X.K1
    public final void A06() {
        C1203Xc c1203Xc;
        Handler handler;
        Runnable runnable;
        ZU A07 = A07();
        if (A07 == null) {
            return;
        }
        c1203Xc = A07.A08;
        String[] strArr = A00;
        if (strArr[3].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        A00[5] = "SiVLKh";
        if (C0896Lc.A02(c1203Xc)) {
            A07.A07();
            return;
        }
        handler = A07.A05;
        runnable = A07.A0C;
        handler.postDelayed(runnable, 5000L);
    }
}
