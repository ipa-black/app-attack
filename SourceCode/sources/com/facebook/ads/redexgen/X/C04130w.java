package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.0w  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C04130w extends C2M implements InterfaceC0843Iw {
    public C06179g A00;
    @Nullable
    public List<C0984On> A01;

    public C04130w(C1203Xc c1203Xc) {
        super(c1203Xc);
        this.A00 = new C06179g(this, 1, null, null, null);
    }

    public final void A23(QA qa) {
        C06179g c06179g = this.A00;
        if (c06179g != null) {
            c06179g.A0d(qa);
        }
    }

    public C06179g getCarouselCardBehaviorHelper() {
        return this.A00;
    }

    public void setCardsInfo(ArrayList arrayList) {
        this.A01 = arrayList;
        this.A00.A0e(this.A01);
    }
}
