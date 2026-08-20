package com.ironsource.sdk.controller;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.ironsource.sdk.controller.x;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
/* loaded from: classes3.dex */
public final class i extends FrameLayout implements com.ironsource.sdk.j.g {

    /* renamed from: a  reason: collision with root package name */
    Context f11711a;

    /* renamed from: b  reason: collision with root package name */
    x f11712b;

    public i(Context context) {
        super(context);
        this.f11711a = context;
        setClickable(true);
    }

    static /* synthetic */ ViewGroup a(i iVar) {
        Activity activity = (Activity) iVar.f11711a;
        if (activity != null) {
            return (ViewGroup) activity.getWindow().getDecorView();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        int identifier;
        try {
            Context context = this.f11711a;
            if (context == null || (identifier = context.getResources().getIdentifier("status_bar_height", "dimen", MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID)) <= 0) {
                return 0;
            }
            return this.f11711a.getResources().getDimensionPixelSize(identifier);
        } catch (Exception unused) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        Rect rect;
        Rect rect2;
        Activity activity = (Activity) this.f11711a;
        try {
            rect = new Rect();
            activity.getWindow().getDecorView().getDrawingRect(rect);
            rect2 = new Rect();
            activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect2);
        } catch (Exception unused) {
        }
        if (com.ironsource.environment.h.o(activity) == 1) {
            if (rect.bottom - rect2.bottom > 0) {
                return rect.bottom - rect2.bottom;
            }
            return 0;
        }
        if (rect.right - rect2.right > 0) {
            return rect.right - rect2.right;
        }
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f11712b.l();
        this.f11712b.a(true, "main");
    }

    @Override // com.ironsource.sdk.j.g
    public final boolean onBackButtonPressed() {
        new com.ironsource.sdk.i.a();
        return com.ironsource.sdk.i.a.a((Activity) this.f11711a);
    }

    @Override // com.ironsource.sdk.j.g
    public final void onCloseRequested() {
        ((Activity) this.f11711a).runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.i.2
            @Override // java.lang.Runnable
            public final void run() {
                ViewGroup a2 = i.a(i.this);
                if (a2 != null) {
                    a2.removeView(i.this);
                }
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f11712b.k();
        this.f11712b.a(false, "main");
        x xVar = this.f11712b;
        if (xVar != null) {
            xVar.j = x.g.Gone;
            this.f11712b.l = null;
            this.f11712b.v = null;
        }
        removeAllViews();
    }

    @Override // com.ironsource.sdk.j.g
    public final void onOrientationChanged(String str, int i) {
    }
}
