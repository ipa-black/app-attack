package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.google.android.exoplayer2.C;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Vd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1155Vd implements InterfaceC0686Cj {
    public static byte[] A03;
    public InterfaceC0667Bh A00;
    public C0811Ho A01;
    public boolean A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 88);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{90, 75, 75, 87, 82, 88, 90, 79, 82, 84, 85, 20, 67, 22, 72, 88, 79, 94, 8, 14};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0686Cj
    public final void A4B(C0799Hc c0799Hc) {
        if (!this.A02) {
            if (this.A01.A05() == C.TIME_UNSET) {
                return;
            }
            this.A00.A5X(Format.A02(null, A00(0, 20, 99), this.A01.A05()));
            this.A02 = true;
        }
        int A04 = c0799Hc.A04();
        this.A00.AEX(c0799Hc, A04);
        this.A00.AEY(this.A01.A04(), 1, A04, 0, null);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0686Cj
    public final void A8X(C0811Ho c0811Ho, BX bx, C0691Cp c0691Cp) {
        this.A01 = c0811Ho;
        c0691Cp.A05();
        this.A00 = bx.AFc(c0691Cp.A03(), 4);
        this.A00.A5X(Format.A0B(c0691Cp.A04(), A00(0, 20, 99), null, -1, null));
    }
}
