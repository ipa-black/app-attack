package com.applovin.impl.mediation.nativeAds.a;

import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final WeakHashMap<View, Integer> f5338a = new WeakHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final Object f5339b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final Handler f5340c = new Handler();

    /* renamed from: d  reason: collision with root package name */
    private boolean f5341d = false;

    /* renamed from: e  reason: collision with root package name */
    private final WeakReference<View> f5342e;

    /* renamed from: f  reason: collision with root package name */
    private final ViewTreeObserver.OnPreDrawListener f5343f;

    /* renamed from: g  reason: collision with root package name */
    private a f5344g;

    /* loaded from: classes.dex */
    public interface a {
        void a(int i, int i2);
    }

    public c(View view) {
        this.f5342e = new WeakReference<>(view);
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            this.f5343f = null;
            return;
        }
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.applovin.impl.mediation.nativeAds.a.c.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                c.this.b();
                return true;
            }
        };
        this.f5343f = onPreDrawListener;
        viewTreeObserver.addOnPreDrawListener(onPreDrawListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.f5341d) {
            return;
        }
        this.f5341d = true;
        this.f5340c.postDelayed(new Runnable() { // from class: com.applovin.impl.mediation.nativeAds.a.c.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (c.this.f5339b) {
                    c.this.f5341d = false;
                    int i = -1;
                    int i2 = -1;
                    for (Map.Entry entry : c.this.f5338a.entrySet()) {
                        if (c.this.b((View) entry.getKey())) {
                            Integer num = (Integer) entry.getValue();
                            if (i == -1 && i2 == -1) {
                                i = num.intValue();
                                i2 = num.intValue();
                            } else {
                                i = Math.min(i, ((Integer) entry.getValue()).intValue());
                                i2 = Math.max(i2, ((Integer) entry.getValue()).intValue());
                            }
                        }
                    }
                    if (c.this.f5344g != null) {
                        c.this.f5344g.a(i, i2);
                    }
                }
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(View view) {
        return (view == null || view.getVisibility() != 0 || view.getParent() == null) ? false : true;
    }

    public void a() {
        ViewTreeObserver.OnPreDrawListener onPreDrawListener;
        this.f5344g = null;
        View view = this.f5342e.get();
        if (view != null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive() && (onPreDrawListener = this.f5343f) != null) {
                viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            }
            this.f5342e.clear();
        }
    }

    public void a(View view) {
        synchronized (this.f5339b) {
            this.f5338a.remove(view);
        }
    }

    public void a(View view, int i) {
        synchronized (this.f5339b) {
            this.f5338a.put(view, Integer.valueOf(i));
            b();
        }
    }

    public void a(a aVar) {
        this.f5344g = aVar;
    }
}
