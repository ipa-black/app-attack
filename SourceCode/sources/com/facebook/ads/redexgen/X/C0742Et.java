package com.facebook.ads.redexgen.X;

import android.view.View;
import androidx.annotation.Nullable;
/* renamed from: com.facebook.ads.redexgen.X.Et  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0742Et extends AbstractC1250Za {
    @Nullable
    public View A00;
    public C0718Dv A01;

    public C0742Et(C0718Dv c0718Dv, C04321p c04321p) {
        super(c0718Dv, c04321p);
        this.A01 = c0718Dv;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1250Za
    public final void A0L() {
        if (this.A00 != null) {
            this.A01.A0E().A3o();
            this.A06.A0E(this.A00);
            return;
        }
        this.A01.A0E().A3p();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1250Za
    public final void A0N(InterfaceC04040n interfaceC04040n, C8A c8a, AnonymousClass88 anonymousClass88, C04331q c04331q) {
        this.A01.A0E().A3i();
        C1286aA c1286aA = (C1286aA) interfaceC04040n;
        C1253Zd c1253Zd = new C1253Zd(this, c04331q, c1286aA);
        A0E().postDelayed(c1253Zd, c8a.A05().A05());
        c1286aA.A0I(this.A01, this.A08, this.A07.A07, new C1252Zc(this, c1253Zd), c04331q);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1250Za
    public final void A0Q(String str) {
        this.A01.A0E().A3n(str != null);
        super.A0Q(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1250Za
    public final void A0T(boolean z) {
        super.A0T(z);
        this.A00 = null;
    }
}
