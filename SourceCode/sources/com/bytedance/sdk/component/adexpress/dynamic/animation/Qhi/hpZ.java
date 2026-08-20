package com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi;

import android.animation.ObjectAnimator;
import android.view.View;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.CJ.tP;
import java.util.ArrayList;
import java.util.List;
/* compiled from: TranslateAnimation.java */
/* loaded from: classes2.dex */
public class hpZ extends fl {
    public hpZ(View view, com.bytedance.sdk.component.adexpress.dynamic.ac.Qhi qhi) {
        super(view, qhi);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi.fl
    List<ObjectAnimator> Qhi() {
        float f2;
        float Qhi = CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.cJ.Tgh());
        float Qhi2 = CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.cJ.ROR());
        float f3 = 0.0f;
        if ("reverse".equals(this.cJ.hpZ())) {
            f2 = Qhi2;
            Qhi2 = 0.0f;
            f3 = Qhi;
            Qhi = 0.0f;
        } else {
            f2 = 0.0f;
        }
        if (tP.Qhi(this.ac.getContext())) {
            Qhi = -Qhi;
            f3 = -f3;
        }
        this.ac.setTranslationX(Qhi);
        this.ac.setTranslationY(Qhi2);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ac, "translationX", Qhi, f3).setDuration((int) (this.cJ.WAv() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.ac, "translationY", Qhi2, f2).setDuration((int) (this.cJ.WAv() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Qhi(duration));
        arrayList.add(Qhi(duration2));
        return arrayList;
    }
}
