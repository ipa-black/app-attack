package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.ValueAnimator;
/* renamed from: com.facebook.ads.redexgen.X.Pn  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1010Pn implements Animator.AnimatorListener {
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ JQ A02;

    public C1010Pn(JQ jq, int i, int i2) {
        this.A02 = jq;
        this.A01 = i;
        this.A00 = i2;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2;
        this.A02.A07(this.A00, this.A01, false);
        valueAnimator = this.A02.A00;
        if (valueAnimator != null) {
            valueAnimator2 = this.A02.A00;
            valueAnimator2.removeAllListeners();
            this.A02.A00 = null;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i;
        EnumC1003Pg enumC1003Pg;
        ValueAnimator valueAnimator;
        ValueAnimator valueAnimator2;
        JQ jq = this.A02;
        int i2 = this.A01;
        i = jq.A04;
        if (i2 == i) {
            enumC1003Pg = EnumC1003Pg.A03;
        } else {
            enumC1003Pg = EnumC1003Pg.A05;
        }
        jq.A01 = enumC1003Pg;
        valueAnimator = this.A02.A00;
        if (valueAnimator != null) {
            valueAnimator2 = this.A02.A00;
            valueAnimator2.removeAllListeners();
            this.A02.A00 = null;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
