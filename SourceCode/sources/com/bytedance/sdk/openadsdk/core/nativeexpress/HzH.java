package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.Gm;
import com.bytedance.sdk.openadsdk.utils.zn;
/* compiled from: ViewGestureDetector.java */
/* loaded from: classes2.dex */
public class HzH extends GestureDetector {
    private final Qhi Qhi;
    private final com.bytedance.sdk.openadsdk.core.cJ.ROR cJ;

    public HzH(Context context) {
        this(context, new Qhi());
    }

    public HzH(Context context, Qhi qhi) {
        super(context, qhi);
        this.Qhi = qhi;
        this.cJ = new com.bytedance.sdk.openadsdk.core.cJ.ROR();
        setIsLongpressEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi() {
        this.Qhi.Qhi();
    }

    public boolean cJ() {
        return this.Qhi.cJ();
    }

    public com.bytedance.sdk.openadsdk.core.model.Gm Qhi(Context context, View view, View view2) {
        if (this.cJ == null) {
            return new Gm.Qhi().Qhi();
        }
        return new Gm.Qhi().Tgh(this.cJ.Qhi).fl(this.cJ.cJ).CJ(this.cJ.ac).ac(this.cJ.CJ).cJ(this.cJ.fl).Qhi(this.cJ.Tgh).cJ(zn.Qhi(view)).Qhi(zn.Qhi(view2)).ac(zn.ac(view)).CJ(zn.ac(view2)).CJ(this.cJ.ROR).fl(this.cJ.Sf).Tgh(this.cJ.hm).Qhi(this.cJ.zc).cJ(com.bytedance.sdk.openadsdk.core.hm.cJ().Qhi() ? 1 : 2).Qhi("vessel").Qhi(zn.fl(context)).ac(zn.ROR(context)).cJ(zn.Tgh(context)).Qhi();
    }

    @Override // android.view.GestureDetector
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.cJ.Qhi(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    /* compiled from: ViewGestureDetector.java */
    /* loaded from: classes2.dex */
    static class Qhi extends GestureDetector.SimpleOnGestureListener {
        boolean Qhi = false;

        Qhi() {
        }

        void Qhi() {
            this.Qhi = false;
        }

        boolean cJ() {
            return this.Qhi;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            this.Qhi = true;
            return super.onSingleTapUp(motionEvent);
        }
    }
}
