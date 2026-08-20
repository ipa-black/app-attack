package com.bytedance.sdk.component.Tgh.Qhi.Tgh;

import android.text.TextUtils;
import java.util.Map;
/* compiled from: TrackInfo.java */
/* loaded from: classes2.dex */
public class fl {
    private boolean Gm;
    private final String Qhi;
    private String ROR;
    private String Sf;
    private final String Tgh;
    private final boolean ac;
    private final String cJ;
    private final int fl;
    private int CJ = -1;
    private int hm = 0;
    private String WAv = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fl(String str, String str2, boolean z, int i, String str3) {
        this.Qhi = str;
        this.cJ = str2;
        this.ac = z;
        this.fl = i;
        this.Tgh = str3;
    }

    public String Qhi() {
        return this.Qhi;
    }

    public String cJ() {
        return this.cJ;
    }

    public boolean ac() {
        return this.ac;
    }

    public int CJ() {
        return this.CJ;
    }

    public void Qhi(int i) {
        this.CJ = i;
    }

    public int fl() {
        return this.fl;
    }

    public String Tgh() {
        return this.Tgh;
    }

    public void Qhi(String str) {
        this.ROR = str;
    }

    public String ROR() {
        return this.ROR;
    }

    public void cJ(int i) {
        this.hm = i;
        if (i == 0) {
            return;
        }
        if (TextUtils.isEmpty(this.ROR)) {
            this.ROR = String.valueOf(this.hm);
        } else {
            this.ROR += "," + this.hm;
        }
    }

    public int Sf() {
        return this.hm;
    }

    public void cJ(String str) {
        this.Sf = str;
    }

    public String hm() {
        return this.Sf;
    }

    public void ac(String str) {
        this.WAv = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (TextUtils.isEmpty(this.Sf)) {
            this.Sf = String.valueOf(this.WAv);
        } else {
            this.Sf += "," + this.WAv;
        }
    }

    public void Qhi(boolean z) {
        this.Gm = z;
    }

    public boolean WAv() {
        return this.Gm;
    }

    public Runnable Qhi(String str, Map<String, String> map) {
        return Qhi.Qhi().Qhi(this, str, map);
    }

    public boolean Gm() {
        return this.CJ == -1;
    }
}
