package com.bytedance.adsdk.Qhi.cJ.ac.Qhi;

import com.bytedance.adsdk.Qhi.cJ.cJ.Qhi.qMt;
import java.util.Deque;
/* compiled from: ConstantStringParser.java */
/* loaded from: classes2.dex */
public class cJ extends ROR {
    @Override // com.bytedance.adsdk.Qhi.cJ.ac.Qhi.ROR
    public int Qhi(String str, int i, Deque<com.bytedance.adsdk.Qhi.cJ.cJ.Qhi> deque, com.bytedance.adsdk.Qhi.cJ.ac.Qhi qhi) {
        if ('\'' != Qhi(i, str)) {
            return qhi.Qhi(str, i, deque);
        }
        int i2 = i + 1;
        int length = str.length();
        int i3 = i2;
        while (i3 < length && Qhi(i3, str) != '\'') {
            i3++;
        }
        if (Qhi(i3, str) != '\'') {
            throw new com.bytedance.adsdk.Qhi.Qhi.Qhi("String expression not surrounded by '", str.substring(i));
        }
        deque.push(new qMt(str.substring(i2, i3)));
        return i3 + 1;
    }
}
