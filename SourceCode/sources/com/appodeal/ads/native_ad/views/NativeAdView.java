package com.appodeal.ads.native_ad.views;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.appodeal.ads.NativeAd;
import com.appodeal.ads.NativeIconView;
import com.appodeal.ads.NativeMediaView;
/* loaded from: classes2.dex */
public abstract class NativeAdView extends com.appodeal.ads.NativeAdView {
    public RelativeLayout k;
    public RelativeLayout l;
    public TextView m;
    public LinearLayout n;
    public NativeAd o;
    public Context p;
    public boolean q;
    public int r;
    public boolean s;
    public String t;

    public NativeAdView(Context context) {
        super(context);
        this.q = false;
        this.s = false;
        this.t = RewardedVideo.VIDEO_MODE_DEFAULT;
        this.p = context;
        a();
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.q = false;
        this.s = false;
        this.t = RewardedVideo.VIDEO_MODE_DEFAULT;
        this.p = context;
        a();
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.q = false;
        this.s = false;
        this.t = RewardedVideo.VIDEO_MODE_DEFAULT;
        this.p = context;
        a();
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.q = false;
        this.s = false;
        this.t = RewardedVideo.VIDEO_MODE_DEFAULT;
        this.p = context;
        a();
    }

    public NativeAdView(Context context, NativeAd nativeAd, String str) {
        super(context);
        this.q = false;
        this.s = false;
        this.p = context;
        this.o = nativeAd;
        this.t = str;
        a();
    }

    public void a() {
    }

    public final void b() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(0);
        gradientDrawable.setStroke(2, ((TextView) this.f6390d).getCurrentTextColor());
        gradientDrawable.setCornerRadius(8.0f);
        this.f6390d.setBackground(gradientDrawable);
    }

    public final void c() {
        TextView textView;
        int i;
        TextView textView2 = this.m;
        if (textView2 != null) {
            if (this.s) {
                textView2.setText("Sponsored");
                this.m.setBackgroundColor(0);
                textView = this.m;
                i = -3355444;
            } else {
                textView2.setText(" Ad ");
                this.m.setBackgroundColor(Color.parseColor("#fcb41c"));
                textView = this.m;
                i = -1;
            }
            textView.setTextColor(i);
        }
    }

    @Override // com.appodeal.ads.NativeAdView
    public TextView getCallToActionView() {
        return (TextView) this.f6390d;
    }

    @Override // com.appodeal.ads.NativeAdView
    public TextView getDescriptionView() {
        return (TextView) this.f6392f;
    }

    @Override // com.appodeal.ads.NativeAdView
    public NativeIconView getNativeIconView() {
        return this.f6394h;
    }

    @Override // com.appodeal.ads.NativeAdView
    public NativeMediaView getNativeMediaView() {
        return this.i;
    }

    public RatingBar getRatingBar() {
        return (RatingBar) this.f6391e;
    }

    @Override // com.appodeal.ads.NativeAdView
    public TextView getTitleView() {
        return (TextView) this.f6389c;
    }

    public void setCallToActionColor(int i) {
        ((TextView) this.f6390d).setTextColor(i);
        b();
    }

    public void setCallToActionColor(String str) {
        try {
            ((TextView) this.f6390d).setTextColor(Color.parseColor(str));
        } catch (Exception unused) {
        }
        b();
    }

    public void setNativeAd(NativeAd nativeAd) {
        this.o = nativeAd;
        a();
    }

    public void setPlacement(String str) {
        this.t = str;
    }

    public void showSponsored(boolean z) {
        this.s = z;
        c();
    }
}
