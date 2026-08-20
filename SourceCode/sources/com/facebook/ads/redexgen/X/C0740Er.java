package com.facebook.ads.redexgen.X;

import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Er  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0740Er extends AbstractC1250Za {
    public static byte[] A00;
    public static String[] A01 = {"d7tLiGkqyLa7cKOkED7RtvmpIXZH8d0b", "LmA4T64r6T9e", "1EBtOKlPck0twYp3ElEJQmg3d", "uhXcdOUibAChEZNBNQuPqKRIQ2", "Z", "LV0o53GlcsqgEYK9Pr4EwymnJShooL9b", "NLZosIPt4DzrQXhRsvqwWEHVFOTX5bDJ", "MQasnwh7q"};

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 52);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{77, 72, 12, 69, 95, 12, 66, 67, 88, 12, 94, 73, 77, 72, 85, 12, 67, 94, 12, 77, SignedBytes.MAX_POWER_OF_TWO, 94, 73, 77, 72, 85, 12, 72, 69, 95, 92, SignedBytes.MAX_POWER_OF_TWO, 77, 85, 73, 72, 56, 57, 48, 61, 37};
    }

    static {
        A03();
    }

    public C0740Er(C1203Xc c1203Xc, C04321p c04321p) {
        super(c1203Xc, c04321p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> A01(long j) {
        HashMap hashMap = new HashMap();
        hashMap.put(A00(36, 5, 104), String.valueOf(System.currentTimeMillis() - j));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05(List<String> trackingUrls, Map<String, String> extraData) {
        if (trackingUrls == null || trackingUrls.isEmpty()) {
            return;
        }
        Iterator<String> it = trackingUrls.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            String[] strArr = A01;
            if (strArr[2].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            A01[0] = "jDIZMq7wlAdnEmkEGDRuOyHBIh8qxobs";
            if (hasNext) {
                new AsyncTaskC1023Qa(this.A0B, extraData).execute(it.next());
            } else {
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1250Za
    public final void A0L() {
        C1283a7 c1283a7 = (C1283a7) this.A01;
        if (c1283a7.A0T()) {
            if (this.A06 != null) {
                this.A06.A0B(c1283a7);
                return;
            }
            return;
        }
        throw new IllegalStateException(A00(0, 36, 24));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1250Za
    public final void A0N(InterfaceC04040n interfaceC04040n, C8A c8a, AnonymousClass88 anonymousClass88, C04331q c04331q) {
        C1283a7 c1283a7 = (C1283a7) interfaceC04040n;
        long currentTimeMillis = System.currentTimeMillis();
        ZX zx = new ZX(this, c04331q, c1283a7, currentTimeMillis, anonymousClass88);
        A0E().postDelayed(zx, c8a.A05().A05());
        c1283a7.A0L(this.A0B, new ZW(this, zx, currentTimeMillis, anonymousClass88), this.A08, c04331q, C1115Tp.A0K());
    }
}
