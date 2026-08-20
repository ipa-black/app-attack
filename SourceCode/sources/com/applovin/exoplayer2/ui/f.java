package com.applovin.exoplayer2.ui;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.l.ab;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.t;
import com.applovin.exoplayer2.ui.k;
import com.applovin.sdk.R;
import com.google.android.exoplayer2.C;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class f extends FrameLayout {
    private final Drawable A;
    private final Drawable B;
    private final float C;
    private final float D;
    private final String E;
    private final String F;
    private an G;
    private com.applovin.exoplayer2.i H;
    private c I;
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;
    private int N;
    private int O;
    private int P;
    private boolean Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private long V;
    private long[] W;

    /* renamed from: a  reason: collision with root package name */
    private final b f4130a;
    private boolean[] aa;
    private long[] ab;
    private boolean[] ac;
    private long ad;
    private long ae;
    private long af;

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList<d> f4131b;

    /* renamed from: c  reason: collision with root package name */
    private final View f4132c;

    /* renamed from: d  reason: collision with root package name */
    private final View f4133d;

    /* renamed from: e  reason: collision with root package name */
    private final View f4134e;

    /* renamed from: f  reason: collision with root package name */
    private final View f4135f;

    /* renamed from: g  reason: collision with root package name */
    private final View f4136g;

    /* renamed from: h  reason: collision with root package name */
    private final View f4137h;
    private final ImageView i;
    private final ImageView j;
    private final View k;
    private final TextView l;
    private final TextView m;
    private final k n;
    private final StringBuilder o;
    private final Formatter p;
    private final ba.a q;
    private final ba.c r;
    private final Runnable s;
    private final Runnable t;
    private final Drawable u;
    private final Drawable v;
    private final Drawable w;
    private final String x;
    private final String y;
    private final String z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {
        public static boolean a(View view) {
            return view.isAccessibilityFocused();
        }
    }

    /* loaded from: classes.dex */
    private final class b implements View.OnClickListener, an.d, k.a {
        private b() {
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public void a(an anVar, an.c cVar) {
            if (cVar.a(4, 5)) {
                f.this.f();
            }
            if (cVar.a(4, 5, 7)) {
                f.this.k();
            }
            if (cVar.a(8)) {
                f.this.h();
            }
            if (cVar.a(9)) {
                f.this.i();
            }
            if (cVar.a(8, 9, 11, 0, 13)) {
                f.this.g();
            }
            if (cVar.a(11, 0)) {
                f.this.j();
            }
        }

        @Override // com.applovin.exoplayer2.ui.k.a
        public void a(k kVar, long j) {
            f.this.M = true;
            if (f.this.m != null) {
                f.this.m.setText(ai.a(f.this.o, f.this.p, j));
            }
        }

        @Override // com.applovin.exoplayer2.ui.k.a
        public void a(k kVar, long j, boolean z) {
            f.this.M = false;
            if (z || f.this.G == null) {
                return;
            }
            f fVar = f.this;
            fVar.a(fVar.G, j);
        }

        @Override // com.applovin.exoplayer2.ui.k.a
        public void b(k kVar, long j) {
            if (f.this.m != null) {
                f.this.m.setText(ai.a(f.this.o, f.this.p, j));
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            an anVar = f.this.G;
            if (anVar == null) {
                return;
            }
            if (f.this.f4133d == view) {
                f.this.H.c(anVar);
            } else if (f.this.f4132c == view) {
                f.this.H.b(anVar);
            } else if (f.this.f4136g == view) {
                if (anVar.t() != 4) {
                    f.this.H.e(anVar);
                }
            } else if (f.this.f4137h == view) {
                f.this.H.d(anVar);
            } else if (f.this.f4134e == view) {
                f.this.b(anVar);
            } else if (f.this.f4135f == view) {
                f.this.c(anVar);
            } else if (f.this.i == view) {
                f.this.H.a(anVar, ab.a(anVar.y(), f.this.P));
            } else if (f.this.j == view) {
                f.this.H.b(anVar, !anVar.z());
            }
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(long j, long j2);
    }

    /* loaded from: classes.dex */
    public interface d {
        void a(int i);
    }

    static {
        t.a("goog.exo.ui");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f(android.content.Context r4, android.util.AttributeSet r5, int r6, android.util.AttributeSet r7) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.ui.f.<init>(android.content.Context, android.util.AttributeSet, int, android.util.AttributeSet):void");
    }

    private static int a(TypedArray typedArray, int i) {
        return typedArray.getInt(R.styleable.AppLovinPlayerControlView_al_repeat_toggle_modes, i);
    }

    private void a(an anVar) {
        int t = anVar.t();
        if (t == 1 || t == 4 || !anVar.x()) {
            b(anVar);
        } else {
            c(anVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(an anVar, long j) {
        int G;
        ba S = anVar.S();
        if (this.L && !S.d()) {
            int b2 = S.b();
            G = 0;
            while (true) {
                long c2 = S.a(G, this.r).c();
                if (j < c2) {
                    break;
                } else if (G == b2 - 1) {
                    j = c2;
                    break;
                } else {
                    j -= c2;
                    G++;
                }
            }
        } else {
            G = anVar.G();
        }
        a(anVar, G, j);
        k();
    }

    private void a(boolean z, boolean z2, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z2);
        view.setAlpha(z2 ? this.C : this.D);
        view.setVisibility(z ? 0 : 8);
    }

    private static boolean a(int i) {
        return i == 90 || i == 89 || i == 85 || i == 79 || i == 126 || i == 127 || i == 87 || i == 88;
    }

    private boolean a(an anVar, int i, long j) {
        return this.H.a(anVar, i, j);
    }

    private static boolean a(ba baVar, ba.c cVar) {
        if (baVar.b() > 100) {
            return false;
        }
        int b2 = baVar.b();
        for (int i = 0; i < b2; i++) {
            if (baVar.a(i, cVar).o == C.TIME_UNSET) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(an anVar) {
        int t = anVar.t();
        if (t == 1) {
            this.H.a(anVar);
        } else if (t == 4) {
            a(anVar, anVar.G(), C.TIME_UNSET);
        }
        this.H.a(anVar, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(an anVar) {
        this.H.a(anVar, false);
    }

    private void d() {
        removeCallbacks(this.t);
        if (this.N <= 0) {
            this.V = C.TIME_UNSET;
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        int i = this.N;
        this.V = uptimeMillis + i;
        if (this.J) {
            postDelayed(this.t, i);
        }
    }

    private void e() {
        f();
        g();
        h();
        i();
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        boolean z;
        boolean z2;
        if (c() && this.J) {
            boolean n = n();
            View view = this.f4134e;
            boolean z3 = true;
            if (view != null) {
                z = n && view.isFocused();
                z2 = ai.f3781a < 21 ? z : n && a.a(this.f4134e);
                this.f4134e.setVisibility(n ? 8 : 0);
            } else {
                z = false;
                z2 = false;
            }
            View view2 = this.f4135f;
            if (view2 != null) {
                z |= !n && view2.isFocused();
                if (ai.f3781a < 21) {
                    z3 = z;
                } else if (n || !a.a(this.f4135f)) {
                    z3 = false;
                }
                z2 |= z3;
                this.f4135f.setVisibility(n ? 0 : 8);
            }
            if (z) {
                l();
            }
            if (z2) {
                m();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        if (c() && this.J) {
            an anVar = this.G;
            boolean z5 = false;
            if (anVar != null) {
                boolean a2 = anVar.a(4);
                boolean a3 = anVar.a(6);
                z4 = anVar.a(10) && this.H.a();
                if (anVar.a(11) && this.H.b()) {
                    z5 = true;
                }
                z2 = anVar.a(8);
                z = z5;
                z5 = a3;
                z3 = a2;
            } else {
                z = false;
                z2 = false;
                z3 = false;
                z4 = false;
            }
            a(this.S, z5, this.f4132c);
            a(this.Q, z4, this.f4137h);
            a(this.R, z, this.f4136g);
            a(this.T, z2, this.f4133d);
            k kVar = this.n;
            if (kVar != null) {
                kVar.setEnabled(z3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        ImageView imageView;
        ImageView imageView2;
        String str;
        if (c() && this.J && (imageView = this.i) != null) {
            if (this.P == 0) {
                a(false, false, (View) imageView);
                return;
            }
            an anVar = this.G;
            if (anVar == null) {
                a(true, false, (View) imageView);
                this.i.setImageDrawable(this.u);
                this.i.setContentDescription(this.x);
                return;
            }
            a(true, true, (View) imageView);
            int y = anVar.y();
            if (y == 0) {
                this.i.setImageDrawable(this.u);
                imageView2 = this.i;
                str = this.x;
            } else if (y != 1) {
                if (y == 2) {
                    this.i.setImageDrawable(this.w);
                    imageView2 = this.i;
                    str = this.z;
                }
                this.i.setVisibility(0);
            } else {
                this.i.setImageDrawable(this.v);
                imageView2 = this.i;
                str = this.y;
            }
            imageView2.setContentDescription(str);
            this.i.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        ImageView imageView;
        ImageView imageView2;
        String str;
        if (c() && this.J && (imageView = this.j) != null) {
            an anVar = this.G;
            if (!this.U) {
                a(false, false, (View) imageView);
                return;
            }
            if (anVar == null) {
                a(true, false, (View) imageView);
                this.j.setImageDrawable(this.B);
                imageView2 = this.j;
            } else {
                a(true, true, (View) imageView);
                this.j.setImageDrawable(anVar.z() ? this.A : this.B);
                imageView2 = this.j;
                if (anVar.z()) {
                    str = this.E;
                    imageView2.setContentDescription(str);
                }
            }
            str = this.F;
            imageView2.setContentDescription(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        long j;
        int i;
        an anVar = this.G;
        if (anVar == null) {
            return;
        }
        boolean z = true;
        this.L = this.K && a(anVar.S(), this.r);
        this.ad = 0L;
        ba S = anVar.S();
        if (S.d()) {
            j = 0;
            i = 0;
        } else {
            int G = anVar.G();
            boolean z2 = this.L;
            int i2 = z2 ? 0 : G;
            int b2 = z2 ? S.b() - 1 : G;
            long j2 = 0;
            i = 0;
            while (true) {
                if (i2 > b2) {
                    break;
                }
                if (i2 == G) {
                    this.ad = com.applovin.exoplayer2.h.a(j2);
                }
                S.a(i2, this.r);
                if (this.r.o == C.TIME_UNSET) {
                    com.applovin.exoplayer2.l.a.b(this.L ^ z);
                    break;
                }
                for (int i3 = this.r.p; i3 <= this.r.q; i3++) {
                    S.a(i3, this.q);
                    int d2 = this.q.d();
                    for (int e2 = this.q.e(); e2 < d2; e2++) {
                        long a2 = this.q.a(e2);
                        if (a2 == Long.MIN_VALUE) {
                            if (this.q.f1621d != C.TIME_UNSET) {
                                a2 = this.q.f1621d;
                            }
                        }
                        long c2 = a2 + this.q.c();
                        if (c2 >= 0) {
                            long[] jArr = this.W;
                            if (i == jArr.length) {
                                int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                this.W = Arrays.copyOf(jArr, length);
                                this.aa = Arrays.copyOf(this.aa, length);
                            }
                            this.W[i] = com.applovin.exoplayer2.h.a(j2 + c2);
                            this.aa[i] = this.q.c(e2);
                            i++;
                        }
                    }
                }
                j2 += this.r.o;
                i2++;
                z = true;
            }
            j = j2;
        }
        long a3 = com.applovin.exoplayer2.h.a(j);
        TextView textView = this.l;
        if (textView != null) {
            textView.setText(ai.a(this.o, this.p, a3));
        }
        k kVar = this.n;
        if (kVar != null) {
            kVar.setDuration(a3);
            int length2 = this.ab.length;
            int i4 = i + length2;
            long[] jArr2 = this.W;
            if (i4 > jArr2.length) {
                this.W = Arrays.copyOf(jArr2, i4);
                this.aa = Arrays.copyOf(this.aa, i4);
            }
            System.arraycopy(this.ab, 0, this.W, i, length2);
            System.arraycopy(this.ac, 0, this.aa, i, length2);
            this.n.a(this.W, this.aa, i4);
        }
        k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        long j;
        long j2;
        float f2;
        if (c() && this.J) {
            an anVar = this.G;
            if (anVar != null) {
                j = this.ad + anVar.N();
                j2 = this.ad + anVar.O();
            } else {
                j = 0;
                j2 = 0;
            }
            boolean z = j != this.ae;
            boolean z2 = j2 != this.af;
            this.ae = j;
            this.af = j2;
            TextView textView = this.m;
            if (textView != null && !this.M && z) {
                textView.setText(ai.a(this.o, this.p, j));
            }
            k kVar = this.n;
            if (kVar != null) {
                kVar.setPosition(j);
                this.n.setBufferedPosition(j2);
            }
            c cVar = this.I;
            if (cVar != null && (z || z2)) {
                cVar.a(j, j2);
            }
            removeCallbacks(this.s);
            int t = anVar == null ? 1 : anVar.t();
            if (anVar == null || !anVar.a()) {
                if (t == 4 || t == 1) {
                    return;
                }
                postDelayed(this.s, 1000L);
                return;
            }
            k kVar2 = this.n;
            long min = Math.min(kVar2 != null ? kVar2.getPreferredUpdateDelay() : 1000L, 1000 - (j % 1000));
            postDelayed(this.s, ai.a(anVar.D().f1362b > 0.0f ? ((float) min) / f2 : 1000L, this.O, 1000L));
        }
    }

    private void l() {
        View view;
        View view2;
        boolean n = n();
        if (!n && (view2 = this.f4134e) != null) {
            view2.requestFocus();
        } else if (!n || (view = this.f4135f) == null) {
        } else {
            view.requestFocus();
        }
    }

    private void m() {
        View view;
        View view2;
        boolean n = n();
        if (!n && (view2 = this.f4134e) != null) {
            view2.sendAccessibilityEvent(8);
        } else if (!n || (view = this.f4135f) == null) {
        } else {
            view.sendAccessibilityEvent(8);
        }
    }

    private boolean n() {
        an anVar = this.G;
        return (anVar == null || anVar.t() == 4 || this.G.t() == 1 || !this.G.x()) ? false : true;
    }

    public void a() {
        if (!c()) {
            setVisibility(0);
            Iterator<d> it = this.f4131b.iterator();
            while (it.hasNext()) {
                it.next().a(getVisibility());
            }
            e();
            l();
            m();
        }
        d();
    }

    public void a(d dVar) {
        com.applovin.exoplayer2.l.a.b(dVar);
        this.f4131b.add(dVar);
    }

    public boolean a(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        an anVar = this.G;
        if (anVar == null || !a(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (keyCode == 90) {
                if (anVar.t() != 4) {
                    this.H.e(anVar);
                    return true;
                }
                return true;
            } else if (keyCode == 89) {
                this.H.d(anVar);
                return true;
            } else if (keyEvent.getRepeatCount() == 0) {
                if (keyCode == 79 || keyCode == 85) {
                    a(anVar);
                    return true;
                } else if (keyCode == 87) {
                    this.H.c(anVar);
                    return true;
                } else if (keyCode == 88) {
                    this.H.b(anVar);
                    return true;
                } else if (keyCode == 126) {
                    b(anVar);
                    return true;
                } else if (keyCode != 127) {
                    return true;
                } else {
                    c(anVar);
                    return true;
                }
            } else {
                return true;
            }
        }
        return true;
    }

    public void b() {
        if (c()) {
            setVisibility(8);
            Iterator<d> it = this.f4131b.iterator();
            while (it.hasNext()) {
                it.next().a(getVisibility());
            }
            removeCallbacks(this.s);
            removeCallbacks(this.t);
            this.V = C.TIME_UNSET;
        }
    }

    public void b(d dVar) {
        this.f4131b.remove(dVar);
    }

    public boolean c() {
        return getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return a(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.t);
        } else if (motionEvent.getAction() == 1) {
            d();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public an getPlayer() {
        return this.G;
    }

    public int getRepeatToggleModes() {
        return this.P;
    }

    public boolean getShowShuffleButton() {
        return this.U;
    }

    public int getShowTimeoutMs() {
        return this.N;
    }

    public boolean getShowVrButton() {
        View view = this.k;
        return view != null && view.getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.J = true;
        long j = this.V;
        if (j != C.TIME_UNSET) {
            long uptimeMillis = j - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                b();
            } else {
                postDelayed(this.t, uptimeMillis);
            }
        } else if (c()) {
            d();
        }
        e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.J = false;
        removeCallbacks(this.s);
        removeCallbacks(this.t);
    }

    @Deprecated
    public void setControlDispatcher(com.applovin.exoplayer2.i iVar) {
        if (this.H != iVar) {
            this.H = iVar;
            g();
        }
    }

    public void setPlayer(an anVar) {
        boolean z = true;
        com.applovin.exoplayer2.l.a.b(Looper.myLooper() == Looper.getMainLooper());
        if (anVar != null && anVar.r() != Looper.getMainLooper()) {
            z = false;
        }
        com.applovin.exoplayer2.l.a.a(z);
        an anVar2 = this.G;
        if (anVar2 == anVar) {
            return;
        }
        if (anVar2 != null) {
            anVar2.b(this.f4130a);
        }
        this.G = anVar;
        if (anVar != null) {
            anVar.a(this.f4130a);
        }
        e();
    }

    public void setProgressUpdateListener(c cVar) {
        this.I = cVar;
    }

    public void setRepeatToggleModes(int i) {
        int i2;
        com.applovin.exoplayer2.i iVar;
        an anVar;
        this.P = i;
        an anVar2 = this.G;
        if (anVar2 != null) {
            int y = anVar2.y();
            if (i != 0 || y == 0) {
                i2 = 2;
                if (i == 1 && y == 2) {
                    this.H.a(this.G, 1);
                } else if (i == 2 && y == 1) {
                    iVar = this.H;
                    anVar = this.G;
                }
            } else {
                iVar = this.H;
                anVar = this.G;
                i2 = 0;
            }
            iVar.a(anVar, i2);
        }
        h();
    }

    public void setShowFastForwardButton(boolean z) {
        this.R = z;
        g();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.K = z;
        j();
    }

    public void setShowNextButton(boolean z) {
        this.T = z;
        g();
    }

    public void setShowPreviousButton(boolean z) {
        this.S = z;
        g();
    }

    public void setShowRewindButton(boolean z) {
        this.Q = z;
        g();
    }

    public void setShowShuffleButton(boolean z) {
        this.U = z;
        i();
    }

    public void setShowTimeoutMs(int i) {
        this.N = i;
        if (c()) {
            d();
        }
    }

    public void setShowVrButton(boolean z) {
        View view = this.k;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i) {
        this.O = ai.a(i, 16, 1000);
    }

    public void setVrButtonListener(View.OnClickListener onClickListener) {
        View view = this.k;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            a(getShowVrButton(), onClickListener != null, this.k);
        }
    }
}
