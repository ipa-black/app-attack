package com.applovin.impl.sdk;

import android.app.Activity;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import android.view.animation.Animation;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes.dex */
public class y {

    /* renamed from: a  reason: collision with root package name */
    private final n f6225a;

    /* renamed from: b  reason: collision with root package name */
    private final v f6226b;

    /* renamed from: c  reason: collision with root package name */
    private final View f6227c;

    public y(View view, n nVar) {
        this.f6225a = nVar;
        this.f6226b = nVar.D();
        this.f6227c = view;
    }

    public long a(com.applovin.impl.mediation.a.e eVar) {
        long j;
        if (v.a()) {
            this.f6226b.b("ViewabilityTracker", "Checking visibility...");
        }
        if (this.f6227c.isShown()) {
            j = 0;
        } else {
            if (v.a()) {
                this.f6226b.e("ViewabilityTracker", "View is hidden");
            }
            j = 2;
        }
        if (this.f6227c.getAlpha() < eVar.J()) {
            if (v.a()) {
                this.f6226b.e("ViewabilityTracker", "View is transparent");
            }
            j |= 4;
        }
        Animation animation = this.f6227c.getAnimation();
        if (animation != null && animation.hasStarted() && !animation.hasEnded()) {
            if (v.a()) {
                this.f6226b.e("ViewabilityTracker", "View is animating");
            }
            j |= 8;
        }
        if (this.f6227c.getParent() == null) {
            if (v.a()) {
                this.f6226b.e("ViewabilityTracker", "No parent view found");
            }
            j |= 16;
        }
        int pxToDp = AppLovinSdkUtils.pxToDp(this.f6227c.getContext(), this.f6227c.getWidth());
        if (pxToDp < eVar.H()) {
            if (v.a()) {
                this.f6226b.e("ViewabilityTracker", "View has width (" + pxToDp + ") below threshold");
            }
            j |= 32;
        }
        int pxToDp2 = AppLovinSdkUtils.pxToDp(this.f6227c.getContext(), this.f6227c.getHeight());
        if (pxToDp2 < eVar.I()) {
            if (v.a()) {
                this.f6226b.e("ViewabilityTracker", "View has height (" + pxToDp2 + ") below threshold");
            }
            j |= 64;
        }
        Point a2 = com.applovin.impl.sdk.utils.h.a(this.f6227c.getContext());
        Rect rect = new Rect(0, 0, a2.x, a2.y);
        int[] iArr = {-1, -1};
        this.f6227c.getLocationOnScreen(iArr);
        int i = iArr[0];
        Rect rect2 = new Rect(i, iArr[1], this.f6227c.getWidth() + i, iArr[1] + this.f6227c.getHeight());
        if (!Rect.intersects(rect, rect2)) {
            if (v.a()) {
                this.f6226b.e("ViewabilityTracker", "Rect (" + rect2 + ") outside of screen's bounds (" + rect + ")");
            }
            j |= 128;
        }
        Activity a3 = this.f6225a.ai().a();
        if (a3 != null && !Utils.isViewInTopActivity(this.f6227c, a3)) {
            if (v.a()) {
                this.f6226b.e("ViewabilityTracker", "View is not in top activity's view hierarchy");
            }
            j |= 256;
        }
        if (v.a()) {
            this.f6226b.b("ViewabilityTracker", "Returning flags: " + Long.toBinaryString(j));
        }
        return j;
    }
}
