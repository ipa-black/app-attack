package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Ij  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnAttachStateChangeListenerC0830Ij implements View.OnAttachStateChangeListener {
    public final /* synthetic */ EnumC0828Ih A00;
    public final /* synthetic */ C0829Ii A01;

    public View$OnAttachStateChangeListenerC0830Ij(C0829Ii c0829Ii, EnumC0828Ih enumC0828Ih) {
        this.A01 = c0829Ii;
        this.A00 = enumC0828Ih;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.A01.A04(this.A00, null);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
