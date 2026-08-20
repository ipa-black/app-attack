package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.api.BuildConfigApi;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Locale;
/* renamed from: com.facebook.ads.redexgen.X.Xq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1217Xq implements InterfaceC05315n {
    public static byte[] A02;
    public static final String A03;
    public final InterfaceC05345q A00;
    public final C6M A01;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 112);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{50, 84, 71, 78, 81, 67, 70, 75, 80, 73, 2, 7, 70, 2, 67, 85, 85, 71, 86, 85, 58, 92, 79, 86, 89, 75, 78, 83, 88, 81, 10, 83, 87, 75, 81, 79, 36, 10, 15, 93, 35, 69, 56, 63, 66, 52, 55, 60, 65, 58, -13, SignedBytes.MAX_POWER_OF_TWO, 52, 69, 62, 72, 67, 13, -13, -8, 70, 25, 59, 46, 53, 56, 42, 45, 50, 55, 48, -23, 63, 50, 45, 46, 56, 3, -23, -18, 60, -33, -82, -31, -31, -79, -78, -81, -81, -88, -35, -77, -82, -83, -88, -84, -84, -32, -76, -88, -36, -83, -36, -82, -88, -83, -36, -83, -36, -32, -83, -33, -35, -34, -34, -32, -81, 58, 60, 47, 48, 47, 62, 45, 50, 19, 12, 9, 12, 13, 21, 12};
    }

    static {
        A02();
        A03 = C1217Xq.class.getSimpleName();
    }

    public C1217Xq(InterfaceC05345q interfaceC05345q, C1202Xb c1202Xb) {
        this.A00 = interfaceC05345q;
        this.A00.A3E(new C1219Xs(this));
        this.A01 = new C6M(c1202Xb);
        A01();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A01() {
        if (BuildConfigApi.isDebug()) {
            String.format(Locale.US, A00(0, 20, 114), Integer.valueOf(this.A00.A5l().size()));
        }
        for (InterfaceC05375t asset : this.A00.A5l()) {
            int i = C05335p.A00[asset.A7v().ordinal()];
            if (i == 1) {
                A04(asset.getUrl());
            } else if (i == 2) {
                A06(asset.getUrl());
            } else if (i == 3) {
                A05(asset.getUrl());
            }
        }
        this.A01.A0W(new C1218Xr(this), new C6F(A00(81, 36, 11), A00(125, 7, 46)));
    }

    private void A04(String str) {
        if (BuildConfigApi.isDebug()) {
            String.format(Locale.US, A00(20, 20, 122), str);
        }
        C6K c6k = new C6K(str, -1, -1, A00(81, 36, 11), A00(125, 7, 46));
        c6k.A01 = A00(117, 8, 90);
        this.A01.A0b(c6k);
    }

    private void A05(String str) {
        if (BuildConfigApi.isDebug()) {
            String.format(Locale.US, A00(40, 21, 99), str);
        }
        C6I c6i = new C6I(str, A00(81, 36, 11), A00(125, 7, 46));
        c6i.A04 = true;
        c6i.A02 = A00(117, 8, 90);
        this.A01.A0X(c6i);
    }

    private void A06(String str) {
        if (BuildConfigApi.isDebug()) {
            String.format(Locale.US, A00(61, 20, 89), str);
        }
        C6I c6i = new C6I(str, A00(81, 36, 11), A00(125, 7, 46));
        c6i.A04 = false;
        c6i.A02 = A00(117, 8, 90);
        this.A01.A0a(c6i);
    }
}
