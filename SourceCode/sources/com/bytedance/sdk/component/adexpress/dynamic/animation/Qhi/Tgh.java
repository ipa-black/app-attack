package com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.BounceInterpolator;
import android.view.animation.LinearInterpolator;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import java.util.ArrayList;
import java.util.List;
/* compiled from: BounceAnimation.java */
/* loaded from: classes2.dex */
public class Tgh extends fl {
    public Tgh(View view, com.bytedance.sdk.component.adexpress.dynamic.ac.Qhi qhi) {
        super(view, qhi);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi.fl
    List<ObjectAnimator> Qhi() {
        char c2;
        ArrayList arrayList = new ArrayList();
        String qMt = this.cJ.qMt();
        switch (qMt.hashCode()) {
            case 3029889:
                if (qMt.equals("both")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 3387192:
                if (qMt.equals("none")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 483313230:
                if (qMt.equals("forwards")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1356771568:
                if (qMt.equals("backwards")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            Qhi(arrayList);
        } else if (c2 == 1) {
            CJ(arrayList);
        } else if (c2 == 2) {
            cJ(arrayList);
        } else {
            ac(arrayList);
        }
        return arrayList;
    }

    private void Qhi(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ac, "translationY", 0.0f, -CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.cJ.MQ())).setDuration(((int) (this.cJ.WAv() * 1000.0d)) / 2);
        duration.setInterpolator(new LinearInterpolator());
        duration.setRepeatMode(2);
        this.cJ.Tgh(this.cJ.pA() * 2);
        list.add(Qhi(duration));
    }

    private void cJ(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ac, "translationY", 0.0f, -CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.cJ.MQ())).setDuration((int) (this.cJ.WAv() * 1000.0d));
        duration.setInterpolator(new BounceInterpolator());
        duration.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi.Tgh.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Tgh.this.ac.setTranslationY(0.0f);
            }
        });
        list.add(Qhi(duration));
    }

    private void ac(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ac, "translationY", 0.0f, -CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.cJ.MQ())).setDuration((int) (this.cJ.WAv() * 1000.0d));
        duration.setInterpolator(new BounceInterpolator());
        duration.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.Qhi.Tgh.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Tgh.this.ac.setTranslationY(0.0f);
            }
        });
        list.add(Qhi(duration));
    }

    private void CJ(List<ObjectAnimator> list) {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.ac, "translationY", 0.0f, -CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.cJ.MQ())).setDuration((int) (this.cJ.WAv() * 1000.0d));
        duration.setInterpolator(new BounceInterpolator());
        list.add(Qhi(duration));
    }
}
