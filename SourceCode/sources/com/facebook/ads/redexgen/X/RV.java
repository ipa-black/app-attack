package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import java.util.List;
/* loaded from: assets/audience_network.dex */
public final class RV extends C4N<RM> {
    public static String[] A0H = {"U2dBX20JaeRgS8KUkn4U", "4wbYdEjd6EY1wYpAHERmBQ5UbLFk3rIE", "poCzv8x7tLJqIV5ZIWq", "9iyDRDGf0xWQ70I4mtfqA0IQycZfZ47C", "v2glKkwlOEfR0MfsI3TqmdNecXONmhZ3", "6XdF3RdtkhprEZiVEVCq65KOMzsBziM7", "2OiOSmaAlP7OTnmHwLOjTjXlL7jeDPuL", "nkMLdycTxYcJ5galJfvG8bjM9rVBse8i"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public AbstractC0902Li A04;
    @Nullable
    public InterfaceC0903Lj A05;
    public String A06;
    public List<C0984On> A07;
    public boolean A08;
    public final SparseBooleanArray A09 = new SparseBooleanArray();
    public final AbstractC1268Zs A0A;
    public final C6M A0B;
    public final C1203Xc A0C;
    public final InterfaceC0821Ia A0D;
    public final LD A0E;
    public final C1052Rd A0F;
    public final QA A0G;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public RV(C1203Xc c1203Xc, List<C0984On> list, AbstractC1268Zs abstractC1268Zs, InterfaceC0821Ia interfaceC0821Ia, C6M c6m, QA qa, LD ld, InterfaceC0903Lj interfaceC0903Lj, String str, int i, int i2, int i3, int i4, C1052Rd c1052Rd, AbstractC0902Li abstractC0902Li) {
        this.A0C = c1203Xc;
        this.A0D = interfaceC0821Ia;
        this.A0B = c6m;
        this.A0G = qa;
        this.A0E = ld;
        this.A05 = interfaceC0903Lj;
        this.A0A = abstractC1268Zs;
        this.A07 = list;
        this.A00 = i;
        this.A03 = i4;
        this.A06 = str;
        this.A01 = i3;
        this.A02 = i2;
        this.A0F = c1052Rd;
        this.A04 = abstractC0902Li;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4N
    /* renamed from: A01 */
    public final RM A0C(ViewGroup viewGroup, int i) {
        return new RM(O8.A00(new C0957Nl(this.A0C, this.A0D, this.A05, this.A0A, null, this.A0G, this.A0E).A0H(this.A04).A0J(), this.A03, this.A06, this.A0F), this.A09, this.A0G, this.A00, this.A01, this.A02, this.A07.size(), this.A0C);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4N
    /* renamed from: A02 */
    public final void A0E(RM rm, int i) {
        rm.A0l(this.A07.get(i), this.A0D, this.A0B, this.A0E, this.A06);
        if (!this.A08 && i == 0) {
            rm.AEn();
            String[] strArr = A0H;
            if (strArr[3].charAt(29) == strArr[6].charAt(29)) {
                throw new RuntimeException();
            }
            A0H[1] = "f5MkbcX2dFxcVTBDK6f4VKhLC7wzzoeI";
            this.A08 = true;
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4N
    public final int A0D() {
        return this.A07.size();
    }
}
