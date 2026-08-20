package com.applovin.impl.sdk;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private final v f6228a;

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f6232e;

    /* renamed from: f  reason: collision with root package name */
    private final ViewTreeObserver.OnPreDrawListener f6233f;

    /* renamed from: g  reason: collision with root package name */
    private final WeakReference<View> f6234g;

    /* renamed from: h  reason: collision with root package name */
    private final long f6235h;
    private int k;
    private float l;
    private float m;
    private long n;

    /* renamed from: b  reason: collision with root package name */
    private final Object f6229b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final Rect f6230c = new Rect();
    private WeakReference<ViewTreeObserver> i = new WeakReference<>(null);
    private WeakReference<View> j = new WeakReference<>(null);
    private long o = Long.MIN_VALUE;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f6231d = new Handler(Looper.getMainLooper());

    /* loaded from: classes.dex */
    public interface a {
        void onLogVisibilityImpression();
    }

    public z(final View view, n nVar, a aVar) {
        this.f6228a = nVar.D();
        this.f6235h = ((Long) nVar.a(com.applovin.impl.sdk.c.b.cb)).longValue();
        this.f6234g = new WeakReference<>(view);
        final WeakReference weakReference = new WeakReference(aVar);
        this.f6232e = new Runnable() { // from class: com.applovin.impl.sdk.z.1
            @Override // java.lang.Runnable
            public void run() {
                View view2 = (View) z.this.f6234g.get();
                ViewGroup viewGroup = view2 instanceof ViewGroup ? (ViewGroup) view2 : null;
                View view3 = (View) z.this.j.get();
                if (viewGroup == null || view3 == null) {
                    return;
                }
                if (!z.this.b(viewGroup, view3)) {
                    z.this.b();
                    return;
                }
                v unused = z.this.f6228a;
                if (v.a()) {
                    z.this.f6228a.b("VisibilityTracker", "View met visibility requirements. Logging visibility impression..");
                }
                z.this.a();
                a aVar2 = (a) weakReference.get();
                if (aVar2 != null) {
                    aVar2.onLogVisibilityImpression();
                }
            }
        };
        this.f6233f = new ViewTreeObserver.OnPreDrawListener() { // from class: com.applovin.impl.sdk.z.2
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                z.this.b();
                z.this.b(view);
                return true;
            }
        };
    }

    private void a(View view) {
        View rootView = Utils.getRootView(this.f6234g.get());
        if (rootView == null) {
            rootView = Utils.getRootView(view);
        }
        if (rootView == null) {
            if (v.a()) {
                this.f6228a.b("VisibilityTracker", "Unable to set view tree observer due to no root view.");
                return;
            }
            return;
        }
        ViewTreeObserver viewTreeObserver = rootView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.i = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnPreDrawListener(this.f6233f);
        } else if (v.a()) {
            this.f6228a.d("VisibilityTracker", "Unable to set view tree observer since the view tree observer is not alive.");
        }
    }

    private boolean a(View view, View view2) {
        if (view2 == null || view2.getVisibility() != 0 || view.getParent() == null || view2.getWidth() <= 0 || view2.getHeight() <= 0 || !view2.getGlobalVisibleRect(this.f6230c)) {
            return false;
        }
        long pxToDp = AppLovinSdkUtils.pxToDp(view2.getContext(), this.f6230c.width()) * AppLovinSdkUtils.pxToDp(view2.getContext(), this.f6230c.height());
        if (pxToDp < this.k) {
            return false;
        }
        if ((((float) pxToDp) / (AppLovinSdkUtils.pxToDp(view2.getContext(), view2.getWidth()) * AppLovinSdkUtils.pxToDp(view2.getContext(), view2.getHeight()))) * 100.0f < this.l) {
            return false;
        }
        return (((float) ((long) (this.f6230c.width() * this.f6230c.height()))) / ((float) ((long) (view2.getWidth() * view2.getHeight())))) * 100.0f >= this.m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.f6231d.postDelayed(this.f6232e, this.f6235h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view) {
        v vVar;
        String str;
        ViewTreeObserver viewTreeObserver = this.i.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f6233f);
        } else if (view != null) {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnPreDrawListener(this.f6233f);
            } else if (v.a()) {
                vVar = this.f6228a;
                str = "Could not remove on pre-draw listener. View tree observer is not alive.";
                vVar.b("VisibilityTracker", str);
            }
        } else if (v.a()) {
            vVar = this.f6228a;
            str = "Could not remove on pre-draw listener. Root view is null.";
            vVar.b("VisibilityTracker", str);
        }
        this.i.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(View view, View view2) {
        if (a(view, view2)) {
            if (this.o == Long.MIN_VALUE) {
                this.o = SystemClock.uptimeMillis();
            }
            return SystemClock.uptimeMillis() - this.o >= this.n;
        }
        return false;
    }

    public void a() {
        synchronized (this.f6229b) {
            this.f6231d.removeMessages(0);
            b(this.f6234g.get());
            this.o = Long.MIN_VALUE;
            this.j.clear();
        }
    }

    public void a(com.applovin.impl.mediation.a.e eVar) {
        WeakReference<View> weakReference;
        synchronized (this.f6229b) {
            if (v.a()) {
                this.f6228a.b("VisibilityTracker", "Tracking Visibility...");
            }
            a();
            if (eVar instanceof com.applovin.impl.mediation.a.b) {
                weakReference = new WeakReference<>(((com.applovin.impl.mediation.a.b) eVar).o());
            } else if (!(eVar instanceof com.applovin.impl.mediation.a.d)) {
                return;
            } else {
                weakReference = new WeakReference<>(((com.applovin.impl.mediation.a.d) eVar).z());
            }
            this.j = weakReference;
            this.k = eVar.K();
            this.l = eVar.L();
            this.m = eVar.M();
            this.n = eVar.O();
            a(this.j.get());
        }
    }
}
