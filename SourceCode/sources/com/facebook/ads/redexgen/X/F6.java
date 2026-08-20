package com.facebook.ads.redexgen.X;

import android.content.ContentResolver;
import android.content.Intent;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.facebook.proguard.annotations.DoNotStrip;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: assets/audience_network.dex */
public final class F6 extends AbstractC1272Zw {
    public static C6M A0D;
    public static byte[] A0E;
    public static String[] A0F = {"YJVWhBFSVFKs7NrWmWULGh", "0GvTyPfIpVaCupDTXIuhVv", "vKmpQ0k2zgunQxdAFsx7Wlk6dmYtSCUc", "dqRYVPDeGy45RCRFCWIUPRHRtp9NBigI", "NSweCua6lZ8ChPFZ3cKnaOBscLcsrWLc", "HenZyTRrHhMHTWT00jKprDJGPW9d4C4V", "lvvcgtkpn6JHhS0LrJ19j3FN0lJsZZOv", "GmBDkEWrzwPugE8SLtTHysECIxUFQGpg"};
    public long A00;
    public AnonymousClass14 A01;
    public AnonymousClass15 A02;
    public C1B A03;
    public C1203Xc A04;
    public EnumC0855Jj A05;
    @Nullable
    @DoNotStrip
    public OM A06;
    public String A07;
    @Nullable
    public String A08;
    @Nullable
    public String A09;
    public String A0A;
    public final String A0B = UUID.randomUUID().toString();
    public final AtomicBoolean A0C = new AtomicBoolean();

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 126);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A0E = new byte[]{56, 52, 54, 54, 48, 57, 48, 39, 58, 56, 48, 33, 48, 39, 10, 39, 58, 33, 52, 33, 60, 58, 59, 108, 99, 82, 108, 110, 121, 100, 123, 100, 121, 116, 9, 2, 11, 3, 4, 15, 14, 43, 14, 46, 11, 30, 11, 40, 31, 4, 14, 6, 15, 68, 76, 77, SignedBytes.MAX_POWER_OF_TWO, 72, 93, SignedBytes.MAX_POWER_OF_TWO, 70, 71, 109, 72, 93, 72, 12, 16, 29, 31, 25, 17, 25, 18, 8, 53, 24, 87, 85, 66, 67, 66, 65, 78, 73, 66, 67, 104, 85, 78, 66, 73, 83, 70, 83, 78, 72, 73, 108, 66, 94, 4, 19, 7, 3, 19, 5, 2, 34, 31, 27, 19, 104, Byte.MAX_VALUE, 109, 123, 104, 126, 73, Byte.MAX_VALUE, 104, 108, Byte.MAX_VALUE, 104, 79, 72, 86, 25, 14, 28, 10, 25, 15, 14, 15, 61, 2, 15, 14, 4, 42, 15, 47, 10, 31, 10, 41, 30, 5, 15, 7, 14, 87, SignedBytes.MAX_POWER_OF_TWO, 82, 68, 87, 65, SignedBytes.MAX_POWER_OF_TWO, 65, 122, 83, 76, 65, SignedBytes.MAX_POWER_OF_TWO, 74, 124, 103, 96, 120, 124, 108, SignedBytes.MAX_POWER_OF_TWO, 109, 83, 76, SignedBytes.MAX_POWER_OF_TWO, 82, 113, 92, 85, SignedBytes.MAX_POWER_OF_TWO};
    }

    static {
        A08();
    }

    private void A06() {
        C2Z A00 = C2Z.A00(this.A04);
        AnonymousClass15 anonymousClass15 = this.A02;
        A00.A06(anonymousClass15, anonymousClass15.A00());
    }

    private void A07() {
        if (this.A02 != null) {
            try {
                C2Z.A00(this.A04).A05(this.A02);
            } catch (Exception unused) {
            }
        }
    }

    private void A09(Intent intent) {
        int i = super.A00;
        String A04 = A04(77, 24, 89);
        if (i != -1) {
            ContentResolver contentResolver = this.A04.getContentResolver();
            if (A0F[3].charAt(29) != 'i') {
                throw new RuntimeException();
            }
            String[] strArr = A0F;
            strArr[7] = "ryaiaZaF8EzuUPZd67FeoIG9jUALGHZG";
            strArr[6] = "XITZtpYy2wf6QHmOozCOnY6Xlkm3ca51";
            if (Settings.System.getInt(contentResolver, A04(1, 22, 43), 0) != 1) {
                int i2 = super.A00;
                if (A0F[2].charAt(2) != 'm') {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0F;
                strArr2[1] = "mo2n49jFbf8CHvb7nubztA";
                strArr2[0] = "3h0LYrxRFByrgEG7Z48zJG";
                intent.putExtra(A04, i2);
                return;
            }
        }
        if (!IK.A0f(this.A04)) {
            intent.putExtra(A04, 6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B(C1203Xc c1203Xc, C1266Zq c1266Zq, int i) {
        if (i >= c1266Zq.A0c()) {
            return;
        }
        C0743Eu A0e = c1266Zq.A0e(i);
        A0D = new C6M(c1203Xc);
        A0D.A0d(new C0829Ii(A0e.A0m(), c1203Xc.A09()));
        C04311o.A02(c1203Xc, A0D, A0e);
        A0D.A0W(new F7(this, i == 0, c1203Xc, A0e, c1266Zq, i), new C6F(A0e.A0L(), A04(152, 14, 91)));
    }

    private void A0C(boolean z) {
        if (this.A05 == EnumC0855Jj.A0C) {
            A0E(z);
            return;
        }
        EnumC0855Jj enumC0855Jj = this.A05;
        String[] strArr = A0F;
        if (strArr[1].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0F;
        strArr2[4] = "1yOiFacRiwJanRzqDJ6A5hJ77lYfziAe";
        strArr2[5] = "McEelBumOV7dKb1zb6BdvUT5HG6VvrgI";
        if (enumC0855Jj == EnumC0855Jj.A0E) {
            A0F(z);
        } else if (this.A05 == EnumC0855Jj.A0D) {
            A0D(z);
        } else {
            A0F(z);
        }
    }

    private void A0D(boolean z) {
        C6M c6m = new C6M(this.A04);
        boolean z2 = IK.A1c(this.A04) && C05305m.A0A(this.A03.A0N());
        if (z2) {
            C05305m unifiedAssetsLoader = new C05305m(c6m, this.A03.A0N(), this.A03.A0K(), this.A03.A0L(), z2, new C1278a2(this));
            c6m.A0d(new C0829Ii(((AbstractC1268Zs) this.A03).A0m(), this.A04.A09()));
            unifiedAssetsLoader.A0B();
            return;
        }
        C04301n.A02(this.A04, (AbstractC1268Zs) this.A03, z, new C1277a1(this));
    }

    private void A0E(boolean z) {
        C6M c6m = new C6M(this.A04);
        c6m.A0d(new C0829Ii(((AbstractC1268Zs) this.A03).A0m(), this.A04.A09()));
        C04311o.A03(this.A04, c6m, (C0743Eu) this.A03);
        c6m.A0W(new C1282a6(this), new C6F(this.A03.A0L(), A04(152, 14, 91)));
    }

    private void A0F(boolean z) {
        boolean z2 = false;
        if (this.A03.A0Z()) {
            C1266Zq c1266Zq = (C1266Zq) this.A03;
            for (int i = 0; i < c1266Zq.A0c(); i++) {
                if (TextUtils.isEmpty(c1266Zq.A0e(i).A0h().A0D().A08())) {
                    this.A01.ACT(this, AdError.INTERNAL_ERROR);
                    return;
                }
            }
            A0B(this.A04, c1266Zq, 0);
            return;
        }
        C6M c6m = new C6M(this.A04);
        c6m.A0d(new C0829Ii(((AbstractC1268Zs) this.A03).A0m(), this.A04.A09()));
        if (IK.A1c(this.A04) && C05305m.A0A(this.A03.A0N())) {
            z2 = true;
        }
        boolean A0a = this.A03.A0a();
        if (z2) {
            C05305m unifiedAssetsLoader = new C05305m(c6m, this.A03.A0N(), this.A03.A0K(), this.A03.A0L(), z2, new C1280a4(this, A0a));
            unifiedAssetsLoader.A0B();
            return;
        }
        C0743Eu c0743Eu = (C0743Eu) this.A03;
        if (TextUtils.isEmpty(c0743Eu.A0h().A0D().A08())) {
            this.A01.ACT(this, AdError.INTERNAL_ERROR);
            return;
        }
        C04311o.A02(this.A04, c6m, c0743Eu);
        c6m.A0W(new F8(this, z, A0a, c0743Eu, this), new C6F(c0743Eu.A0L(), A04(152, 14, 91)));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1272Zw
    public final int A0G() {
        C1B c1b = this.A03;
        if (c1b == null) {
            String[] strArr = A0F;
            if (strArr[4].charAt(5) != strArr[5].charAt(5)) {
                A0F[3] = "zy8kAWNFspHhc9OUOOhBHMIK4AaCMilm";
                return -1;
            }
            throw new RuntimeException();
        }
        return c1b.A0D();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1272Zw
    public final C1B A0H() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1272Zw
    public final boolean A0I() {
        if (!this.A0C.get()) {
            return false;
        }
        this.A03.A0P(super.A01);
        String A03 = P5.A03(super.A02, this.A0B, this.A07);
        this.A03.A0Q(super.A02);
        this.A03.A0T(A03);
        AdActivityIntent A04 = KG.A04(this.A04);
        EnumC0855Jj enumC0855Jj = this.A05;
        String rewardUrl = A04(174, 8, 91);
        A04.putExtra(rewardUrl, enumC0855Jj);
        C1B c1b = this.A03;
        String rewardUrl2 = A04(127, 25, 21);
        A04.putExtra(rewardUrl2, c1b);
        C1B c1b2 = this.A03;
        String rewardUrl3 = A04(34, 19, 20);
        A04.putExtra(rewardUrl3, c1b2);
        String str = this.A0B;
        String rewardUrl4 = A04(166, 8, 119);
        A04.putExtra(rewardUrl4, str);
        if (A03 != null) {
            String rewardUrl5 = A04(112, 15, 100);
            A04.putExtra(rewardUrl5, A03);
        }
        String str2 = this.A0A;
        String rewardUrl6 = A04(66, 11, 2);
        A04.putExtra(rewardUrl6, str2);
        long j = this.A00;
        String rewardUrl7 = A04(101, 11, 8);
        A04.putExtra(rewardUrl7, j);
        String str3 = this.A09;
        if (str3 != null) {
            String rewardUrl8 = A04(53, 13, 87);
            A04.putExtra(rewardUrl8, str3);
        }
        A09(A04);
        A04.setFlags(A04.getFlags() | 268435456);
        ActivityUtils.A03(this.A04);
        try {
            KG.A09(this.A04, A04);
        } catch (KE e2) {
            Throwable cause = e2.getCause();
            Throwable th = e2;
            if (cause != null) {
                th = e2.getCause();
            }
            InterfaceC05777r A07 = this.A04.A07();
            int i = C05787s.A01;
            C05797t c05797t = new C05797t(th);
            String rewardUrl9 = A04(23, 11, 115);
            A07.A9C(rewardUrl9, i, c05797t);
        }
        String[] strArr = A0F;
        String str4 = strArr[1];
        String rewardUrl10 = strArr[0];
        if (str4.length() != rewardUrl10.length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0F;
        strArr2[1] = "L0ou65zbaEHIK9W1EiRqjH";
        strArr2[0] = "MlzKsAmmQguOmiSj0COpPP";
        return true;
    }

    public final void A0J(C1203Xc c1203Xc, AnonymousClass14 anonymousClass14, C04331q c04331q, boolean z, @Nullable String str, @Nullable String str2) {
        this.A0C.set(false);
        this.A04 = c1203Xc;
        this.A01 = anonymousClass14;
        this.A0A = c04331q.A02();
        this.A00 = c04331q.A00();
        this.A09 = str2;
        String str3 = this.A0A;
        this.A07 = str3 != null ? str3.split(A04(0, 1, 25))[0] : A04(0, 0, 20);
        this.A03 = C1B.A00(c04331q.A03(), this.A04);
        this.A03.A0R(str);
        this.A03.A0O(c04331q.A01().A06());
        if (this.A03.A0Z()) {
            this.A08 = ((C1266Zq) this.A03).A0e(0).A0m();
        } else {
            this.A08 = ((AbstractC1268Zs) this.A03).A0m();
        }
        boolean A0a = this.A03.A0a();
        String[] strArr = A0F;
        if (strArr[7].charAt(31) == strArr[6].charAt(31)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0F;
        strArr2[7] = "T6UzDEu82kzY1KsvV3iHB7OkWnIxnMBs";
        strArr2[6] = "PWXGgNcAlDXPEXP1mMx0dPQCA8p68UI5";
        if (A0a) {
            this.A05 = EnumC0855Jj.A06;
            if (this.A03.A0W()) {
                this.A04.A0E().AFA(EnumC03940c.A04);
            } else {
                this.A04.A0E().AFA(EnumC03940c.A06);
            }
        } else {
            int experienceType = this.A03.A0C();
            if (experienceType == 0) {
                this.A05 = EnumC0855Jj.A0E;
                this.A04.A0E().AFA(EnumC03940c.A09);
            } else if (experienceType == 1) {
                this.A05 = EnumC0855Jj.A0D;
                this.A04.A0E().AFA(EnumC03940c.A08);
            } else if (experienceType == 2) {
                this.A05 = EnumC0855Jj.A03;
                C1203Xc c1203Xc2 = this.A04;
                String[] strArr3 = A0F;
                if (strArr3[7].charAt(31) != strArr3[6].charAt(31)) {
                    String[] strArr4 = A0F;
                    strArr4[7] = "FFkeuuVk1meHqgTyMiNT7tgr8739x7mc";
                    strArr4[6] = "JwuXN3bqyC9CcnquHiHDyzq7R0rb3kLZ";
                    c1203Xc2.A0E().AFA(EnumC03940c.A09);
                } else {
                    String[] strArr5 = A0F;
                    strArr5[7] = "QuYSy7nqZhyT9avsyztjWhd8F7hW1wjU";
                    strArr5[6] = "5b6UXiMlNaCol2aZqv4zpvCfEMtgCuxD";
                    c1203Xc2.A0E().AFA(EnumC03940c.A09);
                }
            } else if (experienceType == 3) {
                this.A05 = EnumC0855Jj.A0C;
                C0R A0E2 = this.A04.A0E();
                if (A0F[3].charAt(29) != 105) {
                    A0F[3] = "i1vVIMuEE2CogviWDEosGc55NgD83ibP";
                    A0E2.AFA(EnumC03940c.A03);
                } else {
                    A0F[2] = "e7mQJdX4ST7JevLzoIctPRomcGPYY6Su";
                    A0E2.AFA(EnumC03940c.A03);
                }
            }
        }
        if (IK.A0q(c1203Xc)) {
            if (this.A03.A0Z()) {
                C1266Zq c1266Zq = (C1266Zq) this.A03;
                for (int i = c1266Zq.A0c() - 1; i >= 0; i--) {
                    C0743Eu A0e = c1266Zq.A0e(i);
                    if (C04010j.A06(this.A04, C04010j.A01(c1203Xc, A0e.A0N(), A0e.A0m()), c1203Xc.A09())) {
                        this.A04.A0E().A44();
                        c1266Zq.A0g(i);
                        return;
                    }
                }
                if (c1266Zq.A0c() == 0) {
                    this.A01.ACT(this, AdError.NO_FILL);
                    return;
                }
            } else if (C04010j.A06(this.A04, C04010j.A01(c1203Xc, c04331q.A03(), ((AbstractC1268Zs) this.A03).A0m()), c1203Xc.A09())) {
                this.A04.A0E().A44();
                this.A01.ACT(this, AdError.NO_FILL);
                return;
            }
        }
        this.A02 = new AnonymousClass15(this.A0B, this, anonymousClass14);
        A06();
        A0C(z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04040n
    @Nullable
    public final String A6B() {
        return this.A08;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04040n
    public final boolean AFX() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04040n
    public final void onDestroy() {
        A07();
    }
}
