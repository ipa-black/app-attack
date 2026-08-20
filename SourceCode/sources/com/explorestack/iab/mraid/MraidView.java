package com.explorestack.iab.mraid;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.explorestack.iab.CacheControl;
import com.explorestack.iab.bridge.JsBridgeHandler;
import com.explorestack.iab.measurer.MraidAdMeasurer;
import com.explorestack.iab.mraid.j;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.utils.IabClickCallback;
import com.explorestack.iab.utils.IabElementStyle;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.utils.l;
import com.explorestack.iab.view.a;
import com.google.android.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public class MraidView extends com.explorestack.iab.view.a implements a.d, IabClickCallback {
    public final String A;
    public final float B;
    public final float C;
    public final float D;
    public final boolean E;
    public final boolean F;
    public final boolean G;
    public final boolean H;
    public final AtomicBoolean I;
    public final AtomicBoolean J;
    public final AtomicBoolean K;
    public boolean L;
    public boolean M;
    public boolean N;
    public final a.d O;
    public final IabElementStyle P;
    public final IabElementStyle Q;
    public final IabElementStyle R;
    public final IabElementStyle S;
    public com.explorestack.iab.utils.l T;
    public com.explorestack.iab.utils.j U;
    public Runnable V;
    public Integer W;

    /* renamed from: h  reason: collision with root package name */
    public final MutableContextWrapper f9286h;
    public com.explorestack.iab.mraid.h i;
    public final com.explorestack.iab.mraid.j j;
    public com.explorestack.iab.mraid.j k;
    public com.explorestack.iab.view.a l;
    public com.explorestack.iab.view.a m;
    public com.explorestack.iab.utils.h n;
    public WeakReference<Activity> o;
    public final GestureDetector p;
    public final com.explorestack.iab.mraid.b q;
    public final com.explorestack.iab.mraid.f r;
    public final com.explorestack.iab.mraid.k s;
    public String t;
    public MraidViewListener u;
    public final MraidAdMeasurer v;
    public final com.explorestack.iab.mraid.d w;
    public final CacheControl x;
    public final String y;
    public final String z;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        public final com.explorestack.iab.mraid.d f9287a;

        /* renamed from: b  reason: collision with root package name */
        public CacheControl f9288b;

        /* renamed from: c  reason: collision with root package name */
        public String f9289c;

        /* renamed from: d  reason: collision with root package name */
        public String f9290d;

        /* renamed from: e  reason: collision with root package name */
        public String f9291e;

        /* renamed from: f  reason: collision with root package name */
        public String[] f9292f;

        /* renamed from: g  reason: collision with root package name */
        public IabElementStyle f9293g;

        /* renamed from: h  reason: collision with root package name */
        public IabElementStyle f9294h;
        public IabElementStyle i;
        public IabElementStyle j;
        public float k;
        public float l;
        public MraidViewListener listener;
        public float m;
        public MraidAdMeasurer mraidAdMeasurer;
        public boolean n;
        public boolean o;
        public boolean p;
        public boolean q;

        public Builder() {
            this(com.explorestack.iab.mraid.d.INLINE);
        }

        public Builder(com.explorestack.iab.mraid.d dVar) {
            this.f9292f = null;
            this.k = 3.0f;
            this.l = 0.0f;
            this.m = 0.0f;
            this.f9287a = dVar;
            this.f9288b = CacheControl.FullLoad;
            this.f9289c = "https://localhost";
        }

        public MraidView build(Context context) {
            return new MraidView(context, this, null);
        }

        public Builder forceUseNativeCloseButton(boolean z) {
            this.o = z;
            return this;
        }

        public Builder setAdMeasurer(MraidAdMeasurer mraidAdMeasurer) {
            this.mraidAdMeasurer = mraidAdMeasurer;
            return this;
        }

        public Builder setBaseUrl(String str) {
            this.f9289c = str;
            return this;
        }

        public Builder setCacheControl(CacheControl cacheControl) {
            this.f9288b = cacheControl;
            return this;
        }

        public Builder setCloseStyle(IabElementStyle iabElementStyle) {
            this.f9293g = iabElementStyle;
            return this;
        }

        public Builder setCloseTimeSec(float f2) {
            this.l = f2;
            return this;
        }

        public Builder setCountDownStyle(IabElementStyle iabElementStyle) {
            this.f9294h = iabElementStyle;
            return this;
        }

        public Builder setDurationSec(float f2) {
            this.m = f2;
            return this;
        }

        public Builder setIsTag(boolean z) {
            this.n = z;
            return this;
        }

        public Builder setListener(MraidViewListener mraidViewListener) {
            this.listener = mraidViewListener;
            return this;
        }

        public Builder setLoadingStyle(IabElementStyle iabElementStyle) {
            this.i = iabElementStyle;
            return this;
        }

        public Builder setPageFinishedScript(String str) {
            this.f9291e = str;
            return this;
        }

        public Builder setPlaceholderTimeoutSec(float f2) {
            this.k = f2;
            return this;
        }

        public Builder setProductLink(String str) {
            this.f9290d = str;
            return this;
        }

        public Builder setProgressStyle(IabElementStyle iabElementStyle) {
            this.j = iabElementStyle;
            return this;
        }

        public Builder setR1(boolean z) {
            this.p = z;
            return this;
        }

        public Builder setR2(boolean z) {
            this.q = z;
            return this;
        }

        public Builder setSupportedNativeFeatures(String[] strArr) {
            this.f9292f = strArr;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ View f9295a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ Runnable f9296b;

        public a(View view, Runnable runnable) {
            this.f9295a = view;
            this.f9296b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            MraidView.this.b(this.f9295a);
            Runnable runnable = this.f9296b;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f9298a;

        static {
            int[] iArr = new int[CacheControl.values().length];
            f9298a = iArr;
            try {
                iArr[CacheControl.FullLoad.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9298a[CacheControl.Stream.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9298a[CacheControl.PartialLoad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public class c extends GestureDetector.SimpleOnGestureListener {
        public c() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public class d extends l {
        public d() {
            super(MraidView.this, null);
        }

        @Override // com.explorestack.iab.mraid.j.b
        public void a(boolean z) {
            if (z) {
                MraidView.this.m();
                if (MraidView.this.L) {
                    return;
                }
                MraidView.this.L = true;
                if (MraidView.this.u != null) {
                    MraidView.this.u.onShown(MraidView.this);
                }
            }
        }

        @Override // com.explorestack.iab.mraid.j.b
        public void b(boolean z) {
            if (MraidView.this.F) {
                return;
            }
            if (z && !MraidView.this.N) {
                MraidView.this.N = true;
            }
            MraidView mraidView = MraidView.this;
            mraidView.a(mraidView.j);
        }

        @Override // com.explorestack.iab.mraid.j.b
        public void d(String str) {
            MraidView.this.c(str);
        }
    }

    /* loaded from: classes2.dex */
    public class e implements l.c {
        public e() {
        }

        @Override // com.explorestack.iab.utils.l.c
        public void a() {
            MraidView.this.U.c();
            if (MraidView.this.M || !MraidView.this.H || MraidView.this.D <= 0.0f) {
                return;
            }
            MraidView.this.i();
        }

        @Override // com.explorestack.iab.utils.l.c
        public void a(float f2, long j, long j2) {
            com.explorestack.iab.utils.j jVar = MraidView.this.U;
            jVar.a(f2, (int) (j / 1000), (int) (j2 / 1000));
        }
    }

    /* loaded from: classes2.dex */
    public class f implements a.d {
        public f() {
        }

        @Override // com.explorestack.iab.view.a.d
        public void onCloseClick() {
            MraidView.this.a(2);
        }

        @Override // com.explorestack.iab.view.a.d
        public void onCountDownFinish() {
        }
    }

    /* loaded from: classes2.dex */
    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MraidView.this.i == com.explorestack.iab.mraid.h.RESIZED) {
                MraidView.this.e();
            } else if (MraidView.this.i == com.explorestack.iab.mraid.h.EXPANDED) {
                MraidView.this.d();
            } else if (MraidView.this.j()) {
                MraidView.this.setViewState(com.explorestack.iab.mraid.h.HIDDEN);
                if (MraidView.this.u != null) {
                    MraidView.this.u.onClose(MraidView.this);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ com.explorestack.iab.mraid.j f9304a;

        /* loaded from: classes2.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ Point f9306a;

            /* renamed from: com.explorestack.iab.mraid.MraidView$h$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class RunnableC0255a implements Runnable {
                public RunnableC0255a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    MraidView.this.g();
                }
            }

            public a(Point point) {
                this.f9306a = point;
            }

            @Override // java.lang.Runnable
            public void run() {
                RunnableC0255a runnableC0255a = new RunnableC0255a();
                h hVar = h.this;
                MraidView mraidView = MraidView.this;
                Point point = this.f9306a;
                mraidView.b(point.x, point.y, hVar.f9304a, runnableC0255a);
            }
        }

        public h(com.explorestack.iab.mraid.j jVar) {
            this.f9304a = jVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            IabElementStyle resolveDefCloseStyle = Assets.resolveDefCloseStyle(MraidView.this.getContext(), MraidView.this.P);
            Point clickPoint = Utils.getClickPoint(MraidView.this.r.e(), resolveDefCloseStyle.getHorizontalPosition().intValue(), resolveDefCloseStyle.getVerticalPosition().intValue());
            MraidView.this.a(clickPoint.x, clickPoint.y, this.f9304a, new a(clickPoint));
        }
    }

    /* loaded from: classes2.dex */
    public class i extends l {
        public i() {
            super(MraidView.this, null);
        }

        @Override // com.explorestack.iab.mraid.j.b
        public void a(boolean z) {
        }

        @Override // com.explorestack.iab.mraid.j.b
        public void b(boolean z) {
            if (MraidView.this.k != null) {
                MraidView mraidView = MraidView.this;
                mraidView.a(mraidView.k);
            }
        }

        @Override // com.explorestack.iab.mraid.j.b
        public void d(String str) {
            MraidView.this.h();
        }
    }

    /* loaded from: classes2.dex */
    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MraidView.this.a((Runnable) null);
        }
    }

    /* loaded from: classes2.dex */
    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MraidView.this.k.a(MraidView.this.q);
            MraidView.this.k.a(MraidView.this.w);
            MraidView.this.k.a(MraidView.this.k.f());
            MraidView.this.k.a(MraidView.this.i);
            MraidView.this.k.b(MraidView.this.A);
            MraidView.this.k.h();
        }
    }

    /* loaded from: classes2.dex */
    public abstract class l implements j.b {
        private l() {
        }

        public /* synthetic */ l(MraidView mraidView, c cVar) {
            this();
        }

        @Override // com.explorestack.iab.mraid.j.b
        public void a() {
            MraidLog.d("MRAIDView", "Callback: onLoaded");
            MraidView.this.l();
        }

        @Override // com.explorestack.iab.mraid.j.b
        public void a(int i) {
            MraidLog.d("MRAIDView", "Callback: onError (" + i + ")");
            MraidView.this.a(i);
        }

        @Override // com.explorestack.iab.mraid.j.b
        public void a(com.explorestack.iab.mraid.c cVar) {
            MraidLog.d("MRAIDView", "Callback: onOrientation " + cVar);
            if (MraidView.this.j() || MraidView.this.i == com.explorestack.iab.mraid.h.EXPANDED) {
                MraidView.this.a(cVar);
            }
        }

        @Override // com.explorestack.iab.mraid.j.b
        public void a(com.explorestack.iab.mraid.e eVar) {
            MraidLog.d("MRAIDView", "Callback: onResize (" + eVar + ")");
            MraidView.this.a(eVar);
        }

        @Override // com.explorestack.iab.mraid.j.b
        public void a(String str) {
            MraidLog.d("MRAIDView", "Callback: onOpen (" + str + ")");
            MraidView.this.b(str);
        }

        @Override // com.explorestack.iab.mraid.j.b
        public void b() {
            MraidLog.d("MRAIDView", "Callback: onClose");
            MraidView.this.f();
        }

        @Override // com.explorestack.iab.mraid.j.b
        public void b(String str) {
            MraidLog.d("MRAIDView", "Callback: onExpand " + str);
            if (MraidView.this.j()) {
                return;
            }
            MraidView.this.a(str);
        }

        @Override // com.explorestack.iab.mraid.j.b
        public void c(String str) {
            MraidLog.d("MRAIDView", "Callback: playVideo " + str);
            try {
                String decode = URLDecoder.decode(str, C.UTF8_NAME);
                if (MraidView.this.u != null) {
                    MraidView.this.u.onPlayVideo(MraidView.this, decode);
                }
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
    }

    private MraidView(Context context, Builder builder) {
        super(context);
        this.i = com.explorestack.iab.mraid.h.LOADING;
        this.I = new AtomicBoolean(false);
        this.J = new AtomicBoolean(false);
        this.K = new AtomicBoolean(false);
        this.L = false;
        this.M = false;
        this.N = false;
        MutableContextWrapper mutableContextWrapper = new MutableContextWrapper(context);
        this.f9286h = mutableContextWrapper;
        this.u = builder.listener;
        this.w = builder.f9287a;
        this.x = builder.f9288b;
        this.y = builder.f9289c;
        this.z = builder.f9290d;
        this.A = builder.f9291e;
        this.B = builder.k;
        this.C = builder.l;
        float f2 = builder.m;
        this.D = f2;
        this.E = builder.n;
        this.F = builder.o;
        this.G = builder.p;
        this.H = builder.q;
        MraidAdMeasurer mraidAdMeasurer = builder.mraidAdMeasurer;
        this.v = mraidAdMeasurer;
        this.P = builder.f9293g;
        this.Q = builder.f9294h;
        this.R = builder.i;
        IabElementStyle iabElementStyle = builder.j;
        this.S = iabElementStyle;
        this.q = new com.explorestack.iab.mraid.b(builder.f9292f);
        this.r = new com.explorestack.iab.mraid.f(context);
        this.s = new com.explorestack.iab.mraid.k();
        this.p = new GestureDetector(context, new c());
        com.explorestack.iab.mraid.j jVar = new com.explorestack.iab.mraid.j(mutableContextWrapper, new d());
        this.j = jVar;
        addView(jVar.c(), new FrameLayout.LayoutParams(-1, -1, 17));
        if (f2 > 0.0f) {
            com.explorestack.iab.utils.j jVar2 = new com.explorestack.iab.utils.j(null);
            this.U = jVar2;
            jVar2.a(context, (ViewGroup) this, iabElementStyle);
            com.explorestack.iab.utils.l lVar = new com.explorestack.iab.utils.l(this, new e());
            this.T = lVar;
            lVar.a(f2);
        }
        this.O = new f();
        setCloseClickListener(this);
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.registerAdContainer(this);
            mraidAdMeasurer.registerAdView(jVar.c());
        }
    }

    public /* synthetic */ MraidView(Context context, Builder builder, c cVar) {
        this(context, builder);
    }

    private void setResizedViewSizeAndPosition(com.explorestack.iab.mraid.e eVar) {
        MraidLog.d("MRAIDView", "setResizedViewSizeAndPosition: " + eVar);
        if (this.l == null) {
            return;
        }
        int dpToPx = Utils.dpToPx(getContext(), eVar.f9319a);
        int dpToPx2 = Utils.dpToPx(getContext(), eVar.f9320b);
        int dpToPx3 = Utils.dpToPx(getContext(), eVar.f9321c);
        int dpToPx4 = Utils.dpToPx(getContext(), eVar.f9322d);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dpToPx, dpToPx2);
        Rect b2 = this.r.b();
        layoutParams.leftMargin = b2.left + dpToPx3;
        layoutParams.topMargin = b2.top + dpToPx4;
        this.l.setLayoutParams(layoutParams);
    }

    public final MotionEvent a(int i2, int i3, int i4) {
        return MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), i2, i3, i4, 0);
    }

    public final void a(int i2) {
        if (this.u != null) {
            if (this.x == CacheControl.PartialLoad && this.I.get() && !this.K.get() && i2 == 0) {
                this.u.onError(this, 3);
            } else {
                this.u.onError(this, i2);
            }
        }
    }

    public final void a(int i2, int i3, com.explorestack.iab.mraid.j jVar, Runnable runnable) {
        if (this.M) {
            return;
        }
        a(jVar.c(), i2, i3);
        this.V = runnable;
        postDelayed(runnable, 150L);
    }

    public final void a(Activity activity) {
        Integer num = this.W;
        if (num != null) {
            activity.setRequestedOrientation(num.intValue());
            this.W = null;
        }
    }

    public final void a(View view) {
        if (view == null) {
            return;
        }
        if (view instanceof ViewGroup) {
            ((ViewGroup) view).removeAllViews();
        }
        Utils.removeFromParent(view);
    }

    public final void a(com.explorestack.iab.mraid.c cVar) {
        if (cVar == null) {
            return;
        }
        Activity peekActivity = peekActivity();
        MraidLog.d("MRAIDView", "applyOrientation: " + cVar);
        if (peekActivity == null) {
            MraidLog.d("MRAIDView", "no any interacted activities");
            return;
        }
        b(peekActivity);
        peekActivity.setRequestedOrientation(cVar.a(peekActivity));
    }

    public final void a(com.explorestack.iab.mraid.e eVar) {
        com.explorestack.iab.mraid.h hVar = this.i;
        if (hVar == com.explorestack.iab.mraid.h.LOADING || hVar == com.explorestack.iab.mraid.h.HIDDEN || hVar == com.explorestack.iab.mraid.h.EXPANDED || this.w == com.explorestack.iab.mraid.d.INTERSTITIAL) {
            MraidLog.d("MRAIDView", "Callback: onResize (invalidate state: " + this.i + ")");
            return;
        }
        com.explorestack.iab.view.a aVar = this.l;
        if (aVar == null || aVar.getParent() == null) {
            View a2 = com.explorestack.iab.mraid.g.a(n(), this);
            if (!(a2 instanceof ViewGroup)) {
                MraidLog.a("MRAIDView", "Can't add resized view because can't find required parent");
                return;
            }
            com.explorestack.iab.view.a aVar2 = new com.explorestack.iab.view.a(getContext());
            this.l = aVar2;
            aVar2.setCloseClickListener(this);
            ((ViewGroup) a2).addView(this.l);
        }
        com.explorestack.iab.mraid.i c2 = this.j.c();
        Utils.removeFromParent(c2);
        this.l.addView(c2);
        IabElementStyle resolveDefCloseStyle = Assets.resolveDefCloseStyle(getContext(), this.P);
        resolveDefCloseStyle.setHorizontalPosition(Integer.valueOf(eVar.f9323e.a() & 7));
        resolveDefCloseStyle.setVerticalPosition(Integer.valueOf(eVar.f9323e.a() & 112));
        this.l.setCloseStyle(resolveDefCloseStyle);
        this.l.setCloseVisibility(false, this.C);
        setResizedViewSizeAndPosition(eVar);
        setViewState(com.explorestack.iab.mraid.h.RESIZED);
    }

    public final void a(com.explorestack.iab.mraid.i iVar, int i2, int i3) {
        iVar.dispatchTouchEvent(a(0, i2, i3));
        iVar.dispatchTouchEvent(a(1, i2, i3));
    }

    public final void a(com.explorestack.iab.mraid.j jVar) {
        boolean z = !jVar.e() || this.F;
        com.explorestack.iab.view.a aVar = this.l;
        if (aVar != null || (aVar = this.m) != null) {
            aVar.setCloseVisibility(z, this.C);
        } else if (j()) {
            setCloseVisibility(z, this.N ? 0.0f : this.C);
        }
    }

    public final void a(com.explorestack.iab.view.a aVar, com.explorestack.iab.mraid.j jVar) {
        setCloseClickListener(this);
        aVar.setCloseStyle(this.P);
        aVar.setCountDownStyle(this.Q);
        a(jVar);
    }

    public final void a(Runnable runnable) {
        com.explorestack.iab.mraid.j jVar = this.k;
        if (jVar == null) {
            jVar = this.j;
        }
        com.explorestack.iab.mraid.i c2 = jVar.c();
        this.s.a(this, c2).a(new a(c2, runnable));
    }

    public final void a(String str) {
        com.explorestack.iab.mraid.j jVar;
        if (j()) {
            return;
        }
        com.explorestack.iab.mraid.h hVar = this.i;
        if (hVar == com.explorestack.iab.mraid.h.DEFAULT || hVar == com.explorestack.iab.mraid.h.RESIZED) {
            if (str == null) {
                jVar = this.j;
            } else {
                try {
                    String decode = URLDecoder.decode(str, C.UTF8_NAME);
                    if (!decode.startsWith("http://") && !decode.startsWith("https://")) {
                        decode = this.y + decode;
                    }
                    com.explorestack.iab.mraid.j jVar2 = new com.explorestack.iab.mraid.j(this.f9286h, new i());
                    this.k = jVar2;
                    jVar2.c(decode);
                    jVar = jVar2;
                } catch (UnsupportedEncodingException unused) {
                    return;
                }
            }
            com.explorestack.iab.view.a aVar = this.m;
            if (aVar == null || aVar.getParent() == null) {
                View a2 = com.explorestack.iab.mraid.g.a(n(), this);
                if (!(a2 instanceof ViewGroup)) {
                    MraidLog.a("MRAIDView", "Can't add resized view because can't find required parent");
                    return;
                }
                com.explorestack.iab.view.a aVar2 = new com.explorestack.iab.view.a(getContext());
                this.m = aVar2;
                aVar2.setCloseClickListener(this);
                ((ViewGroup) a2).addView(this.m);
            }
            com.explorestack.iab.mraid.i c2 = jVar.c();
            Utils.removeFromParent(c2);
            this.m.addView(c2);
            a(this.m, jVar);
            a(jVar.b());
            setViewState(com.explorestack.iab.mraid.h.EXPANDED);
            MraidViewListener mraidViewListener = this.u;
            if (mraidViewListener != null) {
                mraidViewListener.onExpand(this);
            }
        }
    }

    public final void b(int i2, int i3, com.explorestack.iab.mraid.j jVar, Runnable runnable) {
        if (this.M) {
            return;
        }
        jVar.a(i2, i3);
        this.V = runnable;
        postDelayed(runnable, 150L);
    }

    public final void b(Activity activity) {
        this.W = Integer.valueOf(activity.getRequestedOrientation());
    }

    public final void b(View view) {
        Context n = n();
        DisplayMetrics displayMetrics = n.getResources().getDisplayMetrics();
        this.r.a(displayMetrics.widthPixels, displayMetrics.heightPixels);
        int[] iArr = new int[2];
        View b2 = com.explorestack.iab.mraid.g.b(n, this);
        b2.getLocationOnScreen(iArr);
        this.r.c(iArr[0], iArr[1], b2.getWidth(), b2.getHeight());
        getLocationOnScreen(iArr);
        this.r.b(iArr[0], iArr[1], getWidth(), getHeight());
        view.getLocationOnScreen(iArr);
        this.r.a(iArr[0], iArr[1], view.getWidth(), view.getHeight());
        this.j.a(this.r);
        com.explorestack.iab.mraid.j jVar = this.k;
        if (jVar != null) {
            jVar.a(this.r);
        }
    }

    public void b(String str) {
        this.M = true;
        removeCallbacks(this.V);
        if (this.u == null || str.startsWith("tel") || str.startsWith("sms")) {
            return;
        }
        setLoadingVisible(true);
        this.u.onOpenBrowser(this, str, this);
    }

    public final void c(String str) {
        if (this.i != com.explorestack.iab.mraid.h.LOADING) {
            return;
        }
        this.j.a(this.q);
        this.j.a(this.w);
        com.explorestack.iab.mraid.j jVar = this.j;
        jVar.a(jVar.f());
        this.j.b(this.A);
        b(this.j.c());
        setViewState(com.explorestack.iab.mraid.h.DEFAULT);
        m();
        setLoadingVisible(false);
        if (j()) {
            a((com.explorestack.iab.view.a) this, this.j);
        }
        MraidAdMeasurer mraidAdMeasurer = this.v;
        if (mraidAdMeasurer != null) {
            mraidAdMeasurer.onAdViewReady(this.j.c());
        }
        if (this.x != CacheControl.FullLoad || this.E || str.equals("data:text/html,<html></html>")) {
            return;
        }
        l();
    }

    @Override // com.explorestack.iab.view.a
    public boolean canBeClosed() {
        if (getOnScreenTimeMs() <= com.explorestack.iab.mraid.g.f9333a && !this.j.d()) {
            if (this.F || !this.j.e()) {
                return super.canBeClosed();
            }
            return false;
        }
        return true;
    }

    @Override // com.explorestack.iab.utils.IabClickCallback
    public void clickHandleCanceled() {
        setLoadingVisible(false);
    }

    @Override // com.explorestack.iab.utils.IabClickCallback
    public void clickHandleError() {
        setLoadingVisible(false);
    }

    @Override // com.explorestack.iab.utils.IabClickCallback
    public void clickHandled() {
        setLoadingVisible(false);
    }

    public final void d() {
        a((View) this.m);
        this.m = null;
        Activity peekActivity = peekActivity();
        if (peekActivity != null) {
            a(peekActivity);
        }
        com.explorestack.iab.mraid.j jVar = this.k;
        if (jVar != null) {
            jVar.a();
            this.k = null;
        } else {
            addView(this.j.c());
        }
        setViewState(com.explorestack.iab.mraid.h.DEFAULT);
    }

    public final void d(String str) {
        if (str == null && this.y == null) {
            a(0);
            return;
        }
        this.j.a(this.y, String.format("<script type='application/javascript'>%s</script>%s%s", com.explorestack.iab.mraid.g.b(), JsBridgeHandler.a(), com.explorestack.iab.mraid.g.d(str)), "text/html", C.UTF8_NAME);
        this.j.a(MraidLog.a());
    }

    public void destroy() {
        this.u = null;
        this.o = null;
        this.s.a();
        Activity peekActivity = peekActivity();
        if (peekActivity != null) {
            a(peekActivity);
        }
        a((View) this.l);
        a((View) this.m);
        this.j.a();
        com.explorestack.iab.mraid.j jVar = this.k;
        if (jVar != null) {
            jVar.a();
        }
        com.explorestack.iab.utils.l lVar = this.T;
        if (lVar != null) {
            lVar.a();
        }
    }

    public final void e() {
        a((View) this.l);
        this.l = null;
        addView(this.j.c());
        setViewState(com.explorestack.iab.mraid.h.DEFAULT);
    }

    public void f() {
        if (this.M || !this.G) {
            Utils.onUiThread(new g());
        } else {
            i();
        }
    }

    public final void g() {
        if (this.M || TextUtils.isEmpty(this.z)) {
            return;
        }
        b(this.z);
    }

    public final void h() {
        if (this.k == null) {
            return;
        }
        a(new k());
    }

    public final void i() {
        com.explorestack.iab.mraid.j jVar = this.k;
        if (jVar == null) {
            jVar = this.j;
        }
        h hVar = new h(jVar);
        Point defaultClickPoint = Utils.getDefaultClickPoint(this.r.e());
        a(defaultClickPoint.x, defaultClickPoint.y, jVar, hVar);
    }

    public boolean j() {
        return this.w == com.explorestack.iab.mraid.d.INTERSTITIAL;
    }

    public final boolean k() {
        return this.i != com.explorestack.iab.mraid.h.LOADING;
    }

    public final void l() {
        MraidViewListener mraidViewListener;
        if (this.I.getAndSet(true) || (mraidViewListener = this.u) == null) {
            return;
        }
        mraidViewListener.onLoaded(this);
    }

    public void load(String str) {
        int i2 = b.f9298a[this.x.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                this.t = str;
                l();
                return;
            } else if (i2 != 3) {
                return;
            } else {
                l();
            }
        }
        d(str);
    }

    public final void m() {
        if (this.J.getAndSet(true)) {
            return;
        }
        this.j.h();
    }

    public final Context n() {
        Activity peekActivity = peekActivity();
        return peekActivity == null ? getContext() : peekActivity;
    }

    public final void o() {
        setCloseClickListener(this.O);
        setCloseVisibility(true, this.B);
    }

    @Override // com.explorestack.iab.view.a.d
    public void onCloseClick() {
        f();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        MraidLog.d("MRAIDView", "onConfigurationChanged: " + Utils.orientationToString(configuration.orientation));
        Utils.onUiThread(new j());
    }

    @Override // com.explorestack.iab.view.a.d
    public void onCountDownFinish() {
        if (!this.M && this.H && this.D == 0.0f) {
            i();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.p.onTouchEvent(motionEvent)) {
            motionEvent.setAction(3);
        }
        return super.onTouchEvent(motionEvent);
    }

    public Activity peekActivity() {
        WeakReference<Activity> weakReference = this.o;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public void setLastInteractedActivity(Activity activity) {
        if (activity != null) {
            this.o = new WeakReference<>(activity);
            this.f9286h.setBaseContext(activity);
        }
    }

    public void setLoadingVisible(boolean z) {
        if (!z) {
            com.explorestack.iab.utils.h hVar = this.n;
            if (hVar != null) {
                hVar.a(8);
                return;
            }
            return;
        }
        if (this.n == null) {
            com.explorestack.iab.utils.h hVar2 = new com.explorestack.iab.utils.h(null);
            this.n = hVar2;
            hVar2.a(getContext(), (ViewGroup) this, this.R);
        }
        this.n.a(0);
        this.n.a();
    }

    public void setViewState(com.explorestack.iab.mraid.h hVar) {
        this.i = hVar;
        this.j.a(hVar);
        com.explorestack.iab.mraid.j jVar = this.k;
        if (jVar != null) {
            jVar.a(hVar);
        }
        if (hVar != com.explorestack.iab.mraid.h.HIDDEN) {
            a((Runnable) null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0023, code lost:
        if (j() != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
        if (j() != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0048, code lost:
        a((com.explorestack.iab.view.a) r3, r3.j);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004d, code lost:
        m();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void show(android.app.Activity r4) {
        /*
            r3 = this;
            java.util.concurrent.atomic.AtomicBoolean r0 = r3.K
            r1 = 1
            r0.set(r1)
            int[] r0 = com.explorestack.iab.mraid.MraidView.b.f9298a
            com.explorestack.iab.CacheControl r2 = r3.x
            int r2 = r2.ordinal()
            r0 = r0[r2]
            if (r0 == r1) goto L42
            r1 = 2
            if (r0 == r1) goto L30
            r1 = 3
            if (r0 == r1) goto L19
            goto L50
        L19:
            boolean r0 = r3.k()
            if (r0 == 0) goto L26
            boolean r0 = r3.j()
            if (r0 == 0) goto L4d
            goto L48
        L26:
            boolean r0 = r3.j()
            if (r0 == 0) goto L50
            r3.o()
            goto L50
        L30:
            boolean r0 = r3.j()
            if (r0 == 0) goto L39
            r3.o()
        L39:
            java.lang.String r0 = r3.t
            r3.d(r0)
            r0 = 0
            r3.t = r0
            goto L50
        L42:
            boolean r0 = r3.j()
            if (r0 == 0) goto L4d
        L48:
            com.explorestack.iab.mraid.j r0 = r3.j
            r3.a(r3, r0)
        L4d:
            r3.m()
        L50:
            r3.setLastInteractedActivity(r4)
            com.explorestack.iab.mraid.j r4 = r3.j
            com.explorestack.iab.mraid.c r4 = r4.b()
            r3.a(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.mraid.MraidView.show(android.app.Activity):void");
    }
}
