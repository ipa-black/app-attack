package com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import io.bidmachine.utils.IabUtils;
import java.util.ArrayList;
import java.util.List;
import org.apache.ldap.server.jndi.JavaLdapSupport;
/* compiled from: RubInAnimation.java */
/* loaded from: classes2.dex */
public class Gm extends fl {
    private Qhi CJ;
    private float Tgh;
    private float fl;

    public Gm(View view, com.bytedance.sdk.component.adexpress.dynamic.ac.Qhi qhi) {
        super(view, qhi);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi.fl
    List<ObjectAnimator> Qhi() {
        int i;
        String str;
        if ((this.ac instanceof ImageView) && (this.ac.getParent() instanceof DynamicBaseWidget)) {
            this.ac = (View) this.ac.getParent();
        }
        this.ac.setAlpha(0.0f);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ac, "alpha", 0.0f, 1.0f).setDuration((int) (this.cJ.WAv() * 1000.0d));
        this.CJ = new Qhi(this.ac);
        final int i2 = this.ac.getLayoutParams().height;
        this.fl = i2;
        this.Tgh = this.ac.getLayoutParams().width;
        if (TtmlNode.LEFT.equals(this.cJ.Qhi()) || TtmlNode.RIGHT.equals(this.cJ.Qhi())) {
            i = (int) this.Tgh;
            str = IabUtils.KEY_WIDTH;
        } else {
            str = IabUtils.KEY_HEIGHT;
            i = i2;
        }
        ObjectAnimator duration2 = ObjectAnimator.ofInt(this.CJ, str, 0, i).setDuration((int) (this.cJ.WAv() * 1000.0d));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Qhi(duration));
        arrayList.add(Qhi(duration2));
        ((ObjectAnimator) arrayList.get(0)).addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi.Gm.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator, boolean z) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator, boolean z) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Gm.this.CJ.Qhi(i2);
            }
        });
        return arrayList;
    }

    /* compiled from: RubInAnimation.java */
    /* loaded from: classes2.dex */
    private class Qhi {
        private View cJ;

        public Qhi(View view) {
            this.cJ = view;
        }

        public void Qhi(int i) {
            if (JavaLdapSupport.TOP_ATTR.equals(Gm.this.cJ.Qhi())) {
                if (Gm.this.ac instanceof ViewGroup) {
                    for (int i2 = 0; i2 < ((ViewGroup) Gm.this.ac).getChildCount(); i2++) {
                        ((ViewGroup) Gm.this.ac).getChildAt(i2).setTranslationY(i - Gm.this.fl);
                    }
                }
                Gm.this.ac.setTranslationY(Gm.this.fl - i);
                return;
            }
            ViewGroup.LayoutParams layoutParams = this.cJ.getLayoutParams();
            layoutParams.height = i;
            this.cJ.setLayoutParams(layoutParams);
            this.cJ.requestLayout();
        }
    }
}
