package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Uy  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1150Uy implements FR {
    public final C0761Fo A00;
    public final Map<String, C0767Fu> A01;
    public final Map<String, C0762Fp> A02;
    public final long[] A03;

    public C1150Uy(C0761Fo c0761Fo, Map<String, C0767Fu> map, Map<String, C0762Fp> map2) {
        Map<String, C0767Fu> emptyMap;
        this.A00 = c0761Fo;
        this.A02 = map2;
        if (map != null) {
            emptyMap = Collections.unmodifiableMap(map);
        } else {
            emptyMap = Collections.emptyMap();
        }
        this.A01 = emptyMap;
        this.A03 = c0761Fo.A0F();
    }

    @Override // com.facebook.ads.redexgen.X.FR
    public final List<FQ> A6H(long j) {
        return this.A00.A0D(j, this.A01, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.FR
    public final long A6i(int i) {
        return this.A03[i];
    }

    @Override // com.facebook.ads.redexgen.X.FR
    public final int A6j() {
        return this.A03.length;
    }

    @Override // com.facebook.ads.redexgen.X.FR
    public final int A7A(long j) {
        int A0A = C0815Hs.A0A(this.A03, j, false, false);
        int index = this.A03.length;
        if (A0A < index) {
            return A0A;
        }
        return -1;
    }
}
