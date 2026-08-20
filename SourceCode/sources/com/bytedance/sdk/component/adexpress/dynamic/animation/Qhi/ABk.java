package com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi;

import android.animation.ObjectAnimator;
import android.view.View;
import com.bytedance.sdk.component.adexpress.CJ.tP;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ShineAnimation.java */
/* loaded from: classes2.dex */
public class ABk extends fl {
    public ABk(View view, com.bytedance.sdk.component.adexpress.dynamic.ac.Qhi qhi) {
        super(view, qhi);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi.fl
    List<ObjectAnimator> Qhi() {
        int i;
        int i2;
        this.ac.setTag(2097610711, Integer.valueOf(this.cJ.CJ()));
        if (this.ac == null || !tP.Qhi(this.ac.getContext())) {
            i = 0;
            i2 = 1;
        } else {
            i2 = 0;
            i = 1;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ac, "shineValue", i, i2).setDuration((int) (this.cJ.WAv() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Qhi(duration));
        return arrayList;
    }
}
