package com.ironsource.mediationsdk;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.sdk.BannerListener;
/* loaded from: classes3.dex */
public class IronSourceBannerLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private View f10702a;

    /* renamed from: b  reason: collision with root package name */
    private ISBannerSize f10703b;

    /* renamed from: c  reason: collision with root package name */
    private String f10704c;

    /* renamed from: d  reason: collision with root package name */
    private Activity f10705d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f10706e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f10707f;

    /* renamed from: g  reason: collision with root package name */
    private BannerListener f10708g;

    public IronSourceBannerLayout(Activity activity, ISBannerSize iSBannerSize) {
        super(activity);
        this.f10706e = false;
        this.f10707f = false;
        this.f10705d = activity;
        this.f10703b = iSBannerSize == null ? ISBannerSize.BANNER : iSBannerSize;
    }

    static /* synthetic */ boolean a(IronSourceBannerLayout ironSourceBannerLayout, boolean z) {
        ironSourceBannerLayout.f10707f = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final IronSourceBannerLayout a() {
        IronSourceBannerLayout ironSourceBannerLayout = new IronSourceBannerLayout(this.f10705d, this.f10703b);
        ironSourceBannerLayout.setBannerListener(this.f10708g);
        ironSourceBannerLayout.setPlacementName(this.f10704c);
        return ironSourceBannerLayout;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final View view, final FrameLayout.LayoutParams layoutParams) {
        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.IronSourceBannerLayout.7
            @Override // java.lang.Runnable
            public final void run() {
                IronSourceBannerLayout.this.removeAllViews();
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(view);
                }
                IronSourceBannerLayout.this.f10702a = view;
                IronSourceBannerLayout.this.addView(view, 0, layoutParams);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final IronSourceError ironSourceError) {
        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.IronSourceBannerLayout.2
            @Override // java.lang.Runnable
            public final void run() {
                if (IronSourceBannerLayout.this.f10707f) {
                    IronLog.CALLBACK.info("onBannerAdLoadFailed error=" + ironSourceError);
                    IronSourceBannerLayout.this.f10708g.onBannerAdLoadFailed(ironSourceError);
                    return;
                }
                try {
                    if (IronSourceBannerLayout.this.f10702a != null) {
                        IronSourceBannerLayout ironSourceBannerLayout = IronSourceBannerLayout.this;
                        ironSourceBannerLayout.removeView(ironSourceBannerLayout.f10702a);
                        IronSourceBannerLayout.this.f10702a = null;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                if (IronSourceBannerLayout.this.f10708g != null) {
                    IronLog.CALLBACK.info("onBannerAdLoadFailed error=" + ironSourceError);
                    IronSourceBannerLayout.this.f10708g.onBannerAdLoadFailed(ironSourceError);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final String str) {
        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.IronSourceBannerLayout.1
            @Override // java.lang.Runnable
            public final void run() {
                IronLog.INTERNAL.verbose("smash - " + str);
                if (IronSourceBannerLayout.this.f10708g != null && !IronSourceBannerLayout.this.f10707f) {
                    IronLog.CALLBACK.info("");
                    IronSourceBannerLayout.this.f10708g.onBannerAdLoaded();
                }
                IronSourceBannerLayout.a(IronSourceBannerLayout.this, true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b() {
        this.f10706e = true;
        this.f10708g = null;
        this.f10705d = null;
        this.f10703b = null;
        this.f10704c = null;
        this.f10702a = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.IronSourceBannerLayout.3
            @Override // java.lang.Runnable
            public final void run() {
                if (IronSourceBannerLayout.this.f10708g != null) {
                    IronLog.CALLBACK.info("");
                    IronSourceBannerLayout.this.f10708g.onBannerAdClicked();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.IronSourceBannerLayout.4
            @Override // java.lang.Runnable
            public final void run() {
                if (IronSourceBannerLayout.this.f10708g != null) {
                    IronLog.CALLBACK.info("");
                    IronSourceBannerLayout.this.f10708g.onBannerAdScreenPresented();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.IronSourceBannerLayout.5
            @Override // java.lang.Runnable
            public final void run() {
                if (IronSourceBannerLayout.this.f10708g != null) {
                    IronLog.CALLBACK.info("");
                    IronSourceBannerLayout.this.f10708g.onBannerAdScreenDismissed();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        com.ironsource.environment.e.c.f10584a.a(new Runnable() { // from class: com.ironsource.mediationsdk.IronSourceBannerLayout.6
            @Override // java.lang.Runnable
            public final void run() {
                if (IronSourceBannerLayout.this.f10708g != null) {
                    IronLog.CALLBACK.info("");
                    IronSourceBannerLayout.this.f10708g.onBannerAdLeftApplication();
                }
            }
        });
    }

    public Activity getActivity() {
        return this.f10705d;
    }

    public BannerListener getBannerListener() {
        return this.f10708g;
    }

    public View getBannerView() {
        return this.f10702a;
    }

    public String getPlacementName() {
        return this.f10704c;
    }

    public ISBannerSize getSize() {
        return this.f10703b;
    }

    public boolean isDestroyed() {
        return this.f10706e;
    }

    public void removeBannerListener() {
        IronLog.API.info("");
        this.f10708g = null;
    }

    public void setBannerListener(BannerListener bannerListener) {
        IronLog.API.info("");
        this.f10708g = bannerListener;
    }

    public void setPlacementName(String str) {
        this.f10704c = str;
    }
}
