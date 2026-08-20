package com.explorestack.iab.mraid;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
/* loaded from: classes2.dex */
public class m extends GestureDetector {

    /* renamed from: a  reason: collision with root package name */
    public final a f9382a;

    /* loaded from: classes2.dex */
    public static class a extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a  reason: collision with root package name */
        public boolean f9383a = false;

        public boolean a() {
            return this.f9383a;
        }

        public void b() {
            this.f9383a = false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            this.f9383a = true;
            return super.onSingleTapUp(motionEvent);
        }
    }

    public m(Context context) {
        this(context, new a());
    }

    private m(Context context, a aVar) {
        super(context, aVar);
        this.f9382a = aVar;
        setIsLongpressEnabled(false);
    }

    public boolean a() {
        return this.f9382a.a();
    }

    public void b() {
        this.f9382a.b();
    }
}
