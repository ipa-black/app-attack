package com.explorestack.iab.mraid;

import android.view.View;
import android.view.ViewTreeObserver;
import com.explorestack.iab.utils.Utils;
/* loaded from: classes2.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    public a f9366a;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final View[] f9367a;

        /* renamed from: b  reason: collision with root package name */
        public Runnable f9368b;

        /* renamed from: c  reason: collision with root package name */
        public int f9369c;

        /* renamed from: d  reason: collision with root package name */
        public final Runnable f9370d = new RunnableC0256a();

        /* renamed from: com.explorestack.iab.mraid.k$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class RunnableC0256a implements Runnable {

            /* renamed from: com.explorestack.iab.mraid.k$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class ViewTreeObserver$OnPreDrawListenerC0257a implements ViewTreeObserver.OnPreDrawListener {

                /* renamed from: a  reason: collision with root package name */
                public final /* synthetic */ View f9372a;

                public ViewTreeObserver$OnPreDrawListenerC0257a(View view) {
                    this.f9372a = view;
                }

                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    this.f9372a.getViewTreeObserver().removeOnPreDrawListener(this);
                    a.this.b();
                    return true;
                }
            }

            public RunnableC0256a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                View[] viewArr;
                for (View view : a.this.f9367a) {
                    if (view.getHeight() > 0 || view.getWidth() > 0) {
                        a.this.b();
                    } else {
                        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC0257a(view));
                    }
                }
            }
        }

        public a(View[] viewArr) {
            this.f9367a = viewArr;
        }

        public void a() {
            Utils.cancelOnUiThread(this.f9370d);
            this.f9368b = null;
        }

        public void a(Runnable runnable) {
            this.f9368b = runnable;
            this.f9369c = this.f9367a.length;
            Utils.postOnUiThread(this.f9370d);
        }

        public void b() {
            Runnable runnable;
            int i = this.f9369c - 1;
            this.f9369c = i;
            if (i != 0 || (runnable = this.f9368b) == null) {
                return;
            }
            runnable.run();
            this.f9368b = null;
        }
    }

    public a a(View... viewArr) {
        a();
        a aVar = new a(viewArr);
        this.f9366a = aVar;
        return aVar;
    }

    public void a() {
        a aVar = this.f9366a;
        if (aVar != null) {
            aVar.a();
            this.f9366a = null;
        }
    }
}
