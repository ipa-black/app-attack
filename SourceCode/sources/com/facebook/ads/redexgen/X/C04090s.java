package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.facebook.ads.internal.protocol.AdPlacementType;
/* renamed from: com.facebook.ads.redexgen.X.0s  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C04090s {
    public static InterfaceC04040n A00;

    @Nullable
    public final InterfaceC04040n A00(C1203Xc c1203Xc, AdPlacementType adPlacementType) {
        InterfaceC04040n interfaceC04040n = A00;
        if (interfaceC04040n != null) {
            return interfaceC04040n;
        }
        int i = C04080r.A00[adPlacementType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return null;
                        }
                        return new F6();
                    }
                    return new F9(c1203Xc);
                }
                return new C1283a7(c1203Xc);
            }
            return new C1285a9();
        }
        return new C1286aA();
    }
}
