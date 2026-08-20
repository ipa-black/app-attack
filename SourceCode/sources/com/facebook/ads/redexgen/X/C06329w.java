package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.ArrayList;
/* renamed from: com.facebook.ads.redexgen.X.9w  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C06329w {
    public static String[] A06 = {"rmgpPCWB7BYHQ3azE8yCiRChgWLX4K1O", "ESYL8WQp59BjyyK9DI9xkUBJ1yOk4QLd", "YweXfGig2PVNilG2mJZlv3ovQAOkP8UY", "CAftEyLXQvcAYYqOnK17yfwScyM6Y9GQ", "5ZUx", "CHSAxwc6W9B6bhcUywJKjVUar2kzl0Sb", "G9dVYOs473", "8VVZpCzafohaQpJb3SOOvVZNRfYg5osa"};
    public C06339x A01;
    public C06339x A02;
    public boolean A03;
    public final ArrayList<C06339x> A05 = new ArrayList<>();
    public final C06289s A04 = new C06289s();
    public AbstractC06309u A00 = AbstractC06309u.A01;

    private C06339x A00(C06339x c06339x, AbstractC06309u abstractC06309u) {
        if (abstractC06309u.A0E() || this.A00.A0E()) {
            return c06339x;
        }
        AbstractC06309u abstractC06309u2 = this.A00;
        int i = c06339x.A01.A02;
        if (A06[5].charAt(2) != 'm') {
            A06[3] = "6Z7kXvoTE0GMRlV8X7ahHWF28Ir1JA8U";
            Object uid = abstractC06309u2.A0A(i, this.A04, true).A03;
            int newPeriodIndex = abstractC06309u.A04(uid);
            if (newPeriodIndex == -1) {
                return c06339x;
            }
            int newWindowIndex = abstractC06309u.A09(newPeriodIndex, this.A04).A00;
            return new C06339x(newWindowIndex, c06339x.A01.A00(newPeriodIndex));
        }
        throw new RuntimeException();
    }

    private void A02() {
        if (!this.A05.isEmpty()) {
            this.A01 = this.A05.get(0);
        }
    }

    @Nullable
    public final C06339x A03() {
        return this.A01;
    }

    @Nullable
    public final C06339x A04() {
        if (this.A05.isEmpty()) {
            return null;
        }
        ArrayList<C06339x> arrayList = this.A05;
        int size = arrayList.size() - 1;
        if (A06[3].charAt(28) != 'b') {
            String[] strArr = A06;
            strArr[6] = "IuVtQJyFuB";
            strArr[7] = "VEjGs0KHAo6Qkjlg0Fq6YAYYmbb9RMII";
            return arrayList.get(size);
        }
        throw new RuntimeException();
    }

    @Nullable
    public final C06339x A05() {
        if (this.A05.isEmpty() || this.A00.A0E() || this.A03) {
            return null;
        }
        return this.A05.get(0);
    }

    @Nullable
    public final C06339x A06() {
        return this.A02;
    }

    @Nullable
    public final ER A07(int i) {
        ER er = null;
        AbstractC06309u abstractC06309u = this.A00;
        if (abstractC06309u != null) {
            int A00 = abstractC06309u.A00();
            for (int periodIndex = 0; periodIndex < this.A05.size(); periodIndex++) {
                C06339x mediaPeriod = this.A05.get(periodIndex);
                ER match = mediaPeriod.A01;
                int i2 = match.A02;
                if (i2 < A00 && this.A00.A09(i2, this.A04).A00 == i) {
                    if (er != null) {
                        return null;
                    }
                    er = mediaPeriod.A01;
                }
            }
        }
        return er;
    }

    public final void A08() {
        this.A03 = false;
        A02();
    }

    public final void A09() {
        this.A03 = true;
    }

    public final void A0A(int i) {
        A02();
    }

    public final void A0B(int i, ER er) {
        this.A05.add(new C06339x(i, er));
        if (this.A05.size() == 1 && !this.A00.A0E()) {
            A02();
        }
    }

    public final void A0C(int i, ER er) {
        C06339x mediaPeriod;
        C06339x c06339x = new C06339x(i, er);
        this.A05.remove(c06339x);
        C06339x mediaPeriod2 = this.A02;
        if (c06339x.equals(mediaPeriod2)) {
            if (this.A05.isEmpty()) {
                mediaPeriod = null;
            } else {
                C06339x mediaPeriod3 = this.A05.get(0);
                mediaPeriod = mediaPeriod3;
            }
            this.A02 = mediaPeriod;
        }
    }

    public final void A0D(int i, ER er) {
        this.A02 = new C06339x(i, er);
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0007 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A0E(com.facebook.ads.redexgen.X.AbstractC06309u r4) {
        /*
            r3 = this;
            r2 = 0
        L1:
            java.util.ArrayList<com.facebook.ads.redexgen.X.9x> r0 = r3.A05
            int r0 = r0.size()
            if (r2 >= r0) goto L1b
            java.util.ArrayList<com.facebook.ads.redexgen.X.9x> r1 = r3.A05
            java.lang.Object r0 = r1.get(r2)
            com.facebook.ads.redexgen.X.9x r0 = (com.facebook.ads.redexgen.X.C06339x) r0
            com.facebook.ads.redexgen.X.9x r0 = r3.A00(r0, r4)
            r1.set(r2, r0)
            int r2 = r2 + 1
            goto L1
        L1b:
            com.facebook.ads.redexgen.X.9x r0 = r3.A02
            if (r0 == 0) goto L25
            com.facebook.ads.redexgen.X.9x r0 = r3.A00(r0, r4)
            r3.A02 = r0
        L25:
            r3.A00 = r4
            r3.A02()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C06329w.A0E(com.facebook.ads.redexgen.X.9u):void");
    }

    public final boolean A0F() {
        return this.A03;
    }
}
