package com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
/* compiled from: RippleAnimation.java */
/* loaded from: classes2.dex */
public class hm extends fl {
    public hm(View view, com.bytedance.sdk.component.adexpress.dynamic.ac.Qhi qhi) {
        super(view, qhi);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi.fl
    List<ObjectAnimator> Qhi() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ac, "rippleValue", 0.0f, 1.0f).setDuration((int) (this.cJ.WAv() * 1000.0d));
        ((ViewGroup) this.ac.getParent()).setClipChildren(false);
        ((ViewGroup) this.ac.getParent().getParent()).setClipChildren(false);
        ((ViewGroup) this.ac.getParent().getParent().getParent()).setClipChildren(false);
        this.ac.setTag(2097610712, this.cJ.Sf());
        ArrayList arrayList = new ArrayList();
        arrayList.add(Qhi(duration));
        return arrayList;
    }
}
