package com.bytedance.adsdk.lottie.Tgh;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* compiled from: BaseLottieAnimator.java */
/* loaded from: classes2.dex */
public abstract class Qhi extends ValueAnimator {
    private final Set<ValueAnimator.AnimatorUpdateListener> Qhi = new CopyOnWriteArraySet();
    private final Set<Animator.AnimatorListener> cJ = new CopyOnWriteArraySet();
    private final Set<Animator.AnimatorPauseListener> ac = new CopyOnWriteArraySet();

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getStartDelay() {
        throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setStartDelay(long j) {
        throw new UnsupportedOperationException("LottieAnimator does not support setStartDelay.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public ValueAnimator setDuration(long j) {
        throw new UnsupportedOperationException("LottieAnimator does not support setDuration.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setInterpolator(TimeInterpolator timeInterpolator) {
        throw new UnsupportedOperationException("LottieAnimator does not support setInterpolator.");
    }

    @Override // android.animation.ValueAnimator
    public void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.Qhi.add(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator
    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.Qhi.remove(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator
    public void removeAllUpdateListeners() {
        this.Qhi.clear();
    }

    @Override // android.animation.Animator
    public void addListener(Animator.AnimatorListener animatorListener) {
        this.cJ.add(animatorListener);
    }

    @Override // android.animation.Animator
    public void removeListener(Animator.AnimatorListener animatorListener) {
        this.cJ.remove(animatorListener);
    }

    @Override // android.animation.Animator
    public void removeAllListeners() {
        this.cJ.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(boolean z) {
        for (Animator.AnimatorListener animatorListener : this.cJ) {
            animatorListener.onAnimationStart(this, z);
        }
    }

    @Override // android.animation.Animator
    public void addPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.ac.add(animatorPauseListener);
    }

    @Override // android.animation.Animator
    public void removePauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.ac.remove(animatorPauseListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi() {
        for (Animator.AnimatorListener animatorListener : this.cJ) {
            animatorListener.onAnimationRepeat(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cJ(boolean z) {
        for (Animator.AnimatorListener animatorListener : this.cJ) {
            animatorListener.onAnimationEnd(this, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cJ() {
        for (Animator.AnimatorListener animatorListener : this.cJ) {
            animatorListener.onAnimationCancel(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ac() {
        for (ValueAnimator.AnimatorUpdateListener animatorUpdateListener : this.Qhi) {
            animatorUpdateListener.onAnimationUpdate(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void CJ() {
        for (Animator.AnimatorPauseListener animatorPauseListener : this.ac) {
            animatorPauseListener.onAnimationPause(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fl() {
        for (Animator.AnimatorPauseListener animatorPauseListener : this.ac) {
            animatorPauseListener.onAnimationResume(this);
        }
    }
}
