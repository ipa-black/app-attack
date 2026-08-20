package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Yc  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1229Yc extends C4J {
    public C1229Yc(C4Z c4z) {
        super(c4z, null);
    }

    @Override // com.facebook.ads.redexgen.X.C4J
    public final int A06() {
        return this.A02.A0h();
    }

    @Override // com.facebook.ads.redexgen.X.C4J
    public final int A07() {
        return this.A02.A0h() - this.A02.A0f();
    }

    @Override // com.facebook.ads.redexgen.X.C4J
    public final int A08() {
        return this.A02.A0f();
    }

    @Override // com.facebook.ads.redexgen.X.C4J
    public final int A09() {
        return this.A02.A0i();
    }

    @Override // com.facebook.ads.redexgen.X.C4J
    public final int A0A() {
        return this.A02.A0e();
    }

    @Override // com.facebook.ads.redexgen.X.C4J
    public final int A0B() {
        return (this.A02.A0h() - this.A02.A0e()) - this.A02.A0f();
    }

    @Override // com.facebook.ads.redexgen.X.C4J
    public final int A0C(View view) {
        return this.A02.A0n(view) + ((C04934a) view.getLayoutParams()).rightMargin;
    }

    @Override // com.facebook.ads.redexgen.X.C4J
    public final int A0D(View view) {
        C04934a c04934a = (C04934a) view.getLayoutParams();
        return this.A02.A0m(view) + c04934a.leftMargin + c04934a.rightMargin;
    }

    @Override // com.facebook.ads.redexgen.X.C4J
    public final int A0E(View view) {
        C04934a c04934a = (C04934a) view.getLayoutParams();
        return this.A02.A0l(view) + c04934a.topMargin + c04934a.bottomMargin;
    }

    @Override // com.facebook.ads.redexgen.X.C4J
    public final int A0F(View view) {
        return this.A02.A0k(view) - ((C04934a) view.getLayoutParams()).leftMargin;
    }

    @Override // com.facebook.ads.redexgen.X.C4J
    public final int A0G(View view) {
        this.A02.A1E(view, true, this.A01);
        return this.A01.right;
    }

    @Override // com.facebook.ads.redexgen.X.C4J
    public final int A0H(View view) {
        this.A02.A1E(view, true, this.A01);
        return this.A01.left;
    }

    @Override // com.facebook.ads.redexgen.X.C4J
    public final void A0J(int i) {
        this.A02.A0z(i);
    }
}
