package com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicImageView;
import java.util.ArrayList;
import java.util.List;
/* compiled from: StretchAnimation.java */
/* loaded from: classes2.dex */
public class iMK extends fl {
    public iMK(View view, com.bytedance.sdk.component.adexpress.dynamic.ac.Qhi qhi) {
        super(view, qhi);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi.fl
    List<ObjectAnimator> Qhi() {
        if ((this.ac instanceof ImageView) && (this.ac.getParent() instanceof DynamicImageView)) {
            this.ac = (View) this.ac.getParent();
            ((ViewGroup) this.ac).setClipChildren(true);
            ((ViewGroup) this.ac.getParent()).setClipChildren(true);
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ac, "stretchValue", 0.0f, 1.0f).setDuration((int) (this.cJ.WAv() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Qhi(duration));
        return arrayList;
    }
}
