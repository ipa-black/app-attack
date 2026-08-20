package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class ZS implements AnonymousClass14 {
    public static byte[] A02;
    public static String[] A03 = {"gOGPE1XGqnroAJihU7XGAfTAdWa21jWC", "Kcs30m2Uc1eFMAQARd2pOhOOSRswugkg", "xkwB", "vFLx4ryI8nKhSFQKGVnAMH5qObxMihWN", "NnwKyO2XMzRH0BXfVduboZ9DAJ5a5svW", "U3uRLxNZuwH", "U9y6Wp3Jad2LD1", "sOAhAPVwmiqriGnbgM61Uai8lTIQh97W"};
    public final /* synthetic */ C0724Eb A00;
    public final /* synthetic */ Runnable A01;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 97);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{85, 83, 82, 4, 83, 87, 84, 85, 112, 71, 85, 67, 80, 70, 71, 70, 2, 116, 75, 70, 71, 77, 2, 75, 79, 82, 80, 71, 81, 81, 75, 77, 76, 2, 68, 75, 80, 71, 70, 70, 71, 123, 76, 94, 72, 91, 77, 76, 77, Byte.MAX_VALUE, SignedBytes.MAX_POWER_OF_TWO, 77, 76, 70, 104, 77, 101, 70, 78, 78, SignedBytes.MAX_POWER_OF_TWO, 71, 78, 96, 68, 89, 91, 76, 90, 90, SignedBytes.MAX_POWER_OF_TWO, 70, 71};
    }

    static {
        A01();
    }

    public ZS(C0724Eb c0724Eb, Runnable runnable) {
        this.A00 = c0724Eb;
        this.A01 = runnable;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void ACN(AbstractC1272Zw abstractC1272Zw) {
        this.A00.A06.A06();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void ACO(AbstractC1272Zw abstractC1272Zw) {
        this.A00.A06.A07();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void ACP(AbstractC1272Zw abstractC1272Zw) {
        this.A00.A06.A0C();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void ACQ(AbstractC1272Zw abstractC1272Zw) {
        this.A00.A0E().removeCallbacks(this.A01);
        C0724Eb c0724Eb = this.A00;
        c0724Eb.A01 = abstractC1272Zw;
        c0724Eb.A0H();
        this.A00.A06.A0F(abstractC1272Zw);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void ACR(AbstractC1272Zw abstractC1272Zw) {
        JO.A05(A00(39, 34, 72), A00(8, 31, 67), A00(0, 8, 7));
        this.A00.A06.A0D();
        this.A00.A0K();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void ACS(AbstractC1272Zw abstractC1272Zw) {
        this.A00.A06.A08();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void ACT(AbstractC1272Zw abstractC1272Zw, AdError adError) {
        this.A00.A0E().removeCallbacks(this.A01);
        this.A00.A0B.A0E().A4c(adError.getErrorCode(), adError.getErrorMessage());
        if (AdError.AD_PRESENTATION_ERROR.equals(adError) && IK.A1P(this.A00.A0B)) {
            this.A00.A06.A0G(JA.A00(AdErrorType.AD_PRESENTATION_ERROR));
        } else {
            AdError adError2 = AdError.NO_FILL;
            if (A03[2].length() != 4) {
                throw new RuntimeException();
            }
            A03[2] = "s57s";
            if (adError2.equals(adError)) {
                this.A00.A06.A0G(JA.A00(AdErrorType.NO_FILL));
            } else {
                this.A00.A06.A0G(JA.A00(AdErrorType.INTERNAL_ERROR));
            }
        }
        this.A00.A0M(abstractC1272Zw);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void onRewardedVideoActivityDestroyed() {
        this.A00.A06.A09();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void onRewardedVideoClosed() {
        this.A00.A06.A0A();
    }
}
