package com.bytedance.adsdk.Qhi.cJ.ac.Qhi;

import com.bytedance.adsdk.Qhi.cJ.cJ.Qhi.EBS;
import java.util.Deque;
/* compiled from: LeftParenParser.java */
/* loaded from: classes2.dex */
public class fl extends ROR {
    @Override // com.bytedance.adsdk.Qhi.cJ.ac.Qhi.ROR
    public int Qhi(String str, int i, Deque<com.bytedance.adsdk.Qhi.cJ.cJ.Qhi> deque, com.bytedance.adsdk.Qhi.cJ.ac.Qhi qhi) {
        if ('(' != Qhi(i, str)) {
            return qhi.Qhi(str, i, deque);
        }
        deque.push(new EBS(com.bytedance.adsdk.Qhi.cJ.CJ.ROR.LEFT_PAREN));
        return i + 1;
    }
}
