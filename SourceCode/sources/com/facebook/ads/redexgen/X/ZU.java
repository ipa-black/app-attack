package com.facebook.ads.redexgen.X;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.altbeacon.beacon.service.scanner.CycledLeScanner;
/* loaded from: assets/audience_network.dex */
public final class ZU implements Jc {
    public static byte[] A0E;
    public static String[] A0F = {"Um", "5O6Pi5UhekEiJBNtL2", "ByBiFstlzS", "VNZICTTmM6bBZ", "I3ykA2cHAONkN", "xnUs6VMzToWHuFoC", "Qkjm3fg24P6DD7pmZ7L4neN1zLjqdukp", "LFB8Dcv49A6aPeUL"};
    @Nullable
    public InterfaceC04351s A00;
    public C8A A01;
    @Nullable
    public String A02;
    public boolean A03;
    public final int A04;
    public final Handler A05;
    @Nullable
    public final AdSize A06;
    public final C04090s A07;
    public final C1203Xc A08;
    public final InterfaceC0821Ia A09;
    public final JF A0A;
    public final C0849Jd A0B;
    public final Runnable A0C;
    public final String A0D;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A0F[2].length() != 10) {
                throw new RuntimeException();
            }
            A0F[1] = "uoxYJqIRleds8fPMMv";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 87);
            i4++;
        }
    }

    public static void A05() {
        byte[] bArr = {SignedBytes.MAX_POWER_OF_TWO, 65, -14, 66, 62, 51, 53, 55, 63, 55, SignedBytes.MAX_POWER_OF_TWO, 70, -14, 59, SignedBytes.MAX_POWER_OF_TWO, -14, 68, 55, 69, 66, 65, SignedBytes.MAX_POWER_OF_TWO, 69, 55};
        if (A0F[0].length() != 2) {
            throw new RuntimeException();
        }
        A0F[1] = "dKV76OJFyRmVPWeRzZ";
        A0E = bArr;
    }

    static {
        A05();
        LN.A02();
    }

    public ZU(C1203Xc c1203Xc, String str, JF jf, @Nullable AdSize adSize, int i) {
        this.A08 = c1203Xc;
        this.A0D = str;
        this.A0A = jf;
        this.A06 = adSize;
        this.A04 = i;
        this.A0B = new C0849Jd(this.A08);
        this.A0B.A0P(this);
        this.A07 = new C04090s();
        this.A03 = true;
        this.A05 = new Handler();
        this.A0C = new C0731Ei(this);
        this.A09 = c1203Xc.A09();
        DynamicLoaderFactory.makeLoader(this.A08).getInitApi().onAdLoadInvoked(this.A08);
    }

    private List<C1283a7> A04() {
        C8A c8a = this.A01;
        ArrayList arrayList = new ArrayList(c8a.A02());
        for (AnonymousClass88 A04 = c8a.A04(); A04 != null; A04 = c8a.A04()) {
            InterfaceC04040n A00 = this.A07.A00(this.A08, AdPlacementType.NATIVE);
            if (A00 != null && A00.A7L() == AdPlacementType.NATIVE) {
                C1283a7 nativeAdapter = (C1283a7) A00;
                nativeAdapter.A0L(this.A08, new C0732Ej(this, arrayList, nativeAdapter), this.A09, new C04331q(A04.A04(), c8a.A05(), this.A0D, c8a.A05().A0C()), C1115Tp.A0K());
            }
        }
        return arrayList;
    }

    public final void A06() {
        this.A03 = false;
        this.A05.removeCallbacks(this.A0C);
    }

    public final void A07() {
        try {
            JK jk = new JK(this.A08, null, null, null);
            C1203Xc c1203Xc = this.A08;
            String str = this.A0D;
            AdSize adSize = this.A06;
            this.A0B.A0O(new C0847Ja(c1203Xc, str, adSize != null ? new C0891Kx(adSize.getWidth(), this.A06.getHeight()) : null, this.A0A, null, this.A04, AdSettings.isTestMode(this.A08), AdSettings.isMixedAudience(), jk, L3.A01(IK.A0I(this.A08)), this.A02, null));
        } catch (JB e2) {
            AAv(JA.A02(e2));
        }
    }

    public final void A08(InterfaceC04351s interfaceC04351s) {
        this.A00 = interfaceC04351s;
    }

    public final void A09(String str) {
        this.A02 = str;
    }

    public final boolean A0A() {
        C8A c8a = this.A01;
        return c8a == null || c8a.A0C();
    }

    @Override // com.facebook.ads.redexgen.X.Jc
    public final void AAv(JA ja) {
        if (this.A03) {
            this.A05.postDelayed(this.A0C, CycledLeScanner.ANDROID_N_MAX_SCAN_DURATION_MILLIS);
        }
        InterfaceC04351s interfaceC04351s = this.A00;
        if (A0F[2].length() != 10) {
            throw new RuntimeException();
        }
        A0F[2] = "yGn7NPCZVX";
        if (interfaceC04351s != null) {
            interfaceC04351s.AAv(ja);
        }
    }

    @Override // com.facebook.ads.redexgen.X.Jc
    public final void ACh(C1103Tc c1103Tc) {
        C8A A00 = c1103Tc.A00();
        if (A00 != null) {
            if (this.A03) {
                long A0A = A00.A05().A0A();
                if (A0A == 0) {
                    A0A = CycledLeScanner.ANDROID_N_MAX_SCAN_DURATION_MILLIS;
                }
                this.A05.postDelayed(this.A0C, A0A);
            }
            this.A01 = A00;
            List<C1283a7> A04 = A04();
            if (this.A00 != null) {
                if (A04.isEmpty()) {
                    this.A00.AAv(JA.A01(AdErrorType.NO_FILL, A03(0, 0, 68)));
                    return;
                } else {
                    this.A00.ABq(A04);
                    return;
                }
            }
            return;
        }
        throw new IllegalStateException(A03(0, 24, 123));
    }
}
