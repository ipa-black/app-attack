package com.bytedance.adsdk.Qhi.cJ.ac.Qhi;

import java.util.Deque;
/* compiled from: NodeParser.java */
/* loaded from: classes2.dex */
public abstract class ROR {
    public abstract int Qhi(String str, int i, Deque<com.bytedance.adsdk.Qhi.cJ.cJ.Qhi> deque, com.bytedance.adsdk.Qhi.cJ.ac.Qhi qhi);

    /* JADX INFO: Access modifiers changed from: protected */
    public char Qhi(int i, String str) {
        if (i >= str.length()) {
            return (char) 26;
        }
        return str.charAt(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int cJ(int i, String str) {
        while (com.bytedance.adsdk.Qhi.cJ.fl.Qhi.Qhi(Qhi(i, str))) {
            i++;
        }
        return i;
    }
}
