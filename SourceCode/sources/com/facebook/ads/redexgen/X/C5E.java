package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.5E  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public class C5E implements View.OnLongClickListener {
    public final /* synthetic */ C5F A00;

    public C5E(C5F c5f) {
        this.A00 = c5f;
    }

    public /* synthetic */ C5E(C5F c5f, C5B c5b) {
        this(c5f);
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        if (C5F.A02(this.A00) != null && C5F.A00(this.A00) != null) {
            C5F.A02(this.A00).setBounds(0, 0, C5F.A00(this.A00).getWidth(), C5F.A00(this.A00).getHeight());
            C5F.A02(this.A00).A0D(!C5F.A02(this.A00).A0E());
        }
        return true;
    }
}
