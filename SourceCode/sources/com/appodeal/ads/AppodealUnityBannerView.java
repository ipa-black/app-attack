package com.appodeal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.x5;
import com.explorestack.iab.vast.VastError;
import com.google.android.material.badge.BadgeDrawable;
/* loaded from: classes.dex */
public final class AppodealUnityBannerView {

    /* renamed from: b  reason: collision with root package name */
    public static AppodealUnityBannerView f6368b;

    /* renamed from: a  reason: collision with root package name */
    public b f6369a;

    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Activity f6370a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ int f6371b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ int f6372c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ int f6373d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ int f6374e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ View f6375f;

        public a(Activity activity, int i, int i2, int i3, int i4, FrameLayout frameLayout) {
            this.f6370a = activity;
            this.f6371b = i;
            this.f6372c = i2;
            this.f6373d = i3;
            this.f6374e = i4;
            this.f6375f = frameLayout;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (AppodealUnityBannerView.this.f6369a != null) {
                q4.b(this.f6370a, this.f6371b);
                b bVar = AppodealUnityBannerView.this.f6369a;
                if (bVar.getParent() != null && (bVar.getParent() instanceof ViewGroup)) {
                    ((ViewGroup) bVar.getParent()).removeView(bVar);
                }
                AppodealUnityBannerView.this.f6369a = null;
            }
            int i = this.f6372c;
            AppodealUnityBannerView appodealUnityBannerView = AppodealUnityBannerView.this;
            int i2 = this.f6373d;
            int i3 = this.f6374e;
            appodealUnityBannerView.getClass();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, -2, (i2 != -3 ? (i2 == -2 || i2 == -1) ? 1 : 3 : 5) | (i3 != 8 ? 48 : 80));
            AppodealUnityBannerView.this.f6369a = new b(this.f6370a);
            AppodealUnityBannerView appodealUnityBannerView2 = AppodealUnityBannerView.this;
            b bVar2 = appodealUnityBannerView2.f6369a;
            int i4 = this.f6373d;
            if (i4 == -4 || i4 == -3 || i4 == -2 || i4 == -1) {
                i4 = 0;
            }
            int i5 = this.f6374e;
            appodealUnityBannerView2.getClass();
            if (i5 == 8 || i5 == 16) {
                i5 = 0;
            }
            bVar2.f6377c = i4;
            bVar2.f6378d = i5;
            bVar2.requestLayout();
            bVar2.invalidate();
            AppodealUnityBannerView.this.f6369a.setBackgroundColor(0);
            AppodealUnityBannerView.this.f6369a.addView(this.f6375f, layoutParams);
            this.f6370a.addContentView(AppodealUnityBannerView.this.f6369a, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    /* loaded from: classes.dex */
    public static class b extends x5.e {

        /* renamed from: c  reason: collision with root package name */
        public int f6377c;

        /* renamed from: d  reason: collision with root package name */
        public int f6378d;

        public b(Activity activity) {
            super(activity);
            this.f6377c = 0;
            this.f6378d = 0;
        }

        @Override // com.appodeal.ads.x5.e, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5;
            int i6;
            int i7;
            int i8;
            if (this.f6377c == 0 && this.f6378d == 0) {
                super.onLayout(z, i, i2, i3, i4);
                return;
            }
            int childCount = getChildCount();
            int paddingLeft = getPaddingLeft();
            int paddingRight = (i3 - i) - getPaddingRight();
            int paddingTop = getPaddingTop();
            int paddingBottom = (i4 - i2) - getPaddingBottom();
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = getChildAt(i9);
                if (childAt.getVisibility() != 8) {
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    int i10 = layoutParams.gravity;
                    if (i10 == -1) {
                        i10 = BadgeDrawable.TOP_START;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i10, getLayoutDirection());
                    int i11 = i10 & 112;
                    int i12 = this.f6377c;
                    if (i12 != 0) {
                        i6 = i12 + paddingLeft;
                        int i13 = (i6 + measuredWidth) - paddingRight;
                        if (i13 > 0) {
                            i6 -= i13;
                        }
                        if (i6 < paddingLeft) {
                            i6 = paddingLeft;
                        }
                    } else {
                        int i14 = absoluteGravity & 7;
                        if (i14 == 1) {
                            i5 = (((paddingRight - paddingLeft) - measuredWidth) / 2) + paddingLeft + layoutParams.leftMargin;
                        } else if (i14 != 5) {
                            i6 = paddingLeft + layoutParams.leftMargin;
                        } else {
                            i5 = paddingRight - measuredWidth;
                        }
                        i6 = i5 - layoutParams.rightMargin;
                    }
                    int i15 = this.f6378d;
                    if (i15 != 0) {
                        i8 = layoutParams.topMargin + paddingTop + i15;
                        int i16 = (i8 + measuredHeight) - paddingBottom;
                        if (i16 > 0) {
                            i8 -= i16;
                        }
                        if (i8 < paddingTop) {
                            i8 = paddingTop;
                        }
                    } else {
                        if (i11 == 16) {
                            i7 = (((paddingBottom - paddingTop) - measuredHeight) / 2) + paddingTop + layoutParams.topMargin;
                        } else if (i11 == 48 || i11 != 80) {
                            i8 = layoutParams.topMargin + paddingTop;
                        } else {
                            i7 = paddingBottom - measuredHeight;
                        }
                        i8 = i7 - layoutParams.bottomMargin;
                    }
                    childAt.layout(i6, i8, measuredWidth + i6, measuredHeight + i8);
                }
            }
        }
    }

    public static AppodealUnityBannerView getInstance() {
        if (f6368b == null) {
            f6368b = new AppodealUnityBannerView();
        }
        return f6368b;
    }

    public final boolean a(Activity activity, int i, int i2, int i3, String str) {
        int i4;
        FrameLayout b2;
        if (activity == null) {
            Log.log(new com.appodeal.ads.utils.exception_handler.a("Unable to show an ad: activity = null"));
            return false;
        } else if (str == null) {
            Log.log(new com.appodeal.ads.utils.exception_handler.a("Unable to show an ad: placement = null"));
            return false;
        } else {
            if (i == 64) {
                b2 = q4.a((Context) activity);
                i4 = 320;
            } else {
                i4 = VastError.ERROR_CODE_GENERAL_WRAPPER;
                b2 = i == 256 ? q4.b(activity) : null;
            }
            FrameLayout frameLayout = b2;
            if (frameLayout == null) {
                Log.log(new com.appodeal.ads.utils.exception_handler.a("Unable to show an ad: adView = null"));
                return false;
            }
            activity.runOnUiThread(new a(activity, i, i2 != -1 ? Math.round(f1.l(activity) * i4) : -1, i2, i3, frameLayout));
            return q4.a(activity, i, str);
        }
    }

    public void hideBannerView(Activity activity) {
        activity.runOnUiThread(new s0(this, activity, 4));
    }

    public void hideMrecView(Activity activity) {
        activity.runOnUiThread(new s0(this, activity, 256));
    }

    public boolean showBannerView(Activity activity, int i, int i2, String str) {
        return a(activity, 64, i, i2, str);
    }

    public boolean showMrecView(Activity activity, int i, int i2, String str) {
        return a(activity, 256, i, i2, str);
    }
}
