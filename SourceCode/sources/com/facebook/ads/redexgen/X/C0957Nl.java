package com.facebook.ads.redexgen.X;

import android.view.View;
import androidx.annotation.Nullable;
/* renamed from: com.facebook.ads.redexgen.X.Nl */
/* loaded from: assets/audience_network.dex */
public class C0957Nl {
    @Nullable
    public View A02;
    @Nullable
    public C1115Tp A03;
    @Nullable
    public AbstractC0902Li A04;
    @Nullable
    public JW A05;
    @Nullable
    public final View A06;
    public final AbstractC1268Zs A07;
    public final C1203Xc A08;
    public final InterfaceC0821Ia A09;
    public final LD A0A;
    public final InterfaceC0903Lj A0B;
    public final QA A0C;
    public int A01 = 0;
    public int A00 = 1;

    public C0957Nl(C1203Xc c1203Xc, InterfaceC0821Ia interfaceC0821Ia, InterfaceC0903Lj interfaceC0903Lj, AbstractC1268Zs abstractC1268Zs, @Nullable View view, QA qa, LD ld) {
        this.A08 = c1203Xc;
        this.A09 = interfaceC0821Ia;
        this.A0B = interfaceC0903Lj;
        this.A07 = abstractC1268Zs;
        this.A06 = view;
        this.A0C = qa;
        this.A0A = ld;
    }

    public final C0957Nl A0D(int i) {
        this.A00 = i;
        return this;
    }

    public final C0957Nl A0E(int i) {
        this.A01 = i;
        return this;
    }

    public final C0957Nl A0F(View view) {
        this.A02 = view;
        return this;
    }

    public final C0957Nl A0G(C1115Tp c1115Tp) {
        this.A03 = c1115Tp;
        return this;
    }

    public final C0957Nl A0H(AbstractC0902Li abstractC0902Li) {
        this.A04 = abstractC0902Li;
        return this;
    }

    public final C0957Nl A0I(JW jw) {
        this.A05 = jw;
        return this;
    }

    public final C0958Nm A0J() {
        return new C0958Nm(this);
    }
}
