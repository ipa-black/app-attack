package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
/* renamed from: com.facebook.ads.redexgen.X.Vb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1153Vb implements InterfaceC0686Cj {
    public static String[] A02 = {"KDcVXuz53RpoF9UEOZ96l2VZuhVX9ip0", "CKRJ1Pqx0SMvAzHTc14bPVY1Im6KLWKe", "CZRg2SIX1VWZgfyXTOdEl1", "FcRR7mDk42dnDG0ym1pZJ2", "QPo", "3iSkzhZlTwG2jcdx249ci8whKDsXKTKF", "nuc6nRuUqT3GqwIih", "HhkYvD09GQfRAuSaGWngxJEfFHmtitdD"};
    public final C0798Hb A00 = new C0798Hb(new byte[4]);
    public final /* synthetic */ VZ A01;

    public C1153Vb(VZ vz) {
        this.A01 = vz;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0686Cj
    public final void A4B(C0799Hc c0799Hc) {
        int i;
        SparseArray sparseArray;
        SparseArray sparseArray2;
        int tableId = c0799Hc.A0E();
        if (tableId != 0) {
            return;
        }
        c0799Hc.A0Z(7);
        int A04 = c0799Hc.A04() / 4;
        for (int programNumber = 0; programNumber < A04; programNumber++) {
            c0799Hc.A0a(this.A00, 4);
            int A042 = this.A00.A04(16);
            this.A00.A08(3);
            if (A042 == 0) {
                this.A00.A08(13);
            } else {
                int i2 = this.A00.A04(13);
                sparseArray2 = this.A01.A06;
                sparseArray2.put(i2, new C1156Ve(new C1152Va(this.A01, i2)));
                VZ.A01(this.A01);
            }
        }
        i = this.A01.A05;
        int programCount = A02[4].length();
        if (programCount == 11) {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[3] = "4awIAPS5zJKVkKN48BLjJX";
        strArr[2] = "yyhTqQNSKamLuuIUjTGErW";
        if (i != 2) {
            sparseArray = this.A01.A06;
            sparseArray.remove(0);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0686Cj
    public final void A8X(C0811Ho c0811Ho, BX bx, C0691Cp c0691Cp) {
    }
}
