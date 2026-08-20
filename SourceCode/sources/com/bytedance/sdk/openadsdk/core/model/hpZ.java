package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
/* compiled from: Image.java */
/* loaded from: classes2.dex */
public class hpZ {
    private double CJ;
    private String Qhi;
    private String Tgh;
    private int ac;
    private int cJ;
    private boolean fl;

    public String Qhi() {
        return this.Qhi;
    }

    public void Qhi(String str) {
        this.Qhi = str;
    }

    public int cJ() {
        return this.cJ;
    }

    public void Qhi(int i) {
        this.cJ = i;
    }

    public int ac() {
        return this.ac;
    }

    public void cJ(int i) {
        this.ac = i;
    }

    public double CJ() {
        return this.CJ;
    }

    public boolean fl() {
        return !TextUtils.isEmpty(this.Qhi) && this.cJ > 0 && this.ac > 0;
    }

    public boolean Tgh() {
        return this.fl;
    }

    public void Qhi(boolean z) {
        this.fl = z;
    }

    public String ROR() {
        return this.Tgh;
    }

    public void cJ(String str) {
        this.Tgh = str;
    }
}
