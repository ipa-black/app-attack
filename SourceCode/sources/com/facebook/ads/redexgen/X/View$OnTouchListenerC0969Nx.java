package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Nx  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnTouchListenerC0969Nx implements View.OnTouchListener {
    public final /* synthetic */ SG A00;

    public View$OnTouchListenerC0969Nx(SG sg) {
        this.A00 = sg;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        float f2;
        int action = motionEvent.getActionMasked();
        if (action != 0) {
            if (action == 1) {
                float y = motionEvent.getY();
                f2 = this.A00.A00;
                if (f2 < y) {
                    this.A00.A0P(false);
                }
            }
        } else {
            this.A00.A00 = motionEvent.getY();
        }
        return true;
    }
}
