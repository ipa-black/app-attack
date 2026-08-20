package com.bytedance.adsdk.lottie.CJ;
/* compiled from: FileExtension.java */
/* loaded from: classes2.dex */
public enum Tgh {
    JSON(".json"),
    ZIP(".zip");
    
    public final String ac;

    Tgh(String str) {
        this.ac = str;
    }

    public String Qhi() {
        return ".temp" + this.ac;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.ac;
    }
}
