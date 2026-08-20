package com.bytedance.adsdk.Qhi.cJ.ac.Qhi;

import com.bytedance.adsdk.Qhi.cJ.cJ.Qhi.HzH;
import java.util.Deque;
/* compiled from: OperatorParser.java */
/* loaded from: classes2.dex */
public class hm extends ROR {
    @Override // com.bytedance.adsdk.Qhi.cJ.ac.Qhi.ROR
    public int Qhi(String str, int i, Deque<com.bytedance.adsdk.Qhi.cJ.cJ.Qhi> deque, com.bytedance.adsdk.Qhi.cJ.ac.Qhi qhi) {
        if (!com.bytedance.adsdk.Qhi.cJ.fl.Qhi.CJ(Qhi(i, str))) {
            return qhi.Qhi(str, i, deque);
        }
        int i2 = i + 1;
        String str2 = new String(new char[]{Qhi(i, str), Qhi(i2, str)});
        if (com.bytedance.adsdk.Qhi.cJ.CJ.Tgh.Qhi(str2) != null) {
            deque.push(new HzH(com.bytedance.adsdk.Qhi.cJ.CJ.Tgh.Qhi(str2)));
            return i + 2;
        }
        String valueOf = String.valueOf(Qhi(i, str));
        if (com.bytedance.adsdk.Qhi.cJ.CJ.Tgh.Qhi(valueOf) != null) {
            deque.push(new HzH(com.bytedance.adsdk.Qhi.cJ.CJ.Tgh.Qhi(valueOf)));
            return i2;
        }
        throw new IllegalArgumentException("Unrecognized:" + valueOf + "examine:" + str.substring(0, i));
    }
}
