package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
/* compiled from: MediationConfig.java */
/* loaded from: classes2.dex */
public class hm implements Comparable<hm> {
    private final int CJ;
    private final String Qhi;
    private final int ROR;
    private final String Sf;
    private final int Tgh;
    private final int ac;
    private final String cJ;
    private String fl;

    public hm(String str, String str2, int i, int i2, String str3, int i3, int i4, String str4) {
        this.Qhi = str;
        this.cJ = str2;
        this.ac = i;
        this.CJ = i2;
        this.fl = str3;
        if (TextUtils.isEmpty(str3)) {
            this.fl = "0";
        }
        this.Tgh = i3;
        this.ROR = i4;
        this.Sf = str4;
    }

    public int Qhi() {
        return this.Tgh;
    }

    @Override // java.lang.Comparable
    /* renamed from: Qhi */
    public int compareTo(hm hmVar) {
        if (this.Tgh < hmVar.Qhi()) {
            return -1;
        }
        return this.Tgh == hmVar.Qhi() ? 0 : 1;
    }
}
