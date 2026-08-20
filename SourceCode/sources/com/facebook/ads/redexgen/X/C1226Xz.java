package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.facebook.ads.NativeAdBase;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Xz  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1226Xz implements InterfaceC04351s {
    public static byte[] A03;
    public C5W A00;
    public C1203Xc A01;
    public final NativeAdBase.MediaCacheFlag A02;

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 87);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{59, 52, 33, 60, 35, 48, 100, Byte.MAX_VALUE, 122, Byte.MAX_VALUE, 126, 102, Byte.MAX_VALUE};
    }

    public C1226Xz(C5W c5w, C1203Xc c1203Xc, NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        this.A00 = c5w;
        this.A01 = c1203Xc;
        this.A02 = mediaCacheFlag;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04351s
    public final void AAv(JA ja) {
        C0863Js.A00(new Y2(this, ja));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04351s
    public final void ABq(List<C1283a7> list) {
        C6M manager = new C6M(this.A01);
        String firstRequestId = A02(6, 7, 70);
        for (C1283a7 c1283a7 : list) {
            if (A02(6, 7, 70).equals(firstRequestId)) {
                firstRequestId = c1283a7.A0G();
            }
            if (this.A02.equals(NativeAdBase.MediaCacheFlag.ALL)) {
                if (c1283a7.A0E().A0G() != null) {
                    manager.A0b(new C6K(c1283a7.A0E().A0G().getUrl(), c1283a7.A0E().A0G().getHeight(), c1283a7.A0E().A0G().getWidth(), c1283a7.A0G(), A02(0, 6, 2)));
                }
                if (c1283a7.A0E().A0F() != null) {
                    manager.A0b(new C6K(c1283a7.A0E().A0F().getUrl(), c1283a7.A0E().A0F().getHeight(), c1283a7.A0E().A0F().getWidth(), c1283a7.A0G(), A02(0, 6, 2)));
                }
                if (!TextUtils.isEmpty(c1283a7.A0E().A0d())) {
                    manager.A0a(new C6I(c1283a7.A0E().A0d(), c1283a7.A0G(), A02(0, 6, 2), c1283a7.A0E().A0A()));
                }
            }
        }
        manager.A0W(new Y0(this, list), new C6F(firstRequestId, A02(0, 6, 2)));
    }
}
