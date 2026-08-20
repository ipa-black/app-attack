package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.Nullable;
/* renamed from: com.facebook.ads.redexgen.X.Xy  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1225Xy implements C5Y {
    public final /* synthetic */ ImageView A00;
    public final /* synthetic */ C05185a A01;
    public final /* synthetic */ C1115Tp A02;

    public C1225Xy(C05185a c05185a, ImageView imageView, C1115Tp c1115Tp) {
        this.A01 = c05185a;
        this.A00 = imageView;
        this.A02 = c1115Tp;
    }

    @Override // com.facebook.ads.redexgen.X.C5Y
    public final void ABB(@Nullable Drawable drawable) {
        C1115Tp.A0e(drawable, this.A00);
        this.A02.A1J(drawable);
    }
}
