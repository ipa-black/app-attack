package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.facebook.proguard.annotations.DoNotStrip;
import java.lang.ref.WeakReference;
/* loaded from: assets/audience_network.dex */
public final class RM extends AbstractC05094r implements InterfaceC0906Lm {
    public static String[] A0A = {"av2tITPhYKbVn20ukUfJR25ELbcgjHbj", "MLeLe181lhP7dC21QqjxU1VDKV9lNkzJ", "XUmY4VBJ2tlJWKlPJ7YkBdCsKtcC", "bK6oHsXedskfaWsjnVeS6YyvP0sRA20b", "BhCeFQN4dHt9z3MLE3p7bnIzhrf86Cw8", "mLW9T0fP2Q5Hob07hRXsv0QUH1fN4", "pNzPXZ5fcby2PvmlRsfUzns43oHDF5Mi", "3YktW7BrcDIc4Xw2f2zdWv5xFETbHIAE"};
    @DoNotStrip
    public Q9 A00;
    public QA A01;
    @Nullable
    public QA A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final SparseBooleanArray A07;
    public final C1203Xc A08;
    public final AbstractC06088x A09;

    public RM(AbstractC06088x abstractC06088x, SparseBooleanArray sparseBooleanArray, QA qa, int i, int i2, int i3, int i4, C1203Xc c1203Xc) {
        super(abstractC06088x);
        this.A08 = c1203Xc;
        this.A09 = abstractC06088x;
        this.A07 = sparseBooleanArray;
        this.A01 = qa;
        this.A03 = i;
        this.A04 = i2;
        this.A05 = i3;
        this.A06 = i4;
    }

    private void A08(InterfaceC0821Ia interfaceC0821Ia, LD ld, String str, C0984On c0984On) {
        if (this.A07.get(c0984On.A02())) {
            return;
        }
        QA qa = this.A02;
        if (qa != null) {
            qa.A0V();
            if (A0A[4].charAt(16) != 'E') {
                throw new RuntimeException();
            }
            A0A[4] = "iteeE4SnfkkyQnEAEqI0za4snrHpWaXy";
            this.A02 = null;
        }
        this.A00 = new RP(this, str, c0984On, interfaceC0821Ia, c0984On.A04(), ld);
        this.A02 = new QA(this.A09, 10, new WeakReference(this.A00), this.A08);
        this.A02.A0Y(false);
        this.A02.A0W(100);
        this.A02.A0X(100);
        this.A09.setOnAssetsLoadedListener(new RN(this, c0984On));
    }

    public final void A0l(C0984On c0984On, InterfaceC0821Ia interfaceC0821Ia, C6M c6m, LD ld, String str) {
        int A02 = c0984On.A02();
        this.A09.setTag(-1593835536, Integer.valueOf(A02));
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(this.A03, -2);
        int rightMargin = A02 == 0 ? this.A04 : this.A05;
        int position = this.A06;
        marginLayoutParams.setMargins(rightMargin, 0, A02 >= position + (-1) ? this.A04 : this.A05, 0);
        String imageUrl = c0984On.A03().A0D().A07();
        String A08 = c0984On.A03().A0D().A08();
        this.A09.setIsVideo(!TextUtils.isEmpty(A08));
        if (this.A09.A0k()) {
            this.A09.setVideoPlaceholderUrl(imageUrl);
            this.A09.setVideoUrl(c6m.A0S(A08));
        } else {
            this.A09.setImageUrl(imageUrl);
        }
        this.A09.setLayoutParams(marginLayoutParams);
        this.A09.setAdTitleAndDescription(c0984On.A03().A0E().A06(), c0984On.A03().A0E().A01());
        this.A09.setCTAInfo(c0984On.A03().A0F(), c0984On.A04());
        this.A09.A0m(c0984On.A04());
        A08(interfaceC0821Ia, ld, str, c0984On);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0906Lm
    public final void AEl(@Nullable ND nd) {
        this.A09.setAdDetailsClickListener(nd);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0906Lm
    public final void AEn() {
        this.A09.A0f();
    }
}
