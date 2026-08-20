package com.bytedance.sdk.openadsdk.api.nativeAd;
/* loaded from: classes2.dex */
public class PAGImageItem {
    private float CJ;
    private final int Qhi;
    private final String ac;
    private final int cJ;

    public PAGImageItem(int i, int i2, String str, float f2) {
        this.Qhi = i;
        this.cJ = i2;
        this.ac = str;
        this.CJ = f2;
    }

    public PAGImageItem(int i, int i2, String str) {
        this(i, i2, str, 0.0f);
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

    public float getDuration() {
        return this.CJ;
    }
}
