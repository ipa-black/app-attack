package com.appnext.core;
/* loaded from: classes.dex */
public class ECPM {
    private String banner;
    private float ecpm;
    private float ppr;

    public ECPM(float f2, float f3, String str) {
        this.ecpm = f2;
        this.ppr = f3;
        this.banner = str;
    }

    public float getEcpm() {
        return this.ecpm;
    }

    protected final void a(float f2) {
        this.ecpm = f2;
    }

    public float getPpr() {
        return this.ppr;
    }

    protected final void b(float f2) {
        this.ppr = f2;
    }

    public String getBanner() {
        return this.banner;
    }

    protected final void ac(String str) {
        this.banner = str;
    }
}
