package com.appodeal.ads;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.p;
import com.appodeal.ads.r5;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.utils.d0;
import com.appodeal.ads.z5;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.common.net.HttpHeaders;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class x5<AdRequestType extends z5<AdObjectType>, AdObjectType extends r5<AdRequestType, ?, ?, ?>> extends p<AdRequestType, AdObjectType, y5> {
    public static final Handler m = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    public Integer f7939b;

    /* renamed from: c  reason: collision with root package name */
    public View f7940c;

    /* renamed from: d  reason: collision with root package name */
    public View f7941d;

    /* renamed from: f  reason: collision with root package name */
    public com.appodeal.ads.a f7943f;

    /* renamed from: g  reason: collision with root package name */
    public com.appodeal.ads.a f7944g;

    /* renamed from: h  reason: collision with root package name */
    public WeakReference<Animator> f7945h;
    public x5<AdRequestType, AdObjectType>.c i;

    /* renamed from: a  reason: collision with root package name */
    public final String f7938a = getClass().getSimpleName();

    /* renamed from: e  reason: collision with root package name */
    public int f7942e = -1;
    public boolean j = true;
    public final d k = new d(0);
    public final ConcurrentHashMap l = new ConcurrentHashMap();

    /* loaded from: classes.dex */
    public static class a {
        public a() {
        }

        public /* synthetic */ a(int i) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public static class b extends e {

        /* renamed from: c  reason: collision with root package name */
        public final boolean f7946c;

        public b(Activity activity, boolean z) {
            super(activity);
            this.f7946c = z;
        }

        @Override // com.appodeal.ads.x5.e
        public final boolean a() {
            return !this.f7946c;
        }

        @Override // android.widget.FrameLayout, android.view.View
        public final void onMeasure(int i, int i2) {
            int measuredHeight;
            int childCount = getChildCount();
            if (childCount == 0) {
                super.onMeasure(i, i2);
                return;
            }
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                int size = View.MeasureSpec.getSize(i);
                int size2 = View.MeasureSpec.getSize(i2);
                measureChild(childAt, View.MeasureSpec.makeMeasureSpec(size, 0), View.MeasureSpec.makeMeasureSpec(size2, 0));
                if (this.f7946c) {
                    if (childAt.getMeasuredWidth() > size2) {
                        measureChild(childAt, View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size, 0));
                    }
                    i3 = Math.max(i3, childAt.getMeasuredHeight());
                    measuredHeight = childAt.getMeasuredWidth();
                } else {
                    i3 = Math.max(i3, childAt.getMeasuredWidth());
                    measuredHeight = childAt.getMeasuredHeight();
                }
                i4 = Math.max(i4, measuredHeight);
            }
            setMeasuredDimension(getPaddingRight() + getPaddingLeft() + i3, getPaddingBottom() + getPaddingTop() + i4);
        }
    }

    /* loaded from: classes.dex */
    public final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final a f7947a = new a(0);

        /* renamed from: b  reason: collision with root package name */
        public final u<AdObjectType, AdRequestType, ?> f7948b;

        public c(u<AdObjectType, AdRequestType, ?> uVar) {
            this.f7948b = uVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Activity activity;
            x5 x5Var;
            View view;
            this.f7947a.getClass();
            if (!r0.l || (activity = n5.b()) == null) {
                activity = com.appodeal.ads.context.b.f6583b.f6584a.getActivity();
            }
            if (activity == null) {
                Log.debug(x5.this.f7938a, HttpHeaders.REFRESH, "skip: no running activities fund");
                x5 x5Var2 = x5.this;
                if (this == x5Var2.i) {
                    x5Var2.i = null;
                    return;
                }
                return;
            }
            d a2 = x5.this.a(activity);
            AdRequestType f2 = this.f7948b.f();
            if (f2 != null && (view = x5.this.f7940c) != null && view.isShown() && a2.f7951b == f0.VISIBLE) {
                this.f7947a.getClass();
                if (com.appodeal.ads.utils.c.a(n5.b())) {
                    Log.debug(x5.this.f7938a, HttpHeaders.REFRESH, "postponed: ads activity is visible");
                    x5.m.postDelayed(this, 1000L);
                    return;
                }
                String str = this.f7948b.e().f7505b;
                if (!f2.u && !f2.v && !f2.q.containsKey(str)) {
                    Log.debug(x5.this.f7938a, HttpHeaders.REFRESH, "skip: current ad request hasn't any loaded ad");
                    x5Var = x5.this;
                    if (this != x5Var.i) {
                        return;
                    }
                } else {
                    Log.debug(x5.this.f7938a, HttpHeaders.REFRESH, "requesting render");
                    x5 x5Var3 = x5.this;
                    if (this == x5Var3.i) {
                        x5Var3.i = null;
                    }
                    x5.this.a2(activity, new y5(this.f7948b.e(), x5.this.b(activity), false, f2.f7340h), (u) this.f7948b);
                    return;
                }
            } else {
                x5 x5Var4 = x5.this;
                Log.debug(x5Var4.f7938a, HttpHeaders.REFRESH, String.format("skip: %s / %s / %s", a2.f7951b, f2, x5Var4.f7940c));
                x5Var = x5.this;
                if (this != x5Var.i) {
                    return;
                }
            }
            x5Var.i = null;
        }
    }

    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public com.appodeal.ads.a f7950a;

        /* renamed from: b  reason: collision with root package name */
        public f0 f7951b;

        public d() {
            this.f7951b = f0.NEVER_SHOWN;
        }

        public /* synthetic */ d(int i) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public static class e extends FrameLayout {

        /* renamed from: b  reason: collision with root package name */
        public static final Rect f7952b = new Rect();

        /* renamed from: a  reason: collision with root package name */
        public final Rect f7953a;

        public e(Context context) {
            super(context);
            this.f7953a = new Rect();
            setFitsSystemWindows(true);
        }

        public boolean a() {
            return true;
        }

        @Override // android.view.View
        public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
            Rect rect;
            DisplayCutout displayCutout;
            r0 r0Var = r0.f7341a;
            if (r0.m) {
                if (windowInsets.getSystemWindowInsetLeft() == 0 && windowInsets.getSystemWindowInsetTop() == 0 && windowInsets.getSystemWindowInsetRight() == 0 && windowInsets.getSystemWindowInsetBottom() == 0) {
                    rect = f7952b;
                } else {
                    Rect rect2 = this.f7953a;
                    rect2.setEmpty();
                    if (Build.VERSION.SDK_INT >= 28 && (displayCutout = windowInsets.getDisplayCutout()) != null) {
                        rect2.set(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom());
                    }
                    rect = this.f7953a;
                    if (a()) {
                        Rect rect3 = this.f7953a;
                        int max = Math.max(rect3.left, rect3.right);
                        rect3.right = max;
                        rect3.left = max;
                    }
                }
                fitSystemWindows(rect);
                return windowInsets;
            }
            return windowInsets;
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (z) {
                requestApplyInsets();
            }
        }
    }

    /* loaded from: classes.dex */
    public class f extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        public final AdRequestType f7954a;

        /* renamed from: b  reason: collision with root package name */
        public final AdObjectType f7955b;

        /* renamed from: c  reason: collision with root package name */
        public final u<AdObjectType, AdRequestType, ?> f7956c;

        /* renamed from: d  reason: collision with root package name */
        public final View f7957d;

        /* renamed from: e  reason: collision with root package name */
        public final View f7958e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f7959f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f7960g;

        public f(AdRequestType adrequesttype, AdObjectType adobjecttype, u<AdObjectType, AdRequestType, ?> uVar, View view, View view2, boolean z, boolean z2) {
            this.f7954a = adrequesttype;
            this.f7955b = adobjecttype;
            this.f7956c = uVar;
            this.f7957d = view;
            this.f7958e = view2;
            this.f7959f = z;
            this.f7960g = z2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            animator.removeAllListeners();
            View view = this.f7957d;
            if (view != null) {
                if (view.getAnimation() != null) {
                    this.f7957d.getAnimation().setAnimationListener(null);
                }
                this.f7957d.clearAnimation();
                this.f7957d.animate().setListener(null);
            }
            x5 x5Var = x5.this;
            x5Var.f7945h = null;
            try {
                View view2 = this.f7957d;
                boolean z = this.f7959f;
                boolean z2 = this.f7960g;
                x5Var.getClass();
                x5.a(view2, z, z2);
            } catch (Exception e2) {
                Log.log(e2);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onAnimationEnd(android.animation.Animator r8) {
            /*
                r7 = this;
                r8.removeAllListeners()
                android.view.View r8 = r7.f7957d
                r0 = 0
                if (r8 == 0) goto L25
                android.view.animation.Animation r8 = r8.getAnimation()
                if (r8 == 0) goto L17
                android.view.View r8 = r7.f7957d
                android.view.animation.Animation r8 = r8.getAnimation()
                r8.setAnimationListener(r0)
            L17:
                android.view.View r8 = r7.f7957d
                r8.clearAnimation()
                android.view.View r8 = r7.f7957d
                android.view.ViewPropertyAnimator r8 = r8.animate()
                r8.setListener(r0)
            L25:
                com.appodeal.ads.x5 r8 = com.appodeal.ads.x5.this
                r8.f7945h = r0
                AdRequestType extends com.appodeal.ads.z5<AdObjectType> r0 = r7.f7954a
                AdObjectType extends com.appodeal.ads.r5<AdRequestType, ?, ?, ?> r1 = r7.f7955b
                com.appodeal.ads.u<AdObjectType extends com.appodeal.ads.r5<AdRequestType, ?, ?, ?>, AdRequestType extends com.appodeal.ads.z5<AdObjectType>, ?> r2 = r7.f7956c
                android.view.View r3 = r7.f7958e
                r8.getClass()
                com.appodeal.ads.u5 r4 = new com.appodeal.ads.u5
                r4.<init>(r8, r2, r0, r1)
                int r8 = r2.q
                long r5 = (long) r8
                java.util.HashMap r8 = com.appodeal.ads.utils.d0.f7759a
                monitor-enter(r8)
                monitor-enter(r8)     // Catch: java.lang.Throwable -> L7c
                java.lang.Object r0 = r8.get(r1)     // Catch: java.lang.Throwable -> L79
                com.appodeal.ads.utils.d0$a r0 = (com.appodeal.ads.utils.d0.a) r0     // Catch: java.lang.Throwable -> L79
                if (r0 == 0) goto L4e
                r0.b()     // Catch: java.lang.Throwable -> L79
                r8.remove(r1)     // Catch: java.lang.Throwable -> L79
            L4e:
                monitor-exit(r8)     // Catch: java.lang.Throwable -> L79
                com.appodeal.ads.utils.d0$a r0 = new com.appodeal.ads.utils.d0$a     // Catch: java.lang.Throwable -> L7c
                r0.<init>(r3, r5, r4)     // Catch: java.lang.Throwable -> L7c
                r8.put(r1, r0)     // Catch: java.lang.Throwable -> L7c
                r0.c()     // Catch: java.lang.Throwable -> L7c
                monitor-exit(r8)     // Catch: java.lang.Throwable -> L7c
                android.view.View r8 = r7.f7958e
                android.view.View r0 = r7.f7957d
                boolean r8 = r8.equals(r0)
                if (r8 != 0) goto L78
                com.appodeal.ads.x5 r8 = com.appodeal.ads.x5.this     // Catch: java.lang.Exception -> L74
                android.view.View r0 = r7.f7957d     // Catch: java.lang.Exception -> L74
                boolean r1 = r7.f7959f     // Catch: java.lang.Exception -> L74
                boolean r2 = r7.f7960g     // Catch: java.lang.Exception -> L74
                r8.getClass()     // Catch: java.lang.Exception -> L74
                com.appodeal.ads.x5.a(r0, r1, r2)     // Catch: java.lang.Exception -> L74
                goto L78
            L74:
                r8 = move-exception
                com.appodeal.ads.utils.Log.log(r8)
            L78:
                return
            L79:
                r0 = move-exception
                monitor-exit(r8)     // Catch: java.lang.Throwable -> L79
                throw r0     // Catch: java.lang.Throwable -> L7c
            L7c:
                r0 = move-exception
                monitor-exit(r8)     // Catch: java.lang.Throwable -> L7c
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.x5.f.onAnimationEnd(android.animation.Animator):void");
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            x5.this.f7945h = new WeakReference<>(animator);
        }
    }

    public x5(com.appodeal.ads.a aVar) {
        this.f7943f = aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x006a, code lost:
        if ("Appodeal".equals(r3.getTag()) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0099, code lost:
        if (r2 == false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0132, code lost:
        if (com.appodeal.ads.context.b.f6583b.f6584a.getActivity() != r19) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.appodeal.ads.x5 r18, android.app.Activity r19, com.appodeal.ads.z5 r20, com.appodeal.ads.r5 r21, com.appodeal.ads.a r22, com.appodeal.ads.a r23, com.appodeal.ads.u r24, boolean r25) {
        /*
            Method dump skipped, instructions count: 680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.x5.a(com.appodeal.ads.x5, android.app.Activity, com.appodeal.ads.z5, com.appodeal.ads.r5, com.appodeal.ads.a, com.appodeal.ads.a, com.appodeal.ads.u, boolean):void");
    }

    public final void a(int i) {
        this.f7942e = i;
    }

    public final void a(FrameLayout frameLayout) {
        this.f7941d = frameLayout;
    }

    public final void a(boolean z) {
        this.j = z;
    }

    public final boolean a() {
        return this.j;
    }

    @Override // com.appodeal.ads.p
    public final /* bridge */ /* synthetic */ boolean a(Activity activity, y5 y5Var, u uVar) {
        return a(y5Var, uVar);
    }

    public abstract boolean a(View view);

    public final com.appodeal.ads.a b() {
        return this.f7943f;
    }

    public final com.appodeal.ads.a b(Activity activity) {
        com.appodeal.ads.a aVar = a(activity).f7950a;
        if (aVar != null) {
            return aVar;
        }
        com.appodeal.ads.a aVar2 = this.f7944g;
        return aVar2 != null ? aVar2 : this.f7943f;
    }

    public abstract void c(Activity activity);

    public static void a(z5 z5Var, b0 b0Var) {
        if (z5Var == null || z5Var.F) {
            return;
        }
        AdObjectType adobjecttype = z5Var.s;
        if (adobjecttype != 0) {
            com.appodeal.ads.utils.o.b(adobjecttype);
            ((r5) z5Var.s).k();
        }
        for (Map.Entry entry : z5Var.q.entrySet()) {
            l lVar = (l) entry.getValue();
            if (lVar != null) {
                com.appodeal.ads.utils.o.b(lVar);
                lVar.k();
            }
        }
        b0Var.getClass();
        z5Var.a(false, true);
        b0Var.o(z5Var, null);
        z5Var.F = true;
        z5Var.y();
    }

    public final long a(u<AdObjectType, AdRequestType, ?> uVar, AdRequestType adrequesttype) {
        AdObjectType adobjecttype;
        Integer num;
        int i;
        if (adrequesttype == null || (adobjecttype = adrequesttype.s) == 0) {
            return 0L;
        }
        int impressionInterval = ((r5) adobjecttype).f6826c.getImpressionInterval();
        if (impressionInterval > 0) {
            num = Integer.valueOf(impressionInterval);
        } else {
            JSONObject optJSONObject = uVar.e().f7506c.optJSONObject("impression_interval");
            int optInt = optJSONObject != null ? optJSONObject.optInt("banner", -1) * 1000 : -1;
            if (optInt > 0) {
                Integer.valueOf(optInt);
            } else {
                i = this.f7939b == null ? 15000 : 15000;
                num = this.f7939b;
            }
            this.f7939b = i;
            num = this.f7939b;
        }
        return Math.max(0L, (adrequesttype.m + num.intValue()) - System.currentTimeMillis());
    }

    public final d a(Activity activity) {
        d dVar;
        q4 q4Var = q4.f7303a;
        if (r0.l || activity == null) {
            return this.k;
        }
        Iterator it = this.l.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                dVar = null;
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            if (((WeakReference) entry.getKey()).get() == activity) {
                dVar = (d) entry.getValue();
                break;
            }
        }
        if (dVar == null) {
            d dVar2 = new d();
            this.l.put(new WeakReference(activity), dVar2);
            return dVar2;
        }
        return dVar;
    }

    @Override // com.appodeal.ads.p
    public final void a(Activity activity, y5 y5Var, u uVar, p.a aVar) {
        y5 y5Var2 = y5Var;
        uVar.a(LogConstants.EVENT_SHOW_FAILED, aVar.f7280a);
        if (aVar == p.a.f7277d || aVar == p.a.f7276c) {
            a(activity).f7950a = y5Var2.f7994c;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [AdObjectType extends com.appodeal.ads.l, com.appodeal.ads.l] */
    public final boolean a(y5 y5Var, u uVar) {
        Activity activity;
        Log.debug(this.f7938a, "onRenderRequested", TtmlNode.START);
        if (!r0.l || (activity = n5.b()) == null) {
            activity = com.appodeal.ads.context.b.f6583b.f6584a.getActivity();
        }
        Activity activity2 = activity;
        if (activity2 == null) {
            Log.debug(this.f7938a, "onRenderRequested", "Target activity can't be resolved");
            return false;
        }
        com.appodeal.ads.a aVar = this.f7943f;
        com.appodeal.ads.a aVar2 = y5Var.f7994c;
        d a2 = a(activity2);
        com.appodeal.ads.segments.g gVar = y5Var.f7287a;
        boolean z = y5Var.f7288b;
        z5 z5Var = (z5) uVar.f();
        if (z5Var == null) {
            Log.debug(this.f7938a, "onRenderRequested", "No previous loaded ads");
            Boolean valueOf = Boolean.valueOf(y5Var.f7288b);
            Boolean bool = Boolean.FALSE;
            uVar.a(LogConstants.EVENT_SHOW, String.format("isDebug: %s, isLoaded: %s, isLoading: %s, placement: '%s'", valueOf, bool, bool, gVar.f7505b));
            if (!gVar.a(activity2, uVar.f7691f, 0.0d)) {
                Log.debug(this.f7938a, "onRenderRequested", h0.a("Can't show for placement: ").append(gVar.f7504a).toString());
                return false;
            } else if (!z && uVar.k()) {
                Log.debug(this.f7938a, "onRenderRequested", "Requesting cache");
                c(activity2);
                a2.f7951b = f0.VISIBLE;
                return true;
            } else {
                Log.debug(this.f7938a, "onRenderRequested", "Skipping cache because it's debug or not auto-cache");
                return false;
            }
        }
        uVar.a(LogConstants.EVENT_SHOW, String.format("isDebug: %s, isLoaded: %s, isLoading: %s, placement: '%s'", Boolean.valueOf(y5Var.f7288b), Boolean.valueOf(z5Var.u), Boolean.valueOf(z5Var.u()), gVar.f7505b));
        if (!gVar.a(activity2, uVar.f7691f, z5Var.t)) {
            Log.debug(this.f7938a, "onRenderRequested", h0.a("Can't show for placement: ").append(gVar.f7504a).toString());
            return false;
        }
        z5 z5Var2 = (z5) uVar.y;
        if (!z && !y5Var.f7995d) {
            d a3 = a(activity2);
            f0 f0Var = a3.f7951b;
            f0 f0Var2 = f0.VISIBLE;
            if ((f0Var == f0Var2 || a3.f7950a != null) && !z5Var.f7340h && uVar.k() && a((u<AdObjectType, u, ?>) uVar, (u) z5Var2) > 0) {
                Log.debug(this.f7938a, "onRenderRequested", "Showing previous ads");
                boolean a4 = a(activity2, uVar, aVar2, aVar);
                if (a4) {
                    a2.f7951b = f0Var2;
                }
                return a4;
            }
        }
        String str = gVar.f7505b;
        if (z5Var.u || z5Var.v || z5Var.q.containsKey(str)) {
            ?? a5 = z5Var.a(gVar.f7505b);
            z5Var.s = a5;
            r5 r5Var = (r5) a5;
            if (r5Var != null) {
                View findViewById = activity2.findViewById(this.f7942e);
                if (findViewById == null) {
                    findViewById = this.f7941d;
                }
                if (findViewById == null || a(findViewById)) {
                    if (((ViewGroup) findViewById) == null && aVar2 == com.appodeal.ads.a.f6418h) {
                        uVar.a(LogConstants.EVENT_SHOW_FAILED, LogConstants.MSG_VIEW_NOT_FOUND);
                        Log.debug(this.f7938a, "onRenderRequested", "View container not found");
                        return false;
                    }
                    Log.debug(this.f7938a, "onRenderRequested", "Showing new ads");
                    activity2.runOnUiThread(new s5(this, activity2, z5Var, r5Var, aVar2, aVar, uVar));
                    a2.f7951b = f0.VISIBLE;
                    return true;
                }
                throw new IllegalArgumentException("Only BannerView.class and MrecView.class are supported as target container for position type == AdDisplayPosition.VIEW");
            }
            return false;
        } else if (z5Var.u() || (z5Var.C && !uVar.k())) {
            Log.debug(this.f7938a, "onRenderRequested", "Trying to show previous ads");
            if (a(activity2, uVar, aVar2, aVar) || (!z && uVar.k())) {
                a2.f7951b = f0.VISIBLE;
                return true;
            }
            return false;
        } else {
            Log.debug(this.f7938a, "onRenderRequested", "Trying to show previous ads");
            a(activity2, uVar, aVar2, aVar);
            if (z || !uVar.k()) {
                return false;
            }
            Log.debug(this.f7938a, "onRenderRequested", "Requesting cache");
            c(activity2);
            a2.f7951b = f0.VISIBLE;
            return true;
        }
    }

    public static void a(View view, boolean z, boolean z2) {
        if (view == null) {
            return;
        }
        HashMap hashMap = com.appodeal.ads.utils.d0.f7759a;
        synchronized (hashMap) {
            Iterator it = hashMap.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (((d0.a) entry.getValue()).f7762b == view) {
                    ((d0.a) entry.getValue()).b();
                    com.appodeal.ads.utils.d0.f7759a.remove(entry.getKey());
                    break;
                }
            }
        }
        ViewGroup viewGroup = (view.getParent() == null || !(view.getParent() instanceof ViewGroup)) ? null : (ViewGroup) view.getParent();
        if (viewGroup != null) {
            if ((viewGroup instanceof BannerView) && z) {
                viewGroup.setVisibility(8);
            }
            if ((viewGroup instanceof MrecView) && z) {
                viewGroup.setVisibility(8);
            }
            viewGroup.removeView(view);
        }
        if (viewGroup == null || viewGroup.getTag() == null || !viewGroup.getTag().equals("Appodeal") || !z2) {
            return;
        }
        ViewParent parent = viewGroup.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(viewGroup);
        }
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public final boolean a2(Activity activity, y5 y5Var, u<AdObjectType, AdRequestType, ?> uVar) {
        d a2 = a(activity);
        if (!uVar.i) {
            if (!uVar.k()) {
                Log.debug(this.f7938a, "render", "Appodeal hasn't been initialized yet, ads won't show");
                return false;
            }
            a2.f7950a = y5Var.f7994c;
            uVar.l = y5Var.f7287a;
            Log.debug(this.f7938a, "render", "Appodeal is initializing, ads will be displayed right after it's will be loaded");
            return true;
        } else if (y5Var.f7995d && a2.f7950a == null && a2.f7951b == f0.HIDDEN) {
            return false;
        } else {
            if (!com.appodeal.ads.utils.c.a(n5.b())) {
                a2.f7950a = null;
                this.f7944g = y5Var.f7994c;
                return b(activity, y5Var, uVar);
            } else if (!uVar.k()) {
                Log.debug(this.f7938a, "render", "Fullscreen ads is showing, ads won't show");
                return false;
            } else {
                a2.f7950a = y5Var.f7994c;
                uVar.l = y5Var.f7287a;
                Log.debug(this.f7938a, "render", "Fullscreen ads is showing, ads will be displayed right after it's will be closed");
                return true;
            }
        }
    }

    public final boolean a(Activity activity, u uVar, com.appodeal.ads.a aVar, com.appodeal.ads.a aVar2) {
        Log.debug(this.f7938a, "performShowPreviousAds", TtmlNode.START);
        z5 z5Var = (z5) uVar.y;
        if (z5Var != null && z5Var.C && !z5Var.E) {
            if (aVar == com.appodeal.ads.a.f6418h) {
                View findViewById = activity.findViewById(this.f7942e);
                if (findViewById == null) {
                    findViewById = this.f7941d;
                }
                if (findViewById != null && !a(findViewById)) {
                    throw new IllegalArgumentException("Only BannerView.class and MrecView.class are supported as target container for position type == AdDisplayPosition.VIEW");
                }
                if (((ViewGroup) findViewById) == null) {
                    uVar.a(LogConstants.EVENT_SHOW_FAILED, LogConstants.MSG_VIEW_NOT_FOUND);
                    Log.debug(this.f7938a, "performShowPreviousAds", "View container not found");
                    return false;
                }
            }
            r5 r5Var = (r5) z5Var.s;
            if (r5Var != null) {
                Log.debug(this.f7938a, "performShowPreviousAds", "Perform showing previous ads");
                activity.runOnUiThread(new t5(this, activity, z5Var, r5Var, aVar, aVar2, uVar));
                return true;
            }
            Log.debug(this.f7938a, "performShowPreviousAds", "Previous ads hasn't loaded object");
        }
        Log.debug(this.f7938a, "performShowPreviousAds", "Can't show previous ads, because current displaying ads is: null, wasn't shown or cleared");
        return false;
    }

    public final synchronized void a(Activity activity, u<AdObjectType, AdRequestType, ?> uVar, AdRequestType adrequesttype) {
        Log.debug(this.f7938a, "Toggle refresh", TtmlNode.START);
        x5<AdRequestType, AdObjectType>.c cVar = this.i;
        if (cVar != null) {
            q4 q4Var = q4.f7303a;
            if (!r0.l) {
                cVar.f7947a.getClass();
                if (com.appodeal.ads.context.b.f6583b.f6584a.getActivity() != activity) {
                    m.removeCallbacks(this.i);
                    Log.debug(this.f7938a, "Toggle refresh", "remove previous refresh runnable");
                }
            }
            Log.debug(this.f7938a, "Toggle refresh", "skip: already pending");
            return;
        }
        Log.debug(this.f7938a, "Toggle refresh", "create new refresh runnable");
        this.i = new c(uVar);
        long a2 = a((u<AdObjectType, u<AdObjectType, AdRequestType, ?>, ?>) uVar, (u<AdObjectType, AdRequestType, ?>) adrequesttype);
        Log.debug(this.f7938a, "Toggle refresh", "expect in " + a2 + "ms");
        m.postDelayed(this.i, a2);
    }
}
