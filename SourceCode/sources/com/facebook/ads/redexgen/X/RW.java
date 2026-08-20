package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.facebook.proguard.annotations.DoNotStrip;
import java.lang.ref.WeakReference;
/* loaded from: assets/audience_network.dex */
public final class RW extends AbstractC05094r implements InterfaceC0906Lm {
    @Nullable
    @DoNotStrip
    public Q9 A00;
    public QA A01;
    @Nullable
    public QA A02;
    public final int A03;
    public final SparseBooleanArray A04;
    public final C1203Xc A05;
    public final C9D A06;

    public RW(C9D c9d, SparseBooleanArray sparseBooleanArray, QA qa, int i, C1203Xc c1203Xc) {
        super(c9d);
        this.A05 = c1203Xc;
        this.A06 = c9d;
        this.A04 = sparseBooleanArray;
        this.A01 = qa;
        this.A03 = i;
    }

    private void A08(InterfaceC0821Ia interfaceC0821Ia, LD ld, String str, C0984On c0984On) {
        if (this.A04.get(c0984On.A02())) {
            return;
        }
        QA qa = this.A02;
        if (qa != null) {
            qa.A0V();
            this.A02 = null;
        }
        this.A00 = new RY(this, str, c0984On, interfaceC0821Ia, c0984On.A04(), ld);
        this.A02 = new QA(this.A06, 10, new WeakReference(this.A00), this.A05);
        this.A02.A0Y(false);
        this.A02.A0W(100);
        this.A02.A0X(100);
        this.A06.setOnAssetsLoadedListener(new RX(this, c0984On));
    }

    public final void A0l(C0984On c0984On, InterfaceC0821Ia interfaceC0821Ia, C6M c6m, LD ld, String str, int i, int i2, int i3) {
        int leftMargin = c0984On.A02();
        this.A06.setTag(-1593835536, Integer.valueOf(leftMargin));
        this.A06.setupNativeCtaExtension(c0984On);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(i, -2);
        int i4 = leftMargin == 0 ? i3 : i2;
        if (leftMargin < this.A03 - 1) {
            i3 = i2;
        }
        marginLayoutParams.setMargins(i4, 0, i3, 0);
        String A07 = c0984On.A03().A0D().A07();
        String A08 = c0984On.A03().A0D().A08();
        this.A06.setIsVideo(!TextUtils.isEmpty(A08));
        if (this.A06.A0k()) {
            this.A06.setVideoPlaceholderUrl(A07);
            this.A06.setVideoUrl(c6m.A0S(A08));
        } else {
            this.A06.setImageUrl(A07);
        }
        this.A06.setLayoutParams(marginLayoutParams);
        this.A06.setCTAInfo(c0984On.A03().A0F(), c0984On.A04());
        this.A06.A0l(c0984On.A04());
        A08(interfaceC0821Ia, ld, str, c0984On);
    }

    public final void A0m(QA qa) {
        this.A01 = qa;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0906Lm
    public final void AEl(@Nullable ND nd) {
        this.A06.setAdDetailsClickListener(nd);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0906Lm
    public final void AEn() {
        this.A06.A0f();
    }
}
