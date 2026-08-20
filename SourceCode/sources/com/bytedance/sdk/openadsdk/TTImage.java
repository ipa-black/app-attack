package com.bytedance.sdk.openadsdk;
/* loaded from: classes2.dex */
public class TTImage {
    private double CJ;
    private final int Qhi;
    private final String ac;
    private final int cJ;

    public TTImage(int i, int i2, String str, double d2) {
        this.Qhi = i;
        this.cJ = i2;
        this.ac = str;
        this.CJ = d2;
    }

    public TTImage(int i, int i2, String str) {
        this(i, i2, str, 0.0d);
    }

    public int getHeight() {
        return this.Qhi;
    }

    public int getWidth() {
        return this.cJ;
    }

    public String getImageUrl() {
        return this.ac;
    }

    public double getDuration() {
        return this.CJ;
    }

    public boolean isValid() {
        String str;
        return this.Qhi > 0 && this.cJ > 0 && (str = this.ac) != null && str.length() > 0;
    }
}
