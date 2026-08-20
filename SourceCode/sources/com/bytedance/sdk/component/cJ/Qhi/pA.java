package com.bytedance.sdk.component.cJ.Qhi;
/* compiled from: RequestBody.java */
/* loaded from: classes2.dex */
public class pA {
    public String CJ;
    public Qhi Tgh;
    public WAv ac;
    public byte[] fl;

    /* compiled from: RequestBody.java */
    /* loaded from: classes2.dex */
    public enum Qhi {
        STRING_TYPE,
        BYTE_ARRAY_TYPE
    }

    public pA() {
    }

    public String Qhi() {
        return this.CJ;
    }

    public pA(WAv wAv, String str, Qhi qhi) {
        this.ac = wAv;
        this.CJ = str;
        this.Tgh = qhi;
    }

    public pA(WAv wAv, byte[] bArr, Qhi qhi) {
        this.ac = wAv;
        this.fl = bArr;
        this.Tgh = qhi;
    }

    public static pA Qhi(WAv wAv, String str) {
        return new pA(wAv, str, Qhi.STRING_TYPE);
    }

    public static pA Qhi(WAv wAv, byte[] bArr) {
        return new pA(wAv, bArr, Qhi.BYTE_ARRAY_TYPE);
    }
}
