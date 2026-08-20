package com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ScaleAnimation.java */
/* loaded from: classes2.dex */
public class zc extends fl {
    public zc(View view, com.bytedance.sdk.component.adexpress.dynamic.ac.Qhi qhi) {
        super(view, qhi);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.setClipChildren(false);
            viewGroup.setClipToPadding(false);
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
            if (viewGroup2 == null || !(viewGroup2 instanceof DynamicBaseWidget)) {
                return;
            }
            viewGroup2.setClipChildren(false);
            viewGroup2.setClipToPadding(false);
            ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
            if (viewGroup3 == null || !(viewGroup3 instanceof DynamicBaseWidget)) {
                return;
            }
            viewGroup3.setClipChildren(false);
            viewGroup3.setClipToPadding(false);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi.fl
    List<ObjectAnimator> Qhi() {
        float f2;
        float Gm = (float) this.cJ.Gm();
        float zc = (float) this.cJ.zc();
        String hpZ = this.cJ.hpZ();
        float f3 = 1.0f;
        if ("reverse".equals(hpZ) || "alternate-reverse".equals(hpZ)) {
            f2 = 1.0f;
        } else {
            f2 = zc;
            zc = 1.0f;
            f3 = Gm;
            Gm = 1.0f;
        }
        this.ac.setTag(2097610710, this.cJ.cJ());
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ac, "scaleX", Gm, f3).setDuration((int) (this.cJ.WAv() * 1000.0d));
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.ac, "scaleY", zc, f2).setDuration((int) (this.cJ.WAv() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Qhi(duration));
        arrayList.add(Qhi(duration2));
        return arrayList;
    }
}
