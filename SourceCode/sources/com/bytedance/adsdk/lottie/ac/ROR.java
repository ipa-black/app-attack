package com.bytedance.adsdk.lottie.ac;
/* compiled from: Marker.java */
/* loaded from: classes2.dex */
public class ROR {
    public final float Qhi;
    private final String ac;
    public final float cJ;

    public ROR(String str, float f2, float f3) {
        this.ac = str;
        this.cJ = f3;
        this.Qhi = f2;
    }

    public boolean Qhi(String str) {
        if (this.ac.equalsIgnoreCase(str)) {
            return true;
        }
        if (this.ac.endsWith("\r")) {
            String str2 = this.ac;
            if (str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
