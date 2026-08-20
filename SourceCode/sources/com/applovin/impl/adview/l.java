package com.applovin.impl.adview;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.applovin.impl.adview.i;
import com.applovin.sdk.AppLovinSdkUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l extends Dialog implements k {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f4438a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.n f4439b;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.impl.sdk.v f4440c;

    /* renamed from: d  reason: collision with root package name */
    private final d f4441d;

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.a f4442e;

    /* renamed from: f  reason: collision with root package name */
    private RelativeLayout f4443f;

    /* renamed from: g  reason: collision with root package name */
    private i f4444g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(com.applovin.impl.sdk.ad.a aVar, d dVar, Activity activity, com.applovin.impl.sdk.n nVar) {
        super(activity, 16973840);
        if (aVar == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        if (dVar == null) {
            throw new IllegalArgumentException("No main view specified");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.f4439b = nVar;
        this.f4440c = nVar.D();
        this.f4438a = activity;
        this.f4441d = dVar;
        this.f4442e = aVar;
        requestWindowFeature(1);
        setCancelable(false);
    }

    private int a(int i) {
        return AppLovinSdkUtils.dpToPx(this.f4438a, i);
    }

    private void a(i.a aVar) {
        if (this.f4444g != null) {
            if (com.applovin.impl.sdk.v.a()) {
                this.f4440c.d("ExpandedAdDialog", "Attempting to create duplicate close button");
                return;
            }
            return;
        }
        i a2 = i.a(aVar, this.f4438a);
        this.f4444g = a2;
        a2.setVisibility(8);
        this.f4444g.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.adview.l.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                l.this.d();
            }
        });
        this.f4444g.setClickable(false);
        int a3 = a(((Integer) this.f4439b.a(com.applovin.impl.sdk.c.b.cc)).intValue());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a3, a3);
        layoutParams.addRule(10);
        layoutParams.addRule(((Boolean) this.f4439b.a(com.applovin.impl.sdk.c.b.cf)).booleanValue() ? 9 : 11);
        this.f4444g.a(a3);
        int a4 = a(((Integer) this.f4439b.a(com.applovin.impl.sdk.c.b.ce)).intValue());
        int a5 = a(((Integer) this.f4439b.a(com.applovin.impl.sdk.c.b.cd)).intValue());
        layoutParams.setMargins(a5, a4, a5, 0);
        this.f4443f.addView(this.f4444g, layoutParams);
        this.f4444g.bringToFront();
        int a6 = a(((Integer) this.f4439b.a(com.applovin.impl.sdk.c.b.cg)).intValue());
        View view = new View(this.f4438a);
        view.setBackgroundColor(0);
        int i = a3 + a6;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i, i);
        layoutParams2.addRule(10);
        layoutParams2.addRule(((Boolean) this.f4439b.a(com.applovin.impl.sdk.c.b.cf)).booleanValue() ? 9 : 11);
        layoutParams2.setMargins(a5 - a(5), a4 - a(5), a5 - a(5), 0);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.adview.l.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (l.this.f4444g.isClickable()) {
                    l.this.f4444g.performClick();
                }
            }
        });
        this.f4443f.addView(view, layoutParams2);
        view.bringToFront();
    }

    private void c() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f4441d.setLayoutParams(layoutParams);
        RelativeLayout relativeLayout = new RelativeLayout(this.f4438a);
        this.f4443f = relativeLayout;
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f4443f.setBackgroundColor(-1157627904);
        this.f4443f.addView(this.f4441d);
        if (!this.f4442e.m()) {
            a(this.f4442e.n());
            e();
        }
        setContentView(this.f4443f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f4441d.a("javascript:al_onCloseTapped();", new Runnable() { // from class: com.applovin.impl.adview.l.1
            @Override // java.lang.Runnable
            public void run() {
                l.this.dismiss();
            }
        });
    }

    private void e() {
        this.f4438a.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.l.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (l.this.f4444g == null) {
                        l.this.d();
                    }
                    l.this.f4444g.setVisibility(0);
                    l.this.f4444g.bringToFront();
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                    alphaAnimation.setDuration(300L);
                    alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.applovin.impl.adview.l.6.1
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation) {
                            l.this.f4444g.setClickable(true);
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation) {
                        }
                    });
                    l.this.f4444g.startAnimation(alphaAnimation);
                } catch (Throwable th) {
                    com.applovin.impl.sdk.v unused = l.this.f4440c;
                    if (com.applovin.impl.sdk.v.a()) {
                        l.this.f4440c.b("ExpandedAdDialog", "Unable to fade in close button", th);
                    }
                    l.this.d();
                }
            }
        });
    }

    public com.applovin.impl.sdk.ad.a a() {
        return this.f4442e;
    }

    public d b() {
        return this.f4441d;
    }

    @Override // android.app.Dialog, android.content.DialogInterface, com.applovin.impl.adview.k
    public void dismiss() {
        com.applovin.impl.sdk.d.d statsManagerHelper = this.f4441d.getStatsManagerHelper();
        if (statsManagerHelper != null) {
            statsManagerHelper.e();
        }
        this.f4438a.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.l.3
            @Override // java.lang.Runnable
            public void run() {
                l.this.f4443f.removeView(l.this.f4441d);
                l.super.dismiss();
            }
        });
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        this.f4441d.a("javascript:al_onBackPressed();", new Runnable() { // from class: com.applovin.impl.adview.l.2
            @Override // java.lang.Runnable
            public void run() {
                l.this.dismiss();
            }
        });
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        try {
            Window window = getWindow();
            if (window != null) {
                window.setFlags(this.f4438a.getWindow().getAttributes().flags, this.f4438a.getWindow().getAttributes().flags);
                window.addFlags(16777216);
            } else if (com.applovin.impl.sdk.v.a()) {
                this.f4440c.e("ExpandedAdDialog", "Unable to turn on hardware acceleration - window is null");
            }
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.v.a()) {
                this.f4440c.b("ExpandedAdDialog", "Setting window flags failed.", th);
            }
        }
    }
}
