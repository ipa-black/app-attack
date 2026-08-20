package com.appodeal.ads;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.appodeal.ads.Native;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.unified.UnifiedAdCallbackClickTrackListener;
import com.appodeal.ads.unified.UnifiedNativeAd;
import com.appodeal.ads.unified.UnifiedNativeCallback;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.utils.d0;
import com.appodeal.ads.utils.p;
import com.appodeal.ads.utils.q;
import com.explorestack.iab.vast.VastRequest;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
/* loaded from: classes.dex */
public final class l2 implements NativeAd, View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final s2 f6833a;

    /* renamed from: b  reason: collision with root package name */
    public final UnifiedNativeAd f6834b;

    /* renamed from: c  reason: collision with root package name */
    public final UnifiedNativeCallback f6835c;

    /* renamed from: d  reason: collision with root package name */
    public final String f6836d;

    /* renamed from: e  reason: collision with root package name */
    public final String f6837e;

    /* renamed from: f  reason: collision with root package name */
    public final String f6838f;

    /* renamed from: g  reason: collision with root package name */
    public final String f6839g;

    /* renamed from: h  reason: collision with root package name */
    public final String f6840h;
    public final String i;
    public String j;
    public Bitmap k;
    public String l;
    public Bitmap m;
    public NativeAdView n;
    public g2 o;
    public ProgressDialog p;
    public Uri q;
    public VastRequest r;
    public Handler s;
    public Runnable t;
    public com.appodeal.ads.segments.g u;
    public final double v;
    public boolean w;
    public final com.appodeal.ads.utils.q x = new com.appodeal.ads.utils.q();

    /* loaded from: classes.dex */
    public class a implements q.b {
        public a() {
        }

        @Override // com.appodeal.ads.utils.q.b
        public final void onHandleError() {
            l2.this.f();
        }

        @Override // com.appodeal.ads.utils.q.b
        public final void onHandled() {
            l2.this.f();
        }

        @Override // com.appodeal.ads.utils.q.b
        public final void processClick(UnifiedAdCallbackClickTrackListener unifiedAdCallbackClickTrackListener) {
            l2 l2Var = l2.this;
            l2Var.f6835c.onAdClicked(l2Var.f6834b, unifiedAdCallbackClickTrackListener);
        }
    }

    /* loaded from: classes.dex */
    public class b implements p.b {
    }

    /* loaded from: classes.dex */
    public class c implements View.OnAttachStateChangeListener {
        public c() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            l2.this.f();
        }
    }

    public l2(s2 s2Var, UnifiedNativeAd unifiedNativeAd, UnifiedNativeCallback unifiedNativeCallback) {
        this.f6833a = s2Var;
        this.f6834b = unifiedNativeAd;
        this.f6835c = unifiedNativeCallback;
        this.f6836d = a(25, unifiedNativeAd.getTitle());
        this.f6837e = a(100, unifiedNativeAd.getDescription());
        this.f6838f = a(25, unifiedNativeAd.getCallToAction());
        this.l = unifiedNativeAd.getImageUrl();
        this.j = unifiedNativeAd.getIconUrl();
        this.f6839g = unifiedNativeAd.getClickUrl();
        this.f6840h = unifiedNativeAd.getVideoUrl();
        this.i = unifiedNativeAd.getVastVideoTag();
        this.v = s2Var.getEcpm();
    }

    public static String a(int i, String str) {
        if (str == null || str.length() <= i) {
            return str;
        }
        String substring = str.substring(0, i);
        if (str.charAt(i) != ' ' && substring.lastIndexOf(" ") > 0) {
            substring = substring.substring(0, substring.lastIndexOf(" "));
        }
        return substring + "…";
    }

    public static void a(ImageView imageView, String str, Bitmap bitmap) {
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
            return;
        }
        b bVar = new b();
        if (!TextUtils.isEmpty(str) && imageView != null) {
            com.appodeal.ads.utils.s sVar = com.appodeal.ads.utils.s.f7824e;
            sVar.f7825a.execute(new p.a(imageView.getContext(), str, imageView, bVar));
            return;
        }
        Log.log(LogConstants.KEY_NATIVE, LogConstants.EVENT_ASSETS_ERROR, "Target ImageView or ImagePath is invalid");
    }

    public final int a() {
        UnifiedNativeAd unifiedNativeAd = this.f6834b;
        return unifiedNativeAd != null ? unifiedNativeAd.getAdId() : hashCode();
    }

    public final void a(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (!(childAt instanceof g2)) {
                if (childAt instanceof Button) {
                    ((Button) childAt).setOnClickListener(this);
                }
                if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt);
                }
            }
        }
    }

    public final void a(NativeMediaView nativeMediaView) {
        if (this.f6834b.onConfigureMediaView(nativeMediaView)) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        g2 g2Var = new g2(nativeMediaView.getContext());
        this.o = g2Var;
        if (Native.f6383c != Native.MediaAssetType.ICON) {
            g2Var.setNativeAd(this);
        }
        nativeMediaView.removeAllViews();
        nativeMediaView.addView(this.o, layoutParams);
    }

    public final Uri b() {
        return this.q;
    }

    public final VastRequest c() {
        return this.r;
    }

    @Override // com.appodeal.ads.NativeAd
    public final boolean canShow(Context context, String str) {
        if (str == null) {
            Log.log(new com.appodeal.ads.utils.exception_handler.a("Unable to check: placement = null"));
            return false;
        }
        return com.appodeal.ads.segments.h.a(str).a(context, AdType.Native, this.v);
    }

    @Override // com.appodeal.ads.NativeAd
    public final boolean containsVideo() {
        return (!this.f6834b.containsVideo() && TextUtils.isEmpty(this.f6840h) && TextUtils.isEmpty(this.i)) ? false : true;
    }

    public final String d() {
        return this.i;
    }

    @Override // com.appodeal.ads.NativeAd
    public final void destroy() {
        Timer timer;
        com.appodeal.ads.utils.o.b(this.f6833a);
        UnifiedNativeAd unifiedNativeAd = this.f6834b;
        if (unifiedNativeAd != null) {
            unifiedNativeAd.onDestroy();
        }
        NativeAdView nativeAdView = this.n;
        if (nativeAdView != null) {
            nativeAdView.setOnClickListener(null);
            for (View view : nativeAdView.getClickableViews()) {
                if (!(view instanceof g2)) {
                    view.setOnClickListener(null);
                }
            }
        }
        HashMap hashMap = com.appodeal.ads.utils.d0.f7759a;
        synchronized (hashMap) {
            d0.a aVar = (d0.a) hashMap.get(this);
            if (aVar != null) {
                aVar.b();
                hashMap.remove(this);
            }
        }
        g2 g2Var = this.o;
        if (g2Var != null && (timer = g2Var.i) != null) {
            timer.cancel();
            g2Var.i = null;
        }
        UnifiedNativeAd unifiedNativeAd2 = this.f6834b;
        if (unifiedNativeAd2 != null) {
            unifiedNativeAd2.onUnregisterForInteraction();
        }
        Bitmap bitmap = this.k;
        if (bitmap != null) {
            try {
                bitmap.recycle();
            } catch (Exception e2) {
                Log.log(LogConstants.KEY_NATIVE, LogConstants.EVENT_ASSETS, "bitmap recycling error");
                Log.log(e2);
            }
        }
        this.k = null;
        Bitmap bitmap2 = this.m;
        if (bitmap2 != null) {
            try {
                bitmap2.recycle();
            } catch (Exception e3) {
                Log.log(LogConstants.KEY_NATIVE, LogConstants.EVENT_ASSETS, "bitmap recycling error");
                Log.log(e3);
            }
        }
        this.m = null;
        Uri uri = this.q;
        if (uri == null || uri.getPath() == null) {
            return;
        }
        File file = new File(this.q.getPath());
        if (file.exists()) {
            file.delete();
        }
        this.q = null;
    }

    public final String e() {
        return this.f6840h;
    }

    public final void f() {
        Handler handler;
        ProgressDialog progressDialog = this.p;
        if (progressDialog != null && progressDialog.isShowing()) {
            this.p.dismiss();
            this.p = null;
        }
        Runnable runnable = this.t;
        if (runnable == null || (handler = this.s) == null) {
            return;
        }
        handler.removeCallbacks(runnable);
        this.s = null;
        this.t = null;
    }

    public final void g() {
        UnifiedNativeAd unifiedNativeAd = this.f6834b;
        if (unifiedNativeAd != null) {
            unifiedNativeAd.onAdVideoFinish();
        }
    }

    @Override // com.appodeal.ads.NativeAd
    public final String getAdProvider() {
        return this.f6833a.f6827d;
    }

    @Override // com.appodeal.ads.NativeAd
    public final String getAgeRestrictions() {
        return this.f6834b.getAgeRestriction();
    }

    @Override // com.appodeal.ads.NativeAd
    public final String getCallToAction() {
        return !TextUtils.isEmpty(this.f6838f) ? this.f6838f : "Install";
    }

    @Override // com.appodeal.ads.NativeAd
    public final String getDescription() {
        return this.f6837e;
    }

    @Override // com.appodeal.ads.NativeAd
    public final double getPredictedEcpm() {
        return this.v;
    }

    @Override // com.appodeal.ads.NativeAd
    public final View getProviderView(Context context) {
        return this.f6834b.obtainProviderView(context);
    }

    @Override // com.appodeal.ads.NativeAd
    public final float getRating() {
        Float rating = this.f6834b.getRating();
        if (rating == null) {
            return 5.0f;
        }
        return rating.floatValue();
    }

    @Override // com.appodeal.ads.NativeAd
    public final String getTitle() {
        return this.f6836d;
    }

    @Override // com.appodeal.ads.NativeAd
    public final boolean isPrecache() {
        return this.f6833a.f6826c.isPrecache();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f6834b.onAdClick(view);
        a(this.f6834b.getClickNotifyUrls());
        Context context = view.getContext();
        a(context);
        this.x.a(context, this.f6839g, this.f6834b.getTrackingPackageName(), this.f6834b.getTrackingPackageExpiry(), new a());
    }

    public static Map a(Rect rect, View view, HashMap hashMap) {
        if (hashMap.containsKey(view)) {
            if (view.getMeasuredHeight() > 0 && view.getMeasuredWidth() > 0 && view.isShown() && !n5.b(view) && rect.contains(n5.a(view))) {
                hashMap.remove(view);
            }
        } else if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                a(rect, viewGroup.getChildAt(i), hashMap);
            }
        }
        return hashMap;
    }

    public final void a(List<String> list) {
        Long x = ((t2) this.f6833a.f6824a).x();
        com.appodeal.ads.segments.g gVar = this.u;
        String a2 = gVar == null ? null : com.appodeal.ads.segments.g.a(gVar);
        if (list != null) {
            for (String str : list) {
                if (str != null) {
                    if (str.contains("${APPODEALX_SEGMENT_ID}")) {
                        str = str.replace("${APPODEALX_SEGMENT_ID}", x.toString());
                    }
                    if (a2 != null && str.contains("${APPODEALX_PLACEMENT_ID}")) {
                        str = str.replace("${APPODEALX_PLACEMENT_ID}", a2);
                    }
                    n5.a(str, com.appodeal.ads.utils.s.f7824e);
                }
            }
        }
    }

    public final void a(NativeAdView nativeAdView, String str) {
        this.u = com.appodeal.ads.segments.h.a(str);
        Native.a().l = this.u;
        nativeAdView.deconfigureContainer();
        this.f6834b.onConfigure(nativeAdView);
        NativeAdView nativeAdView2 = this.n;
        if (nativeAdView2 != null) {
            nativeAdView2.setOnClickListener(null);
            for (View view : nativeAdView2.getClickableViews()) {
                if (!(view instanceof g2)) {
                    view.setOnClickListener(null);
                }
            }
        }
        nativeAdView.setOnClickListener(this);
        for (View view2 : nativeAdView.getClickableViews()) {
            if (!(view2 instanceof g2)) {
                view2.setOnClickListener(this);
            }
        }
        a(nativeAdView);
        this.n = nativeAdView;
        if (!this.w) {
            long j = Native.a().q;
            m2 m2Var = new m2(this);
            HashMap hashMap = com.appodeal.ads.utils.d0.f7759a;
            synchronized (hashMap) {
                synchronized (hashMap) {
                    d0.a aVar = (d0.a) hashMap.get(this);
                    if (aVar != null) {
                        aVar.b();
                        hashMap.remove(this);
                    }
                }
            }
            d0.a aVar2 = new d0.a(nativeAdView, j, m2Var);
            hashMap.put(this, aVar2);
            aVar2.c();
        }
        g2 g2Var = this.o;
        if (g2Var != null) {
            Log.log(g2.x, LogConstants.EVENT_MV_STATE, "onViewAppearOnScreen");
            g2Var.o = true;
            if (Native.f6382b == Native.NativeAdType.Video) {
                if (g2Var.p) {
                    g2Var.f();
                } else if (g2Var.w != 3) {
                    g2Var.w = 4;
                    g2Var.h();
                }
            }
            if (Native.f6385e && Native.f6382b != Native.NativeAdType.NoVideo) {
                g2 g2Var2 = this.o;
                if (g2Var2.q) {
                    Timer timer = new Timer();
                    g2Var2.i = timer;
                    timer.schedule(new f2(g2Var2), 0L, 500);
                }
            }
        }
        this.f6834b.onRegisterForInteraction(nativeAdView);
    }

    public final void a(NativeIconView nativeIconView) {
        Context context = nativeIconView.getContext();
        View obtainIconView = this.f6834b.obtainIconView(context);
        ImageView imageView = obtainIconView;
        if (obtainIconView == null) {
            ImageView imageView2 = new ImageView(context);
            imageView2.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView = imageView2;
            if (Native.f6383c != Native.MediaAssetType.IMAGE) {
                a(imageView2, this.j, this.k);
                imageView = imageView2;
            }
        }
        if (imageView.getParent() != null && (imageView.getParent() instanceof ViewGroup)) {
            ((ViewGroup) imageView.getParent()).removeView(imageView);
        }
        nativeIconView.removeAllViews();
        nativeIconView.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
    }

    public final void a(Context context) {
        Activity activity;
        if (this.n == null || !(context instanceof Activity)) {
            return;
        }
        ProgressDialog progressDialog = this.p;
        if ((progressDialog != null && progressDialog.isShowing()) || (activity = (Activity) context) == null || activity.getWindow() == null || !activity.getWindow().isActive() || activity.getWindow().getDecorView().getWindowToken() == null) {
            return;
        }
        Log.log(LogConstants.KEY_NATIVE, LogConstants.EVENT_SHOW_PROGRESS);
        this.n.addOnAttachStateChangeListener(new c());
        ProgressDialog show = ProgressDialog.show(activity, "", "Loading...");
        this.p = show;
        show.setProgressStyle(0);
        this.p.setCancelable(false);
        this.t = new Runnable() { // from class: com.appodeal.ads.l2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                l2.this.f();
            }
        };
        Handler handler = new Handler(Looper.getMainLooper());
        this.s = handler;
        handler.postDelayed(this.t, 5000L);
    }
}
