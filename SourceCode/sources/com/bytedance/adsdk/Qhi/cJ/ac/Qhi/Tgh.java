package com.bytedance.adsdk.Qhi.cJ.ac.Qhi;

import java.util.Deque;
/* compiled from: MethodParser.java */
/* loaded from: classes2.dex */
public class Tgh extends ROR {
    @Override // com.bytedance.adsdk.Qhi.cJ.ac.Qhi.ROR
    public int Qhi(String str, int i, Deque<com.bytedance.adsdk.Qhi.cJ.cJ.Qhi> deque, com.bytedance.adsdk.Qhi.cJ.ac.Qhi qhi) {
        char Qhi;
        int i2 = i;
        while (true) {
            Qhi = Qhi(i2, str);
            if (!com.bytedance.adsdk.Qhi.cJ.fl.Qhi.cJ(Qhi) && !com.bytedance.adsdk.Qhi.cJ.fl.Qhi.ac(Qhi)) {
                break;
            }
            i2++;
        }
        if (Qhi != '(') {
            return qhi.Qhi(str, i, deque);
        }
        deque.push(new com.bytedance.adsdk.Qhi.cJ.cJ.Qhi.Gm(str.substring(i, i2)));
        return i2 + 1;
    }
}
