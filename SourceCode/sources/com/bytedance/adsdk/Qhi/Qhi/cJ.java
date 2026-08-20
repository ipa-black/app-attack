package com.bytedance.adsdk.Qhi.Qhi;
/* compiled from: UnParsedException.java */
/* loaded from: classes2.dex */
public class cJ extends RuntimeException {
    public cJ(String str, Throwable th) {
        super("Unable to parse expression:".concat(String.valueOf(str)), th);
    }
}
