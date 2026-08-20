package com.explorestack.iab.utils;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import com.explorestack.iab.mraid.MraidLog;
/* loaded from: classes2.dex */
public class m {
    public static final String o = "m";

    /* renamed from: a  reason: collision with root package name */
    public final Rect f9453a;

    /* renamed from: b  reason: collision with root package name */
    public final Rect f9454b;

    /* renamed from: c  reason: collision with root package name */
    public final Context f9455c;

    /* renamed from: d  reason: collision with root package name */
    public final View f9456d;

    /* renamed from: e  reason: collision with root package name */
    public final d f9457e;

    /* renamed from: f  reason: collision with root package name */
    public final float f9458f;

    /* renamed from: g  reason: collision with root package name */
    public ViewTreeObserver.OnPreDrawListener f9459g;

    /* renamed from: h  reason: collision with root package name */
    public View.OnAttachStateChangeListener f9460h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public final Runnable n;

    /* loaded from: classes2.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m.this.a();
            m.this.k = false;
        }
    }

    /* loaded from: classes2.dex */
    public class b implements ViewTreeObserver.OnPreDrawListener {
        public b() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            m.this.d();
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public class c implements View.OnAttachStateChangeListener {
        public c() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            m.this.a();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            m.this.a();
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a(boolean z);
    }

    public m(Context context, View view, d dVar) {
        this(context, view, dVar, 0.1f);
    }

    public m(Context context, View view, d dVar, float f2) {
        this.f9453a = new Rect();
        this.f9454b = new Rect();
        this.i = false;
        this.j = false;
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = new a();
        this.f9455c = context;
        this.f9456d = view;
        this.f9457e = dVar;
        this.f9458f = f2;
    }

    public final void a() {
        try {
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (this.f9456d.getVisibility() != 0) {
            a(this.f9456d, "Visibility != View.VISIBLE");
        } else if (this.f9456d.getParent() == null) {
            a(this.f9456d, "No parent");
        } else if (!this.f9456d.getGlobalVisibleRect(this.f9453a)) {
            a(this.f9456d, "Can't get global visible rect");
        } else if (Utils.isViewTransparent(this.f9456d)) {
            a(this.f9456d, "View is transparent (alpha = 0)");
        } else {
            float width = this.f9456d.getWidth() * this.f9456d.getHeight();
            if (width <= 0.0f) {
                a(this.f9456d, "Ad View width or height is zero, show wasn't tracked");
                return;
            }
            float width2 = (this.f9453a.width() * this.f9453a.height()) / width;
            if (width2 < this.f9458f) {
                a(this.f9456d, "Ad View is not completely visible (" + width2 + "), show wasn't tracked");
                return;
            }
            View a2 = com.explorestack.iab.mraid.g.a(this.f9455c, this.f9456d);
            if (a2 == null) {
                a(this.f9456d, "Can't obtain root view");
                return;
            }
            a2.getGlobalVisibleRect(this.f9454b);
            if (!Rect.intersects(this.f9453a, this.f9454b)) {
                a(this.f9456d, "Ad View is out of current window, show wasn't tracked");
                return;
            }
            a(this.f9456d);
        }
    }

    public final void a(View view) {
        this.j = false;
        a(true);
    }

    public final void a(View view, String str) {
        if (!this.j) {
            this.j = true;
            MraidLog.d(o, str);
        }
        a(false);
    }

    public final void a(boolean z) {
        if (this.i != z) {
            this.i = z;
            this.f9457e.a(z);
        }
    }

    public boolean b() {
        return this.i;
    }

    public void c() {
        this.m = true;
        this.l = false;
        this.k = false;
        this.f9456d.getViewTreeObserver().removeOnPreDrawListener(this.f9459g);
        this.f9456d.removeOnAttachStateChangeListener(this.f9460h);
        Utils.cancelOnUiThread(this.n);
    }

    public final void d() {
        if (this.k) {
            return;
        }
        this.k = true;
        Utils.onUiThread(this.n, 100L);
    }

    public void e() {
        if (this.m || this.l) {
            return;
        }
        this.l = true;
        if (this.f9459g == null) {
            this.f9459g = new b();
        }
        if (this.f9460h == null) {
            this.f9460h = new c();
        }
        this.f9456d.getViewTreeObserver().addOnPreDrawListener(this.f9459g);
        this.f9456d.addOnAttachStateChangeListener(this.f9460h);
        a();
    }
}
