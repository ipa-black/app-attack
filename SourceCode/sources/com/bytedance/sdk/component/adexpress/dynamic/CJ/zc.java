package com.bytedance.sdk.component.adexpress.dynamic.CJ;

import com.bytedance.sdk.component.adexpress.dynamic.CJ.ac;
import java.util.ArrayList;
import java.util.List;
/* compiled from: FlexComputeRuler.java */
/* loaded from: classes2.dex */
public class zc {
    public static float Qhi(float f2) {
        return (float) Math.ceil((f2 * 16.0f) / 16.0f);
    }

    public static List<ac.Qhi> Qhi(float f2, List<ac.Qhi> list) {
        ArrayList<ac.Qhi> arrayList = new ArrayList();
        for (ac.Qhi qhi : list) {
            arrayList.add((ac.Qhi) qhi.clone());
        }
        boolean z = true;
        int i = 0;
        int i2 = 0;
        for (ac.Qhi qhi2 : arrayList) {
            if (qhi2.cJ) {
                i = (int) (i + qhi2.Qhi);
            } else {
                i2 = (int) (i2 + qhi2.Qhi);
                z = false;
            }
        }
        if (!z || f2 <= i) {
            float f3 = i;
            int i3 = (f2 > f3 ? 1 : (f2 == f3 ? 0 : -1));
            float f4 = i3 < 0 ? f2 / f3 : 1.0f;
            int i4 = (f2 > f3 ? 1 : (f2 == f3 ? 0 : -1));
            float f5 = i4 > 0 ? (f2 - f3) / i2 : 0.0f;
            if (f5 > 1.0f) {
                ArrayList arrayList2 = new ArrayList();
                boolean z2 = false;
                for (ac.Qhi qhi3 : arrayList) {
                    if (!qhi3.cJ && qhi3.ac != 0.0f && qhi3.Qhi * f5 > qhi3.ac) {
                        qhi3.Qhi = qhi3.ac;
                        qhi3.cJ = true;
                        z2 = true;
                    }
                    arrayList2.add(qhi3);
                }
                if (z2) {
                    return Qhi(f2, arrayList2);
                }
            }
            int i5 = 0;
            for (ac.Qhi qhi4 : arrayList) {
                if (qhi4.cJ) {
                    qhi4.Qhi = Qhi(qhi4.Qhi * f4);
                } else {
                    qhi4.Qhi = Qhi(qhi4.Qhi * f5);
                }
                i5 = (int) (i5 + qhi4.Qhi);
            }
            float f6 = i5;
            if (f6 < f2) {
                float f7 = f2 - f6;
                for (int i6 = 0; i6 < arrayList.size() && f7 > 0.0f; i6 = (i6 + 1) % arrayList.size()) {
                    ac.Qhi qhi5 = (ac.Qhi) arrayList.get(i6);
                    if ((i3 < 0 && qhi5.cJ) || (i4 > 0 && !qhi5.cJ)) {
                        qhi5.Qhi += 0.0625f;
                        f7 -= 0.0625f;
                    }
                }
            }
            return arrayList;
        }
        return arrayList;
    }
}
