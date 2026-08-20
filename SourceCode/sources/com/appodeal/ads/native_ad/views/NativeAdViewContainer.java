package com.appodeal.ads.native_ad.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
/* loaded from: classes2.dex */
public class NativeAdViewContainer extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public ViewGroup f7096a;

    /* renamed from: b  reason: collision with root package name */
    public FrameLayout f7097b;

    public NativeAdViewContainer(Context context) {
        super(context);
        a(context);
    }

    public NativeAdViewContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public NativeAdViewContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    public NativeAdViewContainer(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context);
    }

    public final void a(Context context) {
        this.f7097b = new FrameLayout(context);
        addView(this.f7097b, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        FrameLayout frameLayout = this.f7097b;
        if (view != frameLayout) {
            frameLayout.addView(view);
        } else {
            super.addView(view);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        FrameLayout frameLayout = this.f7097b;
        if (view != frameLayout) {
            frameLayout.addView(view, i);
        } else {
            super.addView(view, i);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, int i2) {
        FrameLayout frameLayout = this.f7097b;
        if (view != frameLayout) {
            frameLayout.addView(view, i, i2);
        } else {
            super.addView(view, i, i2);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        FrameLayout frameLayout = this.f7097b;
        if (view != frameLayout) {
            frameLayout.addView(view, i, layoutParams);
        } else {
            super.addView(view, i, layoutParams);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        FrameLayout frameLayout = this.f7097b;
        if (view != frameLayout) {
            frameLayout.addView(view, layoutParams);
        } else {
            super.addView(view, layoutParams);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        FrameLayout frameLayout = this.f7097b;
        if (frameLayout != null) {
            frameLayout.bringChildToFront(view);
        }
    }

    public void configureContainer(ViewGroup viewGroup) {
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        super.removeView(this.f7097b);
        FrameLayout frameLayout = this.f7097b;
        if (frameLayout != null && frameLayout.getParent() != null) {
            ((ViewGroup) this.f7097b.getParent()).removeView(this.f7097b);
        }
        if (viewGroup != null && viewGroup.getParent() != null) {
            ((ViewGroup) viewGroup.getParent()).removeView(viewGroup);
        }
        ViewGroup viewGroup2 = this.f7096a;
        if (viewGroup2 != null) {
            super.removeView(viewGroup2);
            this.f7096a = null;
        }
        super.addView(viewGroup, 0, layoutParams);
        viewGroup.addView(this.f7097b, 0, layoutParams);
        this.f7096a = viewGroup;
    }

    public void deconfigureContainer() {
        if (this.f7096a != null) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            FrameLayout frameLayout = this.f7097b;
            if (frameLayout != null && frameLayout.getParent() != null) {
                ((ViewGroup) this.f7097b.getParent()).removeView(this.f7097b);
            }
            ViewGroup viewGroup = this.f7096a;
            if (viewGroup != null) {
                super.removeView(viewGroup);
                this.f7096a = null;
            }
            super.addView(this.f7097b, 0, layoutParams);
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        FrameLayout frameLayout = this.f7097b;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        ViewGroup viewGroup = this.f7096a;
        if (view == viewGroup) {
            if (viewGroup != null) {
                super.removeView(viewGroup);
                this.f7096a = null;
                return;
            }
            return;
        }
        FrameLayout frameLayout = this.f7097b;
        if (frameLayout != null) {
            frameLayout.removeView(view);
        }
    }
}
