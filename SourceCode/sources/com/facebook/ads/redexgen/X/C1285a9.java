package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.util.Log;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.UUID;
/* renamed from: com.facebook.ads.redexgen.X.a9  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1285a9 implements InterfaceC04040n, InterfaceC04191c {
    public static byte[] A0B;
    public static String[] A0C = {"PgLDGrk3t3a26fQCrT3IpIrRB5PMNBKm", "uls9HIPpriPjzjIXJVTR7HWmS4IMGzWu", "f2YRmtND2fanruA3kJYGXgN9aGwgjawI", "EZdssni07U2TMPMup9RmA63S0tAhTBNo", "xilKUxawUAlWzUTJOedtCKHAHwNBDRxA", "SxIuirRfQS0L7ik0LzQXw", "dF8CYh", "NQmOIXzIEfwTEqDrM9Z7TuMEUTKSiMNX"};
    public long A00;
    public RewardData A01;
    public InterfaceC04140x A02;
    public C04150y A03;
    public C04201d A04;
    public C1203Xc A05;
    public String A06;
    @Nullable
    public String A07;
    public String A08;
    public boolean A09;
    public final String A0A = UUID.randomUUID().toString();

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        byte[] bArr = {78, 108, 99, 42, 121, 45, 126, 121, 108, Byte.MAX_VALUE, 121, 45, 76, 120, 105, 100, 104, 99, 110, 104, 67, 104, 121, 122, 98, Byte.MAX_VALUE, 102, 76, 110, 121, 100, 123, 100, 121, 116, 35, 45, SignedBytes.MAX_POWER_OF_TWO, 108, 102, 104, 45, 126, 120, Byte.MAX_VALUE, 104, 45, 121, 101, 108, 121, 45, 100, 121, 42, 126, 45, 100, 99, 45, 116, 98, 120, Byte.MAX_VALUE, 45, 76, 99, 105, Byte.MAX_VALUE, 98, 100, 105, SignedBytes.MAX_POWER_OF_TWO, 108, 99, 100, 107, 104, 126, 121, 35, 117, 96, 97, 45, 107, 100, 97, 104, 35, 73, 77, 78, 122, 107, 102, 106, 97, 108, 106, 65, 106, 123, 120, 96, 125, 100, 68, 37, 42, 27, 37, 39, 48, 45, 50, 45, 48, 61, 83, 91, 90, 87, 95, 74, 87, 81, 80, 122, 95, 74, 95, 12, 16, 29, 31, 25, 17, 25, 18, 8, 53, 24, 52, 54, 33, 32, 33, 34, 45, 42, 33, 32, 11, 54, 45, 33, 42, 48, 37, 48, 45, 43, 42, 15, 33, 61, 6, 17, 5, 1, 17, 7, 0, 32, 29, 25, 17, 114, 105, 110, 118, 114, 98, 78, 99, 30, 1, 13, 31, 60, 17, 24, 13, 39, 57, 62, 52, 63, 39};
        if (A0C[1].charAt(29) == 'g') {
            throw new RuntimeException();
        }
        String[] strArr = A0C;
        strArr[4] = "6qgGoSyjmuhDFT94hunOHzgd3UUS7LMQ";
        strArr[0] = "q1PjRK7gg6WFD8n4pAFO870HLaNMi7ir";
        A0B = bArr;
    }

    static {
        A05();
    }

    private int A00() {
        WindowManager windowManager = (WindowManager) this.A05.getSystemService(A03(194, 6, 88));
        int rotation = windowManager.getDefaultDisplay().getRotation();
        NB adOrientation = A02();
        if (adOrientation == NB.A06) {
            return -1;
        }
        if (adOrientation == NB.A04) {
            if (rotation == 2 || rotation == 3) {
                int rotation2 = A0C[1].charAt(29);
                if (rotation2 != 103) {
                    String[] strArr = A0C;
                    strArr[3] = "WCZdwi0h9oyTFk4ywD5LtkOxTOpQ29Yc";
                    strArr[7] = "4yy96Y2PoNFTEE84mLwUlYETryPZgGhE";
                    return 8;
                }
                throw new RuntimeException();
            }
            return 0;
        } else if (rotation != 2) {
            return 1;
        } else {
            return 9;
        }
    }

    private final EnumC0855Jj A01() {
        return this.A04.A0C();
    }

    private NB A02() {
        return this.A04.A0D();
    }

    private void A04() {
        this.A09 = true;
    }

    private void A06(Intent intent) {
        C04201d c04201d = this.A04;
        RewardData rewardData = this.A01;
        c04201d.A0G(intent, rewardData, P5.A03(rewardData, this.A0A, this.A06));
    }

    private final void A07(C1203Xc c1203Xc, InterfaceC04140x interfaceC04140x, C04331q c04331q, EnumSet<CacheFlag> enumSet, @Nullable String str) {
        C04201d c04201d = new C04201d(c1203Xc, c04331q, this, str);
        if (IK.A0q(c1203Xc)) {
            C1203Xc c1203Xc2 = this.A05;
            InterfaceC04000i A01 = C04010j.A01(c1203Xc, c04331q.A03(), c04201d.A0E());
            InterfaceC0821Ia A09 = c1203Xc.A09();
            String[] strArr = A0C;
            if (strArr[3].charAt(11) == strArr[7].charAt(11)) {
                A0C[2] = "TkuXboGIr4gI6uBXxoSPLVsF8oObr4N9";
                if (C04010j.A06(c1203Xc2, A01, A09)) {
                    this.A05.A0E().A44();
                    this.A02.ABI(this, AdError.NO_FILL);
                    return;
                }
            }
            throw new RuntimeException();
        }
        this.A04 = c04201d;
        c04201d.A0H(c1203Xc, enumSet);
        String[] strArr2 = A0C;
        if (strArr2[3].charAt(11) == strArr2[7].charAt(11)) {
            A0C[1] = "78EqxHXjdVB4uq4fqkQnSqdXUgUnX7wU";
            return;
        }
        throw new RuntimeException();
    }

    private void A08(EnumC0855Jj enumC0855Jj) {
        if (enumC0855Jj.equals(EnumC0855Jj.A08)) {
            this.A05.A0E().AFA(EnumC03940c.A03);
        } else if (enumC0855Jj.equals(EnumC0855Jj.A09)) {
            this.A05.A0E().AFA(EnumC03940c.A07);
        } else if (enumC0855Jj.equals(EnumC0855Jj.A0B)) {
            this.A05.A0E().AFA(EnumC03940c.A09);
        } else if (enumC0855Jj.equals(EnumC0855Jj.A0A)) {
            this.A05.A0E().AFA(EnumC03940c.A08);
        } else if (!enumC0855Jj.equals(EnumC0855Jj.A04)) {
        } else {
            if (this.A04.A0J()) {
                C0R A0E = this.A05.A0E();
                String[] strArr = A0C;
                if (strArr[5].length() == strArr[6].length()) {
                    throw new RuntimeException();
                }
                A0C[2] = "SZ1DhKHJxqFOmux8c4F7iNiG5ZFRRvjL";
                A0E.AFA(EnumC03940c.A04);
            } else if (this.A04.A0I()) {
                this.A05.A0E().AFA(EnumC03940c.A06);
            } else {
                this.A05.A0E().AFA(EnumC03940c.A05);
            }
        }
    }

    public final AbstractC1268Zs A09() {
        return this.A04.A0B();
    }

    public final void A0A(C1203Xc c1203Xc, InterfaceC04140x interfaceC04140x, C04331q c04331q, EnumSet<CacheFlag> enumSet, @Nullable String str, @Nullable String str2, @Nullable RewardData rewardData) {
        this.A05 = c1203Xc;
        this.A02 = interfaceC04140x;
        this.A08 = c04331q.A02();
        String str3 = this.A08;
        this.A06 = str3 != null ? str3.split(A03(107, 1, 19))[0] : A03(0, 0, 5);
        this.A00 = c04331q.A00();
        this.A07 = str2;
        this.A01 = rewardData;
        A07(c1203Xc, interfaceC04140x, c04331q, enumSet, str);
    }

    public final boolean A0B() {
        if (!this.A09) {
            InterfaceC04140x interfaceC04140x = this.A02;
            if (interfaceC04140x != null) {
                interfaceC04140x.ABI(this, AdError.SHOW_CALLED_BEFORE_LOAD_ERROR);
            }
            return false;
        }
        AdActivityIntent A04 = KG.A04(this.A05);
        A04.putExtra(A03(143, 24, 76), A00());
        A04.putExtra(A03(178, 8, 15), this.A0A);
        A04.putExtra(A03(132, 11, 116), this.A08);
        A04.putExtra(A03(167, 11, 124), this.A00);
        EnumC0855Jj A01 = A01();
        A08(A01);
        A04.putExtra(A03(186, 8, 96), A01);
        String str = this.A07;
        if (str != null) {
            A04.putExtra(A03(119, 13, 54), str);
        }
        A06(A04);
        A04.addFlags(268435456);
        try {
            ActivityUtils.A03(this.A05);
            KG.A09(this.A05, A04);
            return true;
        } catch (KE e2) {
            Throwable cause = e2.getCause();
            Throwable th = e2;
            if (cause != null) {
                th = e2.getCause();
            }
            this.A05.A07().A9C(A03(108, 11, 76), C05787s.A0D, new C05797t(th));
            Log.e(A03(90, 17, 7), A03(0, 90, 5), th);
            return false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04040n
    @Nullable
    public final String A6B() {
        return this.A04.A0E();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04040n
    public final AdPlacementType A7L() {
        return AdPlacementType.INTERSTITIAL;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04191c
    public final void AA6(AdError adError) {
        InterfaceC04140x interfaceC04140x = this.A02;
        if (interfaceC04140x != null) {
            interfaceC04140x.ABI(this, adError);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04191c
    public final void AA7() {
        A04();
        this.A02.ABH(this);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04191c
    public final void AE1() {
        this.A03 = new C04150y(this.A05, this.A0A, this, this.A02);
        this.A03.A02();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04040n
    public final boolean AFX() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04191c
    public final void AFg() {
        C04150y c04150y = this.A03;
        if (c04150y != null) {
            c04150y.A03();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04040n
    public final void onDestroy() {
        C04201d c04201d = this.A04;
        if (c04201d != null) {
            c04201d.A0F();
        }
    }
}
