package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes.dex */
public class AppLovinTouchToClickListener implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private final long f4252a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4253b;

    /* renamed from: c  reason: collision with root package name */
    private final int f4254c;

    /* renamed from: d  reason: collision with root package name */
    private final ClickRecognitionState f4255d;

    /* renamed from: e  reason: collision with root package name */
    private long f4256e;

    /* renamed from: f  reason: collision with root package name */
    private PointF f4257f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f4258g;

    /* renamed from: h  reason: collision with root package name */
    private final Context f4259h;
    private final OnClickListener i;

    /* loaded from: classes.dex */
    public enum ClickRecognitionState {
        DISABLED,
        ACTION_DOWN,
        ACTION_POINTER_UP,
        ACTION_UP
    }

    /* loaded from: classes.dex */
    public interface OnClickListener {
        void onClick(View view, PointF pointF);
    }

    public AppLovinTouchToClickListener(com.applovin.impl.sdk.n nVar, com.applovin.impl.sdk.c.b<Integer> bVar, Context context, OnClickListener onClickListener) {
        this.f4252a = ((Long) nVar.a(com.applovin.impl.sdk.c.b.aT)).longValue();
        this.f4253b = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aU)).intValue();
        this.f4254c = AppLovinSdkUtils.dpToPx(context, ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aW)).intValue());
        this.f4255d = ClickRecognitionState.values()[((Integer) nVar.a(bVar)).intValue()];
        this.f4259h = context;
        this.i = onClickListener;
    }

    private float a(float f2) {
        return f2 / this.f4259h.getResources().getDisplayMetrics().density;
    }

    private float a(PointF pointF, PointF pointF2) {
        float f2 = pointF.x - pointF2.x;
        float f3 = pointF.y - pointF2.y;
        return a((float) Math.sqrt((f2 * f2) + (f3 * f3)));
    }

    private void a(View view, MotionEvent motionEvent) {
        this.i.onClick(view, new PointF(motionEvent.getRawX(), motionEvent.getRawY()));
        this.f4258g = true;
    }

    private boolean a(MotionEvent motionEvent) {
        if (this.f4254c <= 0) {
            return true;
        }
        Point a2 = com.applovin.impl.sdk.utils.h.a(this.f4259h);
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int i = this.f4254c;
        return rawX >= ((float) i) && rawY >= ((float) i) && rawX <= ((float) (a2.x - this.f4254c)) && rawY <= ((float) (a2.y - this.f4254c));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0016, code lost:
        if (r8.f4255d != com.applovin.impl.adview.AppLovinTouchToClickListener.ClickRecognitionState.ACTION_POINTER_UP) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0052, code lost:
        if (r2 >= r4) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005b, code lost:
        if (r0 >= r2) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0068, code lost:
        if (a(r10) != false) goto L10;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r9, android.view.MotionEvent r10) {
        /*
            r8 = this;
            int r0 = r10.getActionMasked()
            r1 = 1
            if (r0 == 0) goto L5e
            if (r0 == r1) goto L19
            r2 = 6
            if (r0 == r2) goto Le
            goto L86
        Le:
            boolean r0 = r8.f4258g
            if (r0 != 0) goto L86
            com.applovin.impl.adview.AppLovinTouchToClickListener$ClickRecognitionState r0 = r8.f4255d
            com.applovin.impl.adview.AppLovinTouchToClickListener$ClickRecognitionState r2 = com.applovin.impl.adview.AppLovinTouchToClickListener.ClickRecognitionState.ACTION_POINTER_UP
            if (r0 != r2) goto L86
            goto L6a
        L19:
            boolean r0 = r8.f4258g
            if (r0 != 0) goto L24
            com.applovin.impl.adview.AppLovinTouchToClickListener$ClickRecognitionState r0 = r8.f4255d
            com.applovin.impl.adview.AppLovinTouchToClickListener$ClickRecognitionState r2 = com.applovin.impl.adview.AppLovinTouchToClickListener.ClickRecognitionState.ACTION_UP
            if (r0 != r2) goto L24
            goto L6a
        L24:
            com.applovin.impl.adview.AppLovinTouchToClickListener$ClickRecognitionState r0 = r8.f4255d
            com.applovin.impl.adview.AppLovinTouchToClickListener$ClickRecognitionState r2 = com.applovin.impl.adview.AppLovinTouchToClickListener.ClickRecognitionState.DISABLED
            if (r0 != r2) goto L86
            long r2 = android.os.SystemClock.elapsedRealtime()
            long r4 = r8.f4256e
            long r2 = r2 - r4
            android.graphics.PointF r0 = r8.f4257f
            android.graphics.PointF r4 = new android.graphics.PointF
            float r5 = r10.getX()
            float r6 = r10.getY()
            r4.<init>(r5, r6)
            float r0 = r8.a(r0, r4)
            boolean r4 = r8.f4258g
            if (r4 != 0) goto L86
            long r4 = r8.f4252a
            r6 = 0
            int r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r6 < 0) goto L54
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 >= 0) goto L86
        L54:
            int r2 = r8.f4253b
            if (r2 < 0) goto L6a
            float r2 = (float) r2
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L86
            goto L6a
        L5e:
            com.applovin.impl.adview.AppLovinTouchToClickListener$ClickRecognitionState r0 = r8.f4255d
            com.applovin.impl.adview.AppLovinTouchToClickListener$ClickRecognitionState r2 = com.applovin.impl.adview.AppLovinTouchToClickListener.ClickRecognitionState.ACTION_DOWN
            if (r0 != r2) goto L6e
            boolean r0 = r8.a(r10)
            if (r0 == 0) goto L86
        L6a:
            r8.a(r9, r10)
            goto L86
        L6e:
            long r2 = android.os.SystemClock.elapsedRealtime()
            r8.f4256e = r2
            android.graphics.PointF r9 = new android.graphics.PointF
            float r0 = r10.getX()
            float r10 = r10.getY()
            r9.<init>(r0, r10)
            r8.f4257f = r9
            r9 = 0
            r8.f4258g = r9
        L86:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.AppLovinTouchToClickListener.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
