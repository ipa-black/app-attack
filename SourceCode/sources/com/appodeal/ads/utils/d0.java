package com.appodeal.ads.utils;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.n5;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.utils.d0;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class d0 {

    /* renamed from: a  reason: collision with root package name */
    public static final HashMap f7759a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public static final Handler f7760b = new Handler(Looper.getMainLooper());

    /* loaded from: classes2.dex */
    public interface b {
        void a();

        void b();
    }

    public static void a(Object obj) {
        HashMap hashMap = f7759a;
        synchronized (hashMap) {
            a aVar = (a) hashMap.get(obj);
            if (aVar != null) {
                aVar.b();
                hashMap.remove(obj);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: b  reason: collision with root package name */
        public final View f7762b;

        /* renamed from: c  reason: collision with root package name */
        public final long f7763c;

        /* renamed from: e  reason: collision with root package name */
        public final b f7765e;

        /* renamed from: f  reason: collision with root package name */
        public ViewTreeObserver.OnPreDrawListener f7766f;

        /* renamed from: g  reason: collision with root package name */
        public View$OnAttachStateChangeListenerC0150a f7767g;

        /* renamed from: h  reason: collision with root package name */
        public long f7768h;
        public boolean i;
        public boolean j;
        public boolean k;

        /* renamed from: a  reason: collision with root package name */
        public final Rect f7761a = new Rect();
        public boolean l = true;
        public boolean m = false;
        public final Runnable n = new Runnable() { // from class: com.appodeal.ads.utils.d0$a$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                d0.a.this.b();
            }
        };

        /* renamed from: d  reason: collision with root package name */
        public final float f7764d = 0.8f;

        /* renamed from: com.appodeal.ads.utils.d0$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class View$OnAttachStateChangeListenerC0150a implements View.OnAttachStateChangeListener {
            public View$OnAttachStateChangeListenerC0150a() {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view) {
                a.this.b();
            }
        }

        public a(View view, long j, b bVar) {
            this.f7762b = view;
            this.f7763c = j;
            this.f7765e = bVar;
        }

        public static float a(Rect rect, Rect rect2) {
            int height = rect.height() * rect.width();
            if (height == 0) {
                return 0.0f;
            }
            return (height - (Math.max(0, Math.min(rect.bottom, rect2.bottom) - Math.max(rect.top, rect2.top)) * Math.max(0, Math.min(rect.right, rect2.right) - Math.max(rect.left, rect2.left)))) / height;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean a() {
            this.l = false;
            a(this.f7762b, this.f7764d);
            return true;
        }

        public final void a(View view, float f2) {
            ViewGroup viewGroup;
            String resourceEntryName;
            try {
                viewGroup = view;
            } catch (Exception e2) {
                Log.log(e2);
            }
            if (!viewGroup.getGlobalVisibleRect(this.f7761a)) {
                a("Show wasn't tracked: ad not visible globally");
            } else if (!view.isShown()) {
                a("Show wasn't tracked: ad not shown on view");
            } else if (n5.b(view)) {
                a("Show wasn't tracked: ad is transparent ");
            } else if (!view.hasWindowFocus()) {
                a("Show wasn't tracked: ad hasn't window focus");
            } else {
                Activity activity = com.appodeal.ads.context.b.f6583b.f6584a.getActivity();
                View findViewById = activity != null ? activity.findViewById(16908290) : null;
                if (findViewById == null) {
                    a("Activity content layout not found, is your activity running?");
                    return;
                }
                Rect rect = new Rect();
                findViewById.getGlobalVisibleRect(rect);
                if (!Rect.intersects(this.f7761a, rect)) {
                    a("Ad View is out of current window, show wasn't tracked");
                    return;
                }
                float width = view.getWidth() * view.getHeight();
                if (width == 0.0f) {
                    a("Ad View width or height is zero, show wasn't tracked");
                    return;
                }
                float width2 = (this.f7761a.width() * this.f7761a.height()) / width;
                if (width2 < f2) {
                    a("Ad View is not completely visible (" + width2 + "), show wasn't tracked");
                    return;
                }
                ViewGroup viewGroup2 = (ViewGroup) view.getRootView();
                ViewGroup viewGroup3 = (ViewGroup) view.getParent();
                int i = 0;
                while (viewGroup3 != null) {
                    for (int indexOfChild = viewGroup3.indexOfChild(viewGroup) + 1; indexOfChild < viewGroup3.getChildCount(); indexOfChild++) {
                        View childAt = viewGroup3.getChildAt(indexOfChild);
                        if (childAt.getVisibility() == 0) {
                            childAt.getLocationInWindow(new int[2]);
                            Rect a2 = n5.a(childAt);
                            if (Rect.intersects(this.f7761a, a2)) {
                                float a3 = a(this.f7761a, a2);
                                String.valueOf(childAt.getId());
                                try {
                                    resourceEntryName = viewGroup.getContext().getResources().getResourceEntryName(childAt.getId());
                                } catch (Exception unused) {
                                }
                                Log.log(LogConstants.KEY_SDK, LogConstants.EVENT_VIEWABILITY, String.format("Ad view is overlapped by another visible view (type: %s, id: %s), visible percent: %s", childAt.getClass().getSimpleName(), resourceEntryName, Float.valueOf(a3)), Log.LogLevel.verbose);
                                if (a3 < f2) {
                                    a("Ad View is covered by another view, show wasn't tracked");
                                    return;
                                }
                                i++;
                                if (i >= 3) {
                                    a("Ad View is covered by too many views, show wasn't tracked");
                                    return;
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                    if (viewGroup3 != viewGroup2) {
                        viewGroup = viewGroup3;
                        viewGroup3 = (ViewGroup) viewGroup3.getParent();
                    } else {
                        viewGroup3 = null;
                    }
                }
                if (!this.i) {
                    this.f7765e.a();
                    this.i = true;
                }
                if (this.k || this.j) {
                    return;
                }
                d0.f7760b.postDelayed(this.n, this.f7763c);
                this.f7768h = System.currentTimeMillis();
                this.k = true;
            }
        }

        public final void b() {
            if (this.i && !this.j && this.f7763c > -1 && this.f7768h > 0 && System.currentTimeMillis() - this.f7768h >= this.f7763c) {
                this.j = true;
                this.f7765e.b();
            }
            this.f7762b.removeOnAttachStateChangeListener(this.f7767g);
            this.f7762b.getViewTreeObserver().removeOnPreDrawListener(this.f7766f);
            d0.f7760b.removeCallbacks(this.n);
            HashMap hashMap = d0.f7759a;
            synchronized (hashMap) {
                hashMap.remove(this);
            }
        }

        public final void c() {
            if (this.f7766f == null) {
                this.f7766f = new ViewTreeObserver.OnPreDrawListener() { // from class: com.appodeal.ads.utils.d0$a$$ExternalSyntheticLambda1
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public final boolean onPreDraw() {
                        boolean a2;
                        a2 = d0.a.this.a();
                        return a2;
                    }
                };
            }
            if (this.f7767g == null) {
                this.f7767g = new View$OnAttachStateChangeListenerC0150a();
            }
            this.f7762b.addOnAttachStateChangeListener(this.f7767g);
            this.f7762b.getViewTreeObserver().addOnPreDrawListener(this.f7766f);
            a(this.f7762b, this.f7764d);
        }

        public final void a(String str) {
            if (this.l) {
                this.l = false;
            } else if (!this.m) {
                this.m = true;
                Log.log(LogConstants.KEY_SDK, LogConstants.EVENT_VIEWABILITY, str, Log.LogLevel.verbose);
            }
            if (this.j) {
                return;
            }
            d0.f7760b.removeCallbacks(this.n);
            this.k = false;
            this.f7768h = 0L;
        }
    }
}
