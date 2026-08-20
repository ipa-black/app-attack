package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* renamed from: com.facebook.ads.redexgen.X.Hn  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0810Hn {
    public static String[] A07 = {"5DRquCQGg5fv0P6nja7IsOodPXBGhUeG", "CLJKgVN4XJask5diLy7MGSBxba0Pch5a", "wHftqcE0jDwIdOqBDBC3mNx0B5SBQznZ", "ol9v552kFRhJ1T6A32CtEuz", "A1CuUzQu9jwyUqSqJ17msfwDUTn6GREa", "TbNgrGyLzvQfDvkF0WCoqwQu2K", "lR0XC8VxWttqZJTwOmQs4gh4fjIE6f", "2mBuumTUpjmiSXNoBcdi8fBRoWPOanRf"};
    public static final Comparator<C0809Hm> A08 = new C0807Hk();
    public static final Comparator<C0809Hm> A09 = new C0808Hl();
    public int A01;
    public int A02;
    public int A03;
    public final int A04;
    public final C0809Hm[] A06 = new C0809Hm[5];
    public final ArrayList<C0809Hm> A05 = new ArrayList<>();
    public int A00 = -1;

    public C0810Hn(int i) {
        this.A04 = i;
    }

    private void A00() {
        if (this.A00 != 1) {
            Collections.sort(this.A05, A08);
            this.A00 = 1;
        }
    }

    private void A01() {
        if (this.A00 != 0) {
            Collections.sort(this.A05, A09);
            this.A00 = 0;
        }
    }

    public final float A02(float f2) {
        A01();
        float f3 = this.A03 * f2;
        int i = 0;
        for (int i2 = 0; i2 < this.A05.size(); i2++) {
            C0809Hm c0809Hm = this.A05.get(i2);
            i += c0809Hm.A02;
            float desiredWeight = i;
            if (desiredWeight >= f3) {
                float desiredWeight2 = c0809Hm.A00;
                return desiredWeight2;
            }
        }
        if (this.A05.isEmpty()) {
            return Float.NaN;
        }
        ArrayList<C0809Hm> arrayList = this.A05;
        int size = arrayList.size();
        int accumulatedWeight = A07[3].length();
        if (accumulatedWeight != 12) {
            A07[3] = "XkLaJBoD11zWycQ";
            float desiredWeight3 = arrayList.get(size - 1).A00;
            return desiredWeight3;
        }
        throw new RuntimeException();
    }

    public final void A03(int i, float f2) {
        C0809Hm oldestSample;
        A00();
        int i2 = this.A02;
        if (i2 > 0) {
            C0809Hm[] c0809HmArr = this.A06;
            int i3 = i2 - 1;
            this.A02 = i3;
            oldestSample = c0809HmArr[i3];
        } else {
            oldestSample = new C0809Hm(null);
        }
        int i4 = this.A01;
        this.A01 = i4 + 1;
        oldestSample.A01 = i4;
        oldestSample.A02 = i;
        oldestSample.A00 = f2;
        this.A05.add(oldestSample);
        this.A03 += i;
        while (true) {
            int i5 = this.A03;
            int i6 = this.A04;
            if (i5 > i6) {
                int excessWeight = i5 - i6;
                C0809Hm c0809Hm = this.A05.get(0);
                if (c0809Hm.A02 <= excessWeight) {
                    int i7 = this.A03;
                    int i8 = c0809Hm.A02;
                    if (A07[5].length() != 26) {
                        throw new RuntimeException();
                    }
                    A07[6] = "uvvU8EqEwFGMOcNu2z1EziqDegtCkn";
                    this.A03 = i7 - i8;
                    this.A05.remove(0);
                    int i9 = this.A02;
                    if (i9 < 5) {
                        C0809Hm[] c0809HmArr2 = this.A06;
                        this.A02 = i9 + 1;
                        c0809HmArr2[i9] = c0809Hm;
                    }
                } else {
                    c0809Hm.A02 -= excessWeight;
                    this.A03 -= excessWeight;
                }
            } else {
                return;
            }
        }
    }
}
