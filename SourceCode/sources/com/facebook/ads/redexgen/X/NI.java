package com.facebook.ads.redexgen.X;

import android.content.ActivityNotFoundException;
import android.util.Log;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import java.util.Arrays;
import java.util.Map;
/* loaded from: assets/audience_network.dex */
public final class NI {
    public static byte[] A09;
    @Nullable
    public NH A00;
    public boolean A01;
    public boolean A02;
    public final C1203Xc A03;
    public final InterfaceC0821Ia A04;
    public final LD A05;
    public final InterfaceC0903Lj A06;
    @Nullable
    public final QA A07;
    public final String A08;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 104);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A09 = new byte[]{31, 8, 29, 30, 41, 40, 40, 51, 50, 31, 48, 53, 63, 55, 16, 53, 47, 40, 57, 50, 57, 46, 114, 69, 69, 88, 69, 23, 82, 79, 82, 84, 66, 67, 94, 89, 80, 23, 86, 84, 67, 94, 88, 89, 73, 126, 126, 99, 126, 44, 123, 100, 101, 96, 105, 44, 99, 124, 105, 98, 101, 98, 107, 44};
    }

    public NI(C1203Xc c1203Xc, String str, @Nullable QA qa, LD ld, InterfaceC0821Ia interfaceC0821Ia) {
        this.A01 = true;
        this.A03 = c1203Xc;
        this.A08 = str;
        this.A07 = qa;
        this.A05 = ld;
        this.A04 = interfaceC0821Ia;
        this.A06 = new C1076Sb(this);
    }

    public NI(C1203Xc c1203Xc, String str, @Nullable QA qa, LD ld, InterfaceC0821Ia interfaceC0821Ia, InterfaceC0903Lj interfaceC0903Lj) {
        this.A01 = true;
        this.A03 = c1203Xc;
        this.A08 = str;
        this.A07 = qa;
        this.A05 = ld;
        this.A04 = interfaceC0821Ia;
        this.A06 = interfaceC0903Lj;
    }

    public static void A03(C1203Xc c1203Xc, @Nullable QA qa, LD ld, InterfaceC0821Ia interfaceC0821Ia, C1M c1m, String str) {
        AbstractC03970f A01 = C03980g.A01(c1203Xc, interfaceC0821Ia, str, KT.A00(c1m.A05()), new NA().A03(qa).A02(ld).A05(), false, false);
        if (A01 != null) {
            A01.A0A();
        }
    }

    private void A05(String str, String str2, Map<String, String> extraData) {
        this.A04.A9a(str, extraData);
        Kj.A00(new NF(this, extraData, str, str2), new NG(this, str, extraData), ActivityUtils.A00());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06(String str, String str2, Map<String, String> map) {
        String A01 = A01(0, 22, 52);
        try {
            AbstractC03970f A012 = C03980g.A01(this.A03, this.A04, str, KT.A00(str2), new NA(map).A03(this.A07).A02(this.A05).A05(), this.A01, this.A02);
            if (A012 != null) {
                A012.A0C();
            }
            if (this.A00 != null) {
                this.A00.AAe();
            }
            this.A06.A3t(this.A08);
        } catch (ActivityNotFoundException e2) {
            Log.e(A01, A01(44, 20, 100) + str2, e2);
        } catch (Exception e3) {
            Log.e(A01, A01(22, 22, 95), e3);
        }
    }

    public final void A07(NH nh) {
        this.A00 = nh;
    }

    public final void A08(String str, String str2, Map<String, String> extraData) {
        new C0829Ii(str, this.A04).A04(EnumC0828Ih.A0J, null);
        if (this.A05.A09(this.A03)) {
            this.A04.A98(str, extraData);
        } else if (IK.A1B(this.A03)) {
            A05(str, str2, extraData);
        } else {
            A06(str, str2, extraData);
        }
    }

    public final void A09(boolean z) {
        this.A02 = z;
    }

    public final void A0A(boolean z) {
        this.A01 = z;
    }
}
