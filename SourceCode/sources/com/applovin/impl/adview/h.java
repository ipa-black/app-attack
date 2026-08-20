package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.webkit.WebView;
/* loaded from: classes.dex */
public class h extends WebView {

    /* renamed from: a  reason: collision with root package name */
    private PointF f4419a;

    public h(Context context) {
        super(context);
        this.f4419a = new PointF();
    }

    public PointF getAndClearLastClickLocation() {
        PointF pointF = this.f4419a;
        this.f4419a = new PointF();
        return pointF;
    }

    public PointF getLastClickLocation() {
        return this.f4419a;
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f4419a = new PointF(motionEvent.getRawX(), motionEvent.getRawY());
        return super.onTouchEvent(motionEvent);
    }
}
