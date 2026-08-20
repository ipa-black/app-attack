package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.Nullable;
import com.facebook.infer.annotation.Nullsafe;
@Nullsafe(Nullsafe.Mode.LOCAL)
/* renamed from: com.facebook.ads.redexgen.X.ar  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1319ar {
    public final C1330b2 A00;
    public final C1328b0 A01;

    public C1319ar(AbstractC1335b7 abstractC1335b7, C1328b0 c1328b0, C1330b2 c1330b2) {
        this.A00 = c1330b2;
        this.A01 = c1328b0;
        abstractC1335b7.A02(new C0764Fr(c1328b0));
    }

    public static C1319ar A00(AbstractC1335b7 abstractC1335b7, InterfaceC1339bB interfaceC1339bB, InterfaceC0765Fs interfaceC0765Fs) {
        C1330b2 c1330b2 = new C1330b2();
        C1328b0 viewpointScanner = new C1328b0(interfaceC1339bB, new C0771Fy(), interfaceC0765Fs, c1330b2, new Handler(Looper.getMainLooper()));
        return new C1319ar(abstractC1335b7, viewpointScanner, c1330b2);
    }

    public final void A01(View view) {
        this.A00.A01(view);
    }

    public final void A02(View view, C1337b9 c1337b9) {
        this.A00.A02(view, c1337b9);
    }

    public final void A03(@Nullable InterfaceC1334b6 interfaceC1334b6) {
        this.A01.A09(interfaceC1334b6);
    }

    public final void A04(@Nullable InterfaceC1332b4 interfaceC1332b4) {
        this.A01.A0A(interfaceC1332b4);
    }
}
