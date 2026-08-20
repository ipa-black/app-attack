package com.bytedance.sdk.openadsdk.core.cJ;

import android.graphics.Point;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.settings.ABk;
/* compiled from: InteractionListener.java */
/* loaded from: classes2.dex */
public abstract class ac implements View.OnClickListener, View.OnTouchListener {
    private static float CJ = 0.0f;
    private static float Qhi = 0.0f;
    private static float ac = 0.0f;
    private static float cJ = 0.0f;
    private static long fl = 0;
    protected static int sDy = 8;
    protected View lG;
    protected float qMt = -1.0f;
    protected float EBS = -1.0f;
    protected float bxS = -1.0f;
    protected float Dww = -1.0f;
    protected long CQU = -1;
    protected long pM = -1;
    protected int Eh = -1;
    protected int aP = -1024;
    protected int NFd = -1;
    protected boolean lB = true;
    public SparseArray<Qhi> Jma = new SparseArray<>();
    private int Tgh = 0;
    private int ROR = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<Qhi> sparseArray, boolean z);

    static {
        if (HzH.Qhi() != null) {
            sDy = HzH.cJ();
        }
        Qhi = 0.0f;
        cJ = 0.0f;
        ac = 0.0f;
        CJ = 0.0f;
        fl = 0L;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (ABk.Qhi()) {
            Qhi(view, this.qMt, this.EBS, this.bxS, this.Dww, this.Jma, this.lB);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
        if (com.bytedance.sdk.openadsdk.core.cJ.ac.CJ <= r3) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r14, android.view.MotionEvent r15) {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.cJ.ac.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    private boolean Qhi(View view, Point point) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (cJ.ac(childAt)) {
                    int[] iArr = new int[2];
                    childAt.getLocationOnScreen(iArr);
                    return view.isShown() && point.x >= iArr[0] && point.x <= iArr[0] + childAt.getWidth() && point.y >= iArr[1] && point.y <= iArr[1] + childAt.getHeight();
                } else if (Qhi(childAt, point)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* compiled from: InteractionListener.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        public long CJ;
        public int Qhi;
        public double ac;
        public double cJ;

        public Qhi(int i, double d2, double d3, long j) {
            this.Qhi = i;
            this.cJ = d2;
            this.ac = d3;
            this.CJ = j;
        }
    }

    public boolean ROR() {
        return this.lB;
    }
}
