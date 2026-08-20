package com.criteo.publisher.advancednative;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* compiled from: VisibilityTracker.java */
/* loaded from: classes2.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private final o f8677a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<View, a> f8678b = new WeakHashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Object f8679c = new Object();

    public q(o oVar) {
        this.f8677a = oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, p pVar) {
        a aVar;
        synchronized (this.f8679c) {
            aVar = this.f8678b.get(view);
            if (aVar == null) {
                aVar = a(view);
                this.f8678b.put(view, aVar);
            }
        }
        aVar.a(pVar);
    }

    private a a(View view) {
        return new a(new WeakReference(view), this.f8677a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VisibilityTracker.java */
    /* loaded from: classes2.dex */
    public static class a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a  reason: collision with root package name */
        private final Reference<View> f8680a;

        /* renamed from: b  reason: collision with root package name */
        private final o f8681b;

        /* renamed from: c  reason: collision with root package name */
        private volatile p f8682c = null;

        a(Reference<View> reference, o oVar) {
            this.f8680a = reference;
            this.f8681b = oVar;
            a();
        }

        private void a() {
            View view = this.f8680a.get();
            if (view == null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnPreDrawListener(this);
            }
        }

        void a(p pVar) {
            this.f8682c = pVar;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (b()) {
                c();
                return true;
            }
            return true;
        }

        private boolean b() {
            View view = this.f8680a.get();
            if (view == null) {
                return false;
            }
            return this.f8681b.a(view);
        }

        private void c() {
            p pVar = this.f8682c;
            if (pVar != null) {
                pVar.a();
            }
        }
    }
}
