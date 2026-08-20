package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Ox  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnTouchListenerC0994Ox implements View.OnTouchListener {
    public final /* synthetic */ C0995Oy A00;

    public View$OnTouchListenerC0994Ox(C0995Oy c0995Oy) {
        this.A00 = c0995Oy;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        InterfaceC0821Ia interfaceC0821Ia;
        AbstractC1268Zs abstractC1268Zs;
        if (motionEvent.getAction() == 1) {
            this.A00.A01 = System.currentTimeMillis();
            C0995Oy.A00(this.A00);
            interfaceC0821Ia = this.A00.A06;
            abstractC1268Zs = this.A00.A03;
            interfaceC0821Ia.A9N(abstractC1268Zs.A0m(), new NA().A03(this.A00.getViewabilityChecker()).A02(this.A00.getTouchDataRecorder()).A05());
            return false;
        }
        return false;
    }
}
