package com.bytedance.adsdk.Qhi.cJ.ac.Qhi;

import com.bytedance.adsdk.Qhi.cJ.cJ.Qhi.hpZ;
import java.util.Deque;
/* compiled from: NumberParser.java */
/* loaded from: classes2.dex */
public class Sf extends ROR {
    private boolean Qhi(String str, int i, Deque<com.bytedance.adsdk.Qhi.cJ.cJ.Qhi> deque) {
        if ('-' == Qhi(i, str)) {
            if (deque.peek() == null || com.bytedance.adsdk.Qhi.cJ.CJ.Tgh.Qhi(deque.peek().Qhi())) {
                if (com.bytedance.adsdk.Qhi.cJ.fl.Qhi.ac(Qhi(i + 1, str))) {
                    return true;
                }
                throw new IllegalArgumentException("Unrecognized - symbol, not a negative number or operator, problem range:" + str.substring(0, i));
            }
            return false;
        }
        return com.bytedance.adsdk.Qhi.cJ.fl.Qhi.ac(Qhi(i, str));
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.ac.Qhi.ROR
    public int Qhi(String str, int i, Deque<com.bytedance.adsdk.Qhi.cJ.cJ.Qhi> deque, com.bytedance.adsdk.Qhi.cJ.ac.Qhi qhi) {
        char Qhi;
        if (!Qhi(str, i, deque)) {
            return qhi.Qhi(str, i, deque);
        }
        int i2 = Qhi(i, str) == '-' ? i + 1 : i;
        boolean z = false;
        while (true) {
            Qhi = Qhi(i2, str);
            if (com.bytedance.adsdk.Qhi.cJ.fl.Qhi.ac(Qhi) || (!z && Qhi == '.')) {
                i2++;
                if (Qhi == '.') {
                    z = true;
                }
            }
        }
        if (Qhi == '.') {
            throw new IllegalArgumentException("Illegal negative number format, problem interval:" + str.substring(i, i2));
        }
        deque.push(new hpZ(str.substring(i, i2)));
        return i2;
    }
}
