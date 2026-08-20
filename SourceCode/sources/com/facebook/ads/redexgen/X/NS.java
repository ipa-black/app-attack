package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.facebook.ads.RewardData;
/* loaded from: assets/audience_network.dex */
public final class NS extends FrameLayout {
    public static String[] A07 = {"Lu0oG19N", "JNY", "Ev6F9eDhg42RHlCeRuJfEtiFO07AluFn", "qSbaO4FE34QcNqD1YWxCxyT8wr5s9kWw", "hZddA1hSD7Y", "v9TnLSaOxYneacolptRVdRHaZQ0ab06L", "iyW9tyIIQvF7WQz3LOxNHXxa074IcWbN", "vzh"};
    @Nullable
    public AbstractC0902Li A00;
    public final AbstractC1268Zs A01;
    public final C1203Xc A02;
    public final InterfaceC0903Lj A03;
    public final NR A04;
    @Nullable
    public final RA A05;
    public final View[] A06;

    public NS(C0958Nm c0958Nm, AbstractC1268Zs abstractC1268Zs, @Nullable RA ra, JW jw, ND nd, InterfaceC0903Lj interfaceC0903Lj, NR nr) {
        this(c0958Nm, abstractC1268Zs, ra, interfaceC0903Lj, nr, jw, nd);
    }

    public NS(C0958Nm c0958Nm, AbstractC1268Zs abstractC1268Zs, @Nullable RA ra, InterfaceC0903Lj interfaceC0903Lj, NR nr, View... viewArr) {
        this(c0958Nm.A05(), c0958Nm.A08(), abstractC1268Zs, ra, interfaceC0903Lj, nr, viewArr);
    }

    public NS(C1203Xc c1203Xc, @Nullable AbstractC0902Li abstractC0902Li, AbstractC1268Zs abstractC1268Zs, @Nullable RA ra, InterfaceC0903Lj interfaceC0903Lj, NR nr, View... viewArr) {
        super(c1203Xc);
        this.A02 = c1203Xc;
        this.A00 = abstractC0902Li;
        this.A01 = abstractC1268Zs;
        this.A06 = viewArr;
        this.A03 = interfaceC0903Lj;
        this.A05 = ra;
        this.A04 = nr;
        A03();
    }

    private void A03() {
        String title;
        RewardData A0F = this.A01.A0F();
        if (A0F == null) {
            title = this.A01.A0j().A05();
        } else {
            title = this.A01.A0j().A06(A0F.getCurrency(), A0F.getQuantity());
        }
        C0913Lt c0913Lt = new C0913Lt(this.A02, -1, ViewCompat.MEASURED_STATE_MASK, title, null, this.A01.A0j().A04(), this.A01.A0j().A03(), LU.A01(LT.REWARD_ICON));
        c0913Lt.A02.setOnClickListener(new NP(this));
        c0913Lt.A01.setOnClickListener(new NQ(this));
        addView(c0913Lt, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04() {
        RA ra = this.A05;
        if (ra != null) {
            ra.A0a(PF.A07);
        }
        this.A04.AA9();
        if (!this.A01.A0h().A0O()) {
            this.A01.A0p(this.A03);
        }
    }

    public final void A07(ViewGroup viewGroup) {
        View[] viewArr;
        RA ra = this.A05;
        if (ra != null && !ra.A0j()) {
            this.A05.A0f(false, false, 11);
            LL.A0N(this.A05, 4);
        }
        AbstractC0902Li abstractC0902Li = this.A00;
        String[] strArr = A07;
        if (strArr[7].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        A07[0] = "vGH3jzSu";
        if (abstractC0902Li != null) {
            LL.A0H(abstractC0902Li);
        }
        for (View view : this.A06) {
            view.clearAnimation();
            LL.A0N(view, 4);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        viewGroup.addView(this, layoutParams);
        this.A04.ABd();
    }
}
