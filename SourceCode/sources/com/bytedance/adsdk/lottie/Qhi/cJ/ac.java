package com.bytedance.adsdk.lottie.Qhi.cJ;

import android.graphics.Color;
import android.graphics.Paint;
import com.bytedance.adsdk.lottie.Qhi.cJ.Qhi;
/* compiled from: DropShadowKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class ac implements Qhi.InterfaceC0175Qhi {
    private final Qhi<Float, Float> CJ;
    private final Qhi.InterfaceC0175Qhi Qhi;
    private boolean ROR = true;
    private final Qhi<Float, Float> Tgh;
    private final Qhi<Float, Float> ac;
    private final Qhi<Integer, Integer> cJ;
    private final Qhi<Float, Float> fl;

    public ac(Qhi.InterfaceC0175Qhi interfaceC0175Qhi, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi, com.bytedance.adsdk.lottie.fl.Gm gm) {
        this.Qhi = interfaceC0175Qhi;
        Qhi<Integer, Integer> Qhi = gm.Qhi().Qhi();
        this.cJ = Qhi;
        Qhi.Qhi(this);
        qhi.Qhi(Qhi);
        Qhi<Float, Float> Qhi2 = gm.cJ().Qhi();
        this.ac = Qhi2;
        Qhi2.Qhi(this);
        qhi.Qhi(Qhi2);
        Qhi<Float, Float> Qhi3 = gm.ac().Qhi();
        this.CJ = Qhi3;
        Qhi3.Qhi(this);
        qhi.Qhi(Qhi3);
        Qhi<Float, Float> Qhi4 = gm.CJ().Qhi();
        this.fl = Qhi4;
        Qhi4.Qhi(this);
        qhi.Qhi(Qhi4);
        Qhi<Float, Float> Qhi5 = gm.fl().Qhi();
        this.Tgh = Qhi5;
        Qhi5.Qhi(this);
        qhi.Qhi(Qhi5);
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.InterfaceC0175Qhi
    public void Qhi() {
        this.ROR = true;
        this.Qhi.Qhi();
    }

    public void Qhi(Paint paint) {
        if (this.ROR) {
            this.ROR = false;
            double floatValue = this.CJ.ROR().floatValue() * 0.017453292519943295d;
            float floatValue2 = this.fl.ROR().floatValue();
            float sin = ((float) Math.sin(floatValue)) * floatValue2;
            float cos = ((float) Math.cos(floatValue + 3.141592653589793d)) * floatValue2;
            int intValue = this.cJ.ROR().intValue();
            paint.setShadowLayer(this.Tgh.ROR().floatValue(), sin, cos, Color.argb(Math.round(this.ac.ROR().floatValue()), Color.red(intValue), Color.green(intValue), Color.blue(intValue)));
        }
    }
}
