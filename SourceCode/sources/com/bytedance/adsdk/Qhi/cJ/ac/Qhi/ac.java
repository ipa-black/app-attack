package com.bytedance.adsdk.Qhi.cJ.ac.Qhi;

import com.bytedance.adsdk.Qhi.cJ.cJ.Qhi.bxS;
import java.util.Deque;
/* compiled from: IdentifierParser.java */
/* loaded from: classes2.dex */
public class ac extends ROR {
    @Override // com.bytedance.adsdk.Qhi.cJ.ac.Qhi.ROR
    public int Qhi(String str, int i, Deque<com.bytedance.adsdk.Qhi.cJ.cJ.Qhi> deque, com.bytedance.adsdk.Qhi.cJ.ac.Qhi qhi) {
        if (!com.bytedance.adsdk.Qhi.cJ.fl.Qhi.cJ(Qhi(i, str))) {
            return qhi.Qhi(str, i, deque);
        }
        return Qhi(str, i, deque);
    }

    private int Qhi(String str, int i, Deque<com.bytedance.adsdk.Qhi.cJ.cJ.Qhi> deque) {
        int i2;
        int i3 = 0;
        while (true) {
            i2 = i3 + i;
            char Qhi = Qhi(i2, str);
            if (!com.bytedance.adsdk.Qhi.cJ.fl.Qhi.cJ(Qhi) && !com.bytedance.adsdk.Qhi.cJ.fl.Qhi.ac(Qhi) && '.' != Qhi && '[' != Qhi && ']' != Qhi && '_' != Qhi && '-' != Qhi) {
                break;
            }
            i3++;
        }
        String substring = str.substring(i, i2);
        if (com.bytedance.adsdk.Qhi.cJ.CJ.ac.Qhi(substring) != null) {
            deque.push(new com.bytedance.adsdk.Qhi.cJ.cJ.Qhi.Sf(substring));
        } else {
            deque.push(new bxS(substring));
        }
        return i2;
    }
}
