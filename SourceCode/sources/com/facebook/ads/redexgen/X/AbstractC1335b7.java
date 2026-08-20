package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.infer.annotation.Nullsafe;
@Nullsafe(Nullsafe.Mode.LOCAL)
/* renamed from: com.facebook.ads.redexgen.X.b7  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1335b7 {
    @Nullable
    public InterfaceC1336b8 A00;

    public final void A00() {
        InterfaceC1336b8 interfaceC1336b8 = this.A00;
        if (interfaceC1336b8 != null) {
            interfaceC1336b8.onStart();
        }
    }

    public final void A01() {
        InterfaceC1336b8 interfaceC1336b8 = this.A00;
        if (interfaceC1336b8 != null) {
            interfaceC1336b8.onStop();
        }
    }

    public final void A02(InterfaceC1336b8 interfaceC1336b8) {
        this.A00 = interfaceC1336b8;
    }
}
