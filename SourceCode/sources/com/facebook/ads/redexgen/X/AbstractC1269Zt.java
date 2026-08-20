package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.facebook.proguard.annotations.DoNotStrip;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Zt  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1269Zt extends C4N<TF> {
    public static final int A05 = (int) (Kk.A02 * 4.0f);
    @Nullable
    public AnonymousClass17 A00;
    public final List<C1115Tp> A01;
    public final int A02;
    public final C1203Xc A03;
    @DoNotStrip
    public final Q9 A04 = new C1271Zv(this);

    public AbstractC1269Zt(AnonymousClass19 anonymousClass19, List<C1115Tp> list, C1203Xc c1203Xc) {
        this.A03 = c1203Xc;
        this.A02 = anonymousClass19.getChildSpacing();
        this.A01 = list;
    }

    private ViewGroup.MarginLayoutParams A02(int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        int i2 = this.A02;
        if (i == 0) {
            i2 *= 2;
        }
        marginLayoutParams.setMargins(i2, 0, i >= this.A01.size() + (-1) ? this.A02 * 2 : this.A02, 0);
        return marginLayoutParams;
    }

    @Override // com.facebook.ads.redexgen.X.C4N
    public final int A0D() {
        return this.A01.size();
    }

    public final void A0F(ImageView imageView, int i) {
        C1115Tp c1115Tp = this.A01.get(i);
        C0845Iy adCoverImage = c1115Tp.getAdCoverImage();
        if (adCoverImage != null) {
            AsyncTaskC1080Sf A04 = new AsyncTaskC1080Sf(imageView, this.A03).A04();
            A04.A06(new C1270Zu(this, i, c1115Tp));
            A04.A07(adCoverImage.getUrl());
        }
    }

    public final void A0G(AnonymousClass17 anonymousClass17) {
        this.A00 = anonymousClass17;
    }

    @Override // com.facebook.ads.redexgen.X.C4N
    /* renamed from: A0H */
    public void A0E(TF tf, int i) {
        tf.A0l().setLayoutParams(A02(i));
    }
}
