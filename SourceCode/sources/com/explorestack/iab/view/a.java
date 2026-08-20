package com.explorestack.iab.view;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.explorestack.iab.utils.IabElementStyle;
import com.explorestack.iab.utils.e;
/* loaded from: classes2.dex */
public class a extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public final c f9667a;

    /* renamed from: b  reason: collision with root package name */
    public com.explorestack.iab.utils.d f9668b;

    /* renamed from: c  reason: collision with root package name */
    public e f9669c;

    /* renamed from: d  reason: collision with root package name */
    public b f9670d;

    /* renamed from: e  reason: collision with root package name */
    public d f9671e;

    /* renamed from: f  reason: collision with root package name */
    public IabElementStyle f9672f;

    /* renamed from: g  reason: collision with root package name */
    public IabElementStyle f9673g;

    /* renamed from: com.explorestack.iab.view.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC0263a implements View.OnClickListener {
        public View$OnClickListenerC0263a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.f9671e != null) {
                a.this.f9671e.onCloseClick();
            }
        }
    }

    /* loaded from: classes2.dex */
    public class b implements Runnable {
        private b() {
        }

        public /* synthetic */ b(a aVar, View$OnClickListenerC0263a view$OnClickListenerC0263a) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f9669c == null) {
                return;
            }
            long j = a.this.f9667a.f9679d;
            if (a.this.isShown()) {
                j += 50;
                a.this.f9667a.a(j);
                a.this.f9669c.a((int) ((100 * j) / a.this.f9667a.f9678c), (int) Math.ceil((a.this.f9667a.f9678c - j) / 1000.0d));
            }
            if (j < a.this.f9667a.f9678c) {
                a.this.postDelayed(this, 50L);
                return;
            }
            a.this.c();
            if (a.this.f9667a.f9677b <= 0.0f || a.this.f9671e == null) {
                return;
            }
            a.this.f9671e.onCountDownFinish();
        }
    }

    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public boolean f9676a;

        /* renamed from: b  reason: collision with root package name */
        public float f9677b;

        /* renamed from: c  reason: collision with root package name */
        public long f9678c;

        /* renamed from: d  reason: collision with root package name */
        public long f9679d;

        /* renamed from: e  reason: collision with root package name */
        public long f9680e;

        /* renamed from: f  reason: collision with root package name */
        public long f9681f;

        private c() {
            this.f9676a = false;
            this.f9677b = 0.0f;
            this.f9678c = 0L;
            this.f9679d = 0L;
            this.f9680e = 0L;
            this.f9681f = 0L;
        }

        public /* synthetic */ c(View$OnClickListenerC0263a view$OnClickListenerC0263a) {
            this();
        }

        public void a(long j) {
            this.f9679d = j;
        }

        public final void a(boolean z) {
            if (this.f9680e > 0) {
                this.f9681f += System.currentTimeMillis() - this.f9680e;
            }
            if (z) {
                this.f9680e = System.currentTimeMillis();
            } else {
                this.f9680e = 0L;
            }
        }

        public void a(boolean z, float f2) {
            this.f9676a = z;
            this.f9677b = f2;
            this.f9678c = f2 * 1000.0f;
            this.f9679d = 0L;
        }

        public boolean a() {
            long j = this.f9678c;
            return j == 0 || this.f9679d >= j;
        }

        public long b() {
            return this.f9680e > 0 ? System.currentTimeMillis() - this.f9680e : this.f9681f;
        }

        public boolean c() {
            long j = this.f9678c;
            return j != 0 && this.f9679d < j;
        }

        public boolean d() {
            return this.f9676a;
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
        void onCloseClick();

        void onCountDownFinish();
    }

    public a(Context context) {
        super(context);
        this.f9667a = new c(null);
    }

    public final void a() {
        if (isShown()) {
            b();
            b bVar = new b(this, null);
            this.f9670d = bVar;
            postDelayed(bVar, 50L);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        com.explorestack.iab.utils.d dVar = this.f9668b;
        if (dVar != null) {
            dVar.a();
        }
        e eVar = this.f9669c;
        if (eVar != null) {
            eVar.a();
        }
    }

    public final void b() {
        b bVar = this.f9670d;
        if (bVar != null) {
            removeCallbacks(bVar);
            this.f9670d = null;
        }
    }

    public final void c() {
        if (this.f9667a.c()) {
            com.explorestack.iab.utils.d dVar = this.f9668b;
            if (dVar != null) {
                dVar.c();
            }
            if (this.f9669c == null) {
                this.f9669c = new e(null);
            }
            this.f9669c.a(getContext(), (ViewGroup) this, this.f9673g);
            a();
            return;
        }
        b();
        if (this.f9668b == null) {
            this.f9668b = new com.explorestack.iab.utils.d(new View$OnClickListenerC0263a());
        }
        this.f9668b.a(getContext(), (ViewGroup) this, this.f9672f);
        e eVar = this.f9669c;
        if (eVar != null) {
            eVar.c();
        }
    }

    public boolean canBeClosed() {
        return this.f9667a.a();
    }

    public long getOnScreenTimeMs() {
        return this.f9667a.b();
    }

    public boolean isVisible() {
        return this.f9667a.d();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            b();
        } else if (this.f9667a.c() && this.f9667a.d()) {
            a();
        }
        this.f9667a.a(i == 0);
    }

    public void setCloseClickListener(d dVar) {
        this.f9671e = dVar;
    }

    public void setCloseStyle(IabElementStyle iabElementStyle) {
        this.f9672f = iabElementStyle;
        com.explorestack.iab.utils.d dVar = this.f9668b;
        if (dVar == null || !dVar.e()) {
            return;
        }
        this.f9668b.a(getContext(), (ViewGroup) this, iabElementStyle);
    }

    public void setCloseVisibility(boolean z, float f2) {
        if (this.f9667a.f9676a == z && this.f9667a.f9677b == f2) {
            return;
        }
        this.f9667a.a(z, f2);
        if (z) {
            c();
            return;
        }
        com.explorestack.iab.utils.d dVar = this.f9668b;
        if (dVar != null) {
            dVar.c();
        }
        e eVar = this.f9669c;
        if (eVar != null) {
            eVar.c();
        }
        b();
    }

    public void setCountDownStyle(IabElementStyle iabElementStyle) {
        this.f9673g = iabElementStyle;
        e eVar = this.f9669c;
        if (eVar == null || !eVar.e()) {
            return;
        }
        this.f9669c.a(getContext(), (ViewGroup) this, iabElementStyle);
    }
}
