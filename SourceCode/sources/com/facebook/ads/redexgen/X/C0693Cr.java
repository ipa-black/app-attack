package com.facebook.ads.redexgen.X;

import java.io.IOException;
/* renamed from: com.facebook.ads.redexgen.X.Cr  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0693Cr {
    public final int A00;
    public final long A01;

    public C0693Cr(int i, long j) {
        this.A00 = i;
        this.A01 = j;
    }

    public static C0693Cr A00(BW bw, C0799Hc c0799Hc) throws IOException, InterruptedException {
        bw.ADP(c0799Hc.A00, 0, 8);
        c0799Hc.A0Y(0);
        int A08 = c0799Hc.A08();
        long size = c0799Hc.A0K();
        return new C0693Cr(A08, size);
    }
}
