package com.explorestack.iab.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
/* loaded from: classes2.dex */
public abstract class g<T extends View> {

    /* renamed from: a  reason: collision with root package name */
    public final View.OnClickListener f9434a;

    /* renamed from: b  reason: collision with root package name */
    public T f9435b;

    /* renamed from: c  reason: collision with root package name */
    public IabElementStyle f9436c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f9437d = false;

    /* renamed from: e  reason: collision with root package name */
    public final Runnable f9438e = new a();

    /* renamed from: f  reason: collision with root package name */
    public final Animator.AnimatorListener f9439f = new b();

    /* loaded from: classes2.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g.this.f9437d = false;
            g gVar = g.this;
            T t = gVar.f9435b;
            if (t == null || gVar.f9436c == null) {
                return;
            }
            t.animate().alpha(0.0f).setDuration(400L).setListener(g.this.f9439f).withLayer();
        }
    }

    /* loaded from: classes2.dex */
    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            super.onAnimationCancel(animator);
            animator.removeAllListeners();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            T t = g.this.f9435b;
            if (t != null) {
                t.setClickable(t.getAlpha() != 0.0f);
            }
        }
    }

    public g(View.OnClickListener onClickListener) {
        this.f9434a = onClickListener;
    }

    public ViewGroup.MarginLayoutParams a(Context context, IabElementStyle iabElementStyle) {
        return new ViewGroup.MarginLayoutParams(iabElementStyle.getWidth(context).intValue(), iabElementStyle.getHeight(context).intValue());
    }

    public void a() {
        T t = this.f9435b;
        if (t != null) {
            t.bringToFront();
        }
    }

    public void a(int i) {
        T t = this.f9435b;
        if (t != null) {
            t.setVisibility(i);
        }
    }

    public void a(Context context, T t, IabElementStyle iabElementStyle) {
    }

    public void a(Context context, ViewGroup viewGroup, IabElementStyle iabElementStyle) {
        RelativeLayout.LayoutParams layoutParams;
        IabElementStyle iabElementStyle2;
        IabElementStyle copyWith = c(context, iabElementStyle).copyWith(iabElementStyle);
        if (!copyWith.isVisible().booleanValue()) {
            c();
            return;
        }
        if (viewGroup instanceof FrameLayout) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(a(context, copyWith));
            copyWith.applyAlignment(layoutParams2);
            layoutParams = layoutParams2;
        } else if (!(viewGroup instanceof RelativeLayout)) {
            throw new IllegalArgumentException("Parent should be instance of FrameLayout or RelativeLayout");
        } else {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(a(context, copyWith));
            copyWith.applyRelativeAlignment(layoutParams3);
            layoutParams = layoutParams3;
        }
        copyWith.applyMargin(context, layoutParams);
        T t = this.f9435b;
        if (t == null || (iabElementStyle2 = this.f9436c) == null || a((g<T>) t, iabElementStyle2, copyWith)) {
            T b2 = b(context, copyWith);
            this.f9435b = b2;
            viewGroup.addView(b2, layoutParams);
        } else {
            this.f9435b.setLayoutParams(layoutParams);
            this.f9435b.setVisibility(0);
        }
        this.f9435b.setAlpha(copyWith.getOpacity().floatValue());
        copyWith.applyPadding(context, this.f9435b);
        this.f9435b.setOnClickListener(this.f9434a);
        this.f9436c = copyWith;
        a((g<T>) this.f9435b, copyWith);
        a(context, (Context) this.f9435b, copyWith);
    }

    public void a(T t, IabElementStyle iabElementStyle) {
        if (t instanceof IabElement) {
            ((IabElement) t).setStyle(iabElementStyle);
        }
    }

    public boolean a(T t, IabElementStyle iabElementStyle, IabElementStyle iabElementStyle2) {
        return !TextUtils.equals(iabElementStyle.getStyle(), iabElementStyle2.getStyle());
    }

    public abstract T b(Context context, IabElementStyle iabElementStyle);

    public void b() {
        this.f9437d = false;
        T t = this.f9435b;
        if (t == null || this.f9436c == null) {
            return;
        }
        t.animate().cancel();
        this.f9435b.removeCallbacks(this.f9438e);
        this.f9435b.setClickable(true);
        this.f9435b.setAlpha(this.f9436c.getOpacity().floatValue());
    }

    public abstract IabElementStyle c(Context context, IabElementStyle iabElementStyle);

    public void c() {
        if (this.f9435b != null) {
            b();
            Utils.removeFromParent(this.f9435b);
            this.f9435b = null;
            this.f9436c = null;
        }
    }

    public void d() {
        if (e()) {
            a(this.f9435b.getContext(), (Context) this.f9435b, this.f9436c);
        }
    }

    public boolean e() {
        return this.f9435b != null;
    }

    public void f() {
        IabElementStyle iabElementStyle;
        Float hideAfter;
        if (this.f9437d || this.f9435b == null || (iabElementStyle = this.f9436c) == null || (hideAfter = iabElementStyle.getHideAfter()) == null || hideAfter.floatValue() == 0.0f) {
            return;
        }
        this.f9437d = true;
        this.f9435b.postDelayed(this.f9438e, hideAfter.floatValue() * 1000.0f);
    }

    public void g() {
        if (this.f9435b == null || this.f9436c == null) {
            return;
        }
        b();
        f();
    }
}
