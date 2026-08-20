package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.net.Uri;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.util.Arrays;
@TargetApi(14)
/* renamed from: com.facebook.ads.redexgen.X.Pu  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1017Pu {
    public static byte[] A02;
    public static String[] A03 = {"WzijvlAd9RP1HJzMxCKzeYHnMs2QP54v", "kfrqpsiELz0FvZTPYg", "hAwPDz", "OryCsPOoCbEZ1Kjw18", "JoqBI6chV", "rfkFyJ13DXugB3RLj6H", "rQvj", "kthZXjW83"};
    public final C0701De A00;
    public final C1138Um A01 = new C1138Um();

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 10);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-114, -104, -116, -114, -49, -51, -31, -33, -47, -114, -116, -90, -116, -114, -96, -86, -98, -96, -16, -29, -20, -30, -29, -16, -29, -16, -57, -20, -30, -29, -10, -96, -98, -72, -98, -96, -114, -23, 111, 114, -127, -68, 99, -75, -70, -79, -90, 99, 97, 123, 97, 99};
    }

    static {
        A02();
    }

    public C1017Pu(C1203Xc c1203Xc) {
        GI trackSelectionFactory = new C1145Ut(this.A01);
        this.A00 = C9H.A00(new C1197Ww(c1203Xc), new B7(trackSelectionFactory), new C1199Wy());
    }

    @VisibleForTesting
    public static String A01(C9F c9f) {
        return A00(41, 11, 55) + c9f.A01 + A00(14, 22, 116) + c9f.A00 + A00(0, 14, 98) + c9f.getCause() + A00(36, 2, 98);
    }

    public static boolean A03() {
        if (A03[0].charAt(3) != 'z') {
            A03[6] = "p35x";
            return true;
        }
        throw new RuntimeException();
    }

    public final int A04() {
        return this.A00.A0J();
    }

    public final int A05() {
        return this.A00.A5u();
    }

    public final long A06() {
        return this.A00.A6L();
    }

    public final long A07() {
        return this.A00.A6X();
    }

    @Nullable
    public final C1015Ps A08() {
        Format vf = this.A00.A0L();
        if (vf == null) {
            return null;
        }
        return new C1015Ps(vf.A0F, vf.A08);
    }

    public final void A09() {
        this.A00.AE4();
    }

    public final void A0A() {
        this.A00.AEf();
    }

    public final void A0B() {
        this.A00.A0M();
    }

    public final void A0C(float f2) {
        this.A00.A0N(f2);
    }

    public final void A0D(long j) {
        this.A00.AEe(j);
    }

    public final void A0E(@Nullable Surface surface) {
        this.A00.A0O(surface);
    }

    public final void A0F(C1202Xb c1202Xb, Uri uri) {
        if (IK.A2F(c1202Xb, A03())) {
            C1021Py cacheManager = C1021Py.A05(c1202Xb);
            VC vc = new VC(cacheManager.A0F(c1202Xb));
            String A08 = C1021Py.A08(c1202Xb, uri);
            if (A08 != null) {
                vc.A00(A08);
            }
            this.A00.A0P(vc.A01(uri));
            return;
        }
        ET mediaSource = new VC(new C1136Uk(c1202Xb, C0815Hs.A0K(c1202Xb, A00(38, 3, 4)), this.A01)).A01(uri);
        this.A00.A0P(mediaSource);
    }

    public final void A0G(InterfaceC1014Pr interfaceC1014Pr) {
        this.A00.A3F(new JM(this, interfaceC1014Pr));
    }

    public final void A0H(InterfaceC1016Pt interfaceC1016Pt) {
        this.A00.A0Q(new JN(this, interfaceC1016Pt));
    }

    public final void A0I(boolean z) {
        this.A00.AF3(z);
    }

    public final boolean A0J() {
        return this.A00.A7N();
    }

    public final boolean A0K() {
        return this.A00.A0K() != null;
    }
}
