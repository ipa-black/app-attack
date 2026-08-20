package com.explorestack.iab.utils;

import android.view.View;
import android.view.ViewTreeObserver;
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    public final View f9443a;

    /* renamed from: b  reason: collision with root package name */
    public final c f9444b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f9445c = false;

    /* renamed from: d  reason: collision with root package name */
    public float f9446d = 0.0f;

    /* renamed from: e  reason: collision with root package name */
    public long f9447e = 0;

    /* renamed from: f  reason: collision with root package name */
    public long f9448f = 0;

    /* renamed from: g  reason: collision with root package name */
    public final ViewTreeObserver.OnGlobalLayoutListener f9449g;

    /* renamed from: h  reason: collision with root package name */
    public final Runnable f9450h;

    /* loaded from: classes2.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            l.this.c();
        }
    }

    /* loaded from: classes2.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            long j = l.this.f9448f;
            if (l.this.f9443a.isShown()) {
                j = Math.min(l.this.f9447e, j + 16);
                l.this.a(j);
                l.this.f9444b.a((((float) l.this.f9448f) * 100.0f) / ((float) l.this.f9447e), l.this.f9448f, l.this.f9447e);
            }
            if (j >= l.this.f9447e) {
                l.this.f9444b.a();
            } else {
                l.this.f9443a.postDelayed(this, 16L);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a();

        void a(float f2, long j, long j2);
    }

    public l(View view, c cVar) {
        a aVar = new a();
        this.f9449g = aVar;
        this.f9450h = new b();
        this.f9443a = view;
        this.f9444b = cVar;
        view.getViewTreeObserver().addOnGlobalLayoutListener(aVar);
        c();
    }

    public void a() {
        e();
        this.f9443a.getViewTreeObserver().removeGlobalOnLayoutListener(this.f9449g);
    }

    public void a(float f2) {
        if (this.f9446d == f2) {
            return;
        }
        this.f9446d = f2;
        this.f9447e = f2 * 1000.0f;
        d();
    }

    public final void a(long j) {
        this.f9448f = j;
    }

    public boolean b() {
        long j = this.f9447e;
        return j != 0 && this.f9448f < j;
    }

    public final void c() {
        boolean isShown = this.f9443a.isShown();
        if (this.f9445c == isShown) {
            return;
        }
        this.f9445c = isShown;
        if (!isShown) {
            e();
        } else if (b()) {
            d();
        }
    }

    public void d() {
        if (!this.f9443a.isShown() || this.f9447e == 0) {
            return;
        }
        this.f9443a.postDelayed(this.f9450h, 16L);
    }

    public void e() {
        this.f9443a.removeCallbacks(this.f9450h);
    }
}
