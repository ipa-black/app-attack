package com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi;

import android.animation.ObjectAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MarqueeAnimation.java */
/* loaded from: classes2.dex */
public class Sf extends fl {
    public Sf(View view, com.bytedance.sdk.component.adexpress.dynamic.ac.Qhi qhi) {
        super(view, qhi);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi.fl
    List<ObjectAnimator> Qhi() {
        this.ac.setTag(2097610709, Integer.valueOf(this.cJ.ac()));
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ac, "marqueeValue", 0.0f, 1.0f).setDuration((int) (this.cJ.WAv() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Qhi(duration));
        return arrayList;
    }
}
