package com.appodeal.ads.native_ad.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.appodeal.ads.NativeAd;
import com.appodeal.ads.NativeIconView;
import com.appodeal.ads.f1;
/* loaded from: classes2.dex */
public class NativeAdViewNewsFeed extends NativeAdView {
    public NativeAdViewNewsFeed(Context context) {
        super(context);
    }

    public NativeAdViewNewsFeed(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NativeAdViewNewsFeed(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public NativeAdViewNewsFeed(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public NativeAdViewNewsFeed(Context context, NativeAd nativeAd) {
        super(context, nativeAd, RewardedVideo.VIDEO_MODE_DEFAULT);
    }

    public NativeAdViewNewsFeed(Context context, NativeAd nativeAd, String str) {
        super(context, nativeAd, str);
    }

    @Override // com.appodeal.ads.native_ad.views.NativeAdView
    public final void a() {
        View view;
        if (!this.q) {
            TypedArray obtainStyledAttributes = this.p.obtainStyledAttributes(new int[]{16843534});
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            setBackground(drawable);
            this.k = new RelativeLayout(this.p);
            this.k.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            int round = Math.round(f1.l(this.p) * 5.0f);
            this.k.setPadding(round, round, round, round);
            this.k.setVisibility(8);
            addView(this.k);
            LinearLayout linearLayout = new LinearLayout(this.p);
            this.n = linearLayout;
            linearLayout.setOrientation(0);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(11);
            layoutParams.addRule(10);
            this.n.setLayoutParams(layoutParams);
            this.n.setId(View.generateViewId());
            this.k.addView(this.n);
            TextView textView = new TextView(this.p);
            this.m = textView;
            textView.setTextSize(2, 10.0f);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = 16;
            this.m.setLayoutParams(layoutParams2);
            c();
            this.n.addView(this.m);
            this.l = new RelativeLayout(this.p);
            this.l.setLayoutParams(new RelativeLayout.LayoutParams(-2, Math.round(f1.l(this.p) * 20.0f)));
            this.n.addView(this.l);
            this.f6394h = new NativeIconView(this.p);
            this.r = Math.round(f1.l(this.p) * 50.0f);
            int i = this.r;
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i, i);
            layoutParams3.setMargins(0, 0, Math.round(f1.l(this.p) * 10.0f), 0);
            layoutParams3.addRule(6);
            layoutParams3.addRule(9);
            this.f6394h.setLayoutParams(layoutParams3);
            this.f6394h.setId(View.generateViewId());
            this.k.addView(this.f6394h);
            TextView textView2 = new TextView(this.p);
            this.f6389c = textView2;
            textView2.setTextSize(2, 16.0f);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams4.setMargins(0, 0, 0, Math.round(f1.l(this.p) * 5.0f));
            layoutParams4.addRule(1, this.f6394h.getId());
            layoutParams4.addRule(0, this.n.getId());
            this.f6389c.setLayoutParams(layoutParams4);
            this.f6389c.setId(View.generateViewId());
            this.k.addView(this.f6389c);
            this.f6390d = new TextView(this.p);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
            int round2 = Math.round(f1.l(this.p) * 3.0f);
            int round3 = Math.round(f1.l(this.p) * 5.0f);
            layoutParams5.setMargins(round2, 0, 3, 3);
            layoutParams5.addRule(11);
            layoutParams5.addRule(3, this.f6389c.getId());
            this.f6390d.setLayoutParams(layoutParams5);
            this.f6390d.setPadding(round3, round3, round3, round3);
            this.f6390d.setId(View.generateViewId());
            b();
            this.k.addView(this.f6390d);
            TextView textView3 = new TextView(this.p);
            this.f6392f = textView3;
            textView3.setTextSize(2, 12.0f);
            RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams6.setMargins(0, 0, 0, Math.round(f1.l(this.p) * 5.0f));
            layoutParams6.addRule(1, this.f6394h.getId());
            layoutParams6.addRule(0, this.f6390d.getId());
            layoutParams6.addRule(3, this.f6389c.getId());
            this.f6392f.setLayoutParams(layoutParams6);
            ((TextView) this.f6392f).setMaxLines(2);
            ((TextView) this.f6392f).setMinLines(2);
            ((TextView) this.f6392f).setEllipsize(TextUtils.TruncateAt.END);
            this.f6392f.setId(View.generateViewId());
            this.k.addView(this.f6392f);
            RatingBar ratingBar = new RatingBar(this.p, null, 16842877);
            this.f6391e = ratingBar;
            ratingBar.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams7.addRule(1, this.f6394h.getId());
            layoutParams7.addRule(3, this.f6389c.getId());
            this.f6391e.setLayoutParams(layoutParams7);
            this.f6391e.setId(View.generateViewId());
            this.k.addView(this.f6391e);
            this.q = true;
        }
        NativeAd nativeAd = this.o;
        if (nativeAd != null) {
            ((TextView) this.f6389c).setText(nativeAd.getTitle());
            if (this.o.getRating() > 0.0f) {
                ((RatingBar) this.f6391e).setRating(this.o.getRating());
                this.f6391e.setVisibility(0);
                view = this.f6392f;
            } else {
                ((TextView) this.f6392f).setText(this.o.getDescription());
                view = this.f6391e;
            }
            view.setVisibility(8);
            if (this.o.getCallToAction() == null || this.o.getCallToAction().isEmpty() || this.o.getCallToAction().equals("")) {
                this.f6390d.setVisibility(8);
            } else {
                ((TextView) this.f6390d).setText(this.o.getCallToAction());
                this.f6390d.setVisibility(0);
            }
            View providerView = this.o.getProviderView(this.p);
            this.f6393g = providerView;
            if (providerView != null) {
                if (providerView.getParent() != null && (this.f6393g.getParent() instanceof ViewGroup)) {
                    ((ViewGroup) this.f6393g.getParent()).removeView(this.f6393g);
                }
                this.l.removeAllViews();
                this.l.addView(this.f6393g, new ViewGroup.LayoutParams(-2, -2));
            } else {
                RelativeLayout relativeLayout = this.l;
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(8);
                }
            }
            registerView(this.o, this.t);
            this.k.setVisibility(0);
        }
    }
}
