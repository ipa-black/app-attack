package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Rc  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1051Rc extends C4N<RW> {
    public int A00;
    public int A01;
    public int A02;
    public AbstractC0902Li A03;
    @Nullable
    public InterfaceC0903Lj A04;
    public String A05;
    public List<C0984On> A06;
    public final SparseBooleanArray A07 = new SparseBooleanArray();
    public final AbstractC1268Zs A08;
    public final C6M A09;
    public final C1203Xc A0A;
    public final InterfaceC0821Ia A0B;
    public final LD A0C;
    public final C1052Rd A0D;
    public final JW A0E;
    public final QA A0F;

    public C1051Rc(C1203Xc c1203Xc, List<C0984On> list, AbstractC1268Zs abstractC1268Zs, InterfaceC0821Ia interfaceC0821Ia, C6M c6m, QA qa, LD ld, InterfaceC0903Lj interfaceC0903Lj, String str, C1052Rd c1052Rd, JW jw, AbstractC0902Li abstractC0902Li) {
        this.A0A = c1203Xc;
        this.A0B = interfaceC0821Ia;
        this.A09 = c6m;
        this.A0F = qa;
        this.A0C = ld;
        this.A04 = interfaceC0903Lj;
        this.A08 = abstractC1268Zs;
        this.A06 = list;
        this.A05 = str;
        this.A0D = c1052Rd;
        this.A0E = jw;
        this.A03 = abstractC0902Li;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4N
    @Nullable
    /* renamed from: A01 */
    public final RW A0C(ViewGroup viewGroup, int i) {
        InterfaceC0903Lj interfaceC0903Lj = this.A04;
        if (interfaceC0903Lj == null || this.A00 == 0) {
            return null;
        }
        return new RW(NJ.A01(new C0957Nl(this.A0A, this.A0B, interfaceC0903Lj, this.A08, null, this.A0F, this.A0C).A0I(this.A0E).A0H(this.A03).A0J(), this.A05, this.A0D), this.A07, this.A0F, this.A06.size(), this.A0A);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4N
    /* renamed from: A02 */
    public final void A0E(RW rw, int i) {
        rw.A0l(this.A06.get(i), this.A0B, this.A09, this.A0C, this.A05, this.A00, this.A02, this.A01);
    }

    @Override // com.facebook.ads.redexgen.X.C4N
    public final int A0D() {
        return this.A06.size();
    }

    public final void A0F(int i, int i2, int i3) {
        this.A00 = i;
        this.A02 = i2;
        this.A01 = i3;
    }
}
