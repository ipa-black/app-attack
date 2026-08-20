package com.bytedance.sdk.openadsdk.Gm.Qhi;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.js;
/* compiled from: BrowserLogModel.java */
/* loaded from: classes2.dex */
public class cJ {
    private int CJ;
    private String Qhi;
    private int ROR;
    private String Tgh;
    private String ac;
    private tP cJ;
    private boolean fl;
    private int Sf = 0;
    private int hm = 0;

    public String Qhi() {
        return this.Qhi;
    }

    public void Qhi(String str) {
        this.Qhi = str;
    }

    public tP cJ() {
        return this.cJ;
    }

    public void Qhi(tP tPVar) {
        this.cJ = tPVar;
    }

    public String ac() {
        tP tPVar;
        if (TextUtils.isEmpty(this.ac) && (tPVar = this.cJ) != null) {
            this.ac = js.Qhi(tPVar);
        }
        return this.ac;
    }

    public void cJ(String str) {
        this.ac = str;
    }

    public int CJ() {
        return this.CJ;
    }

    public void Qhi(int i) {
        this.CJ = i;
    }

    public boolean fl() {
        return this.fl;
    }

    public void Qhi(boolean z) {
        this.fl = z;
    }

    public String Tgh() {
        return this.Tgh;
    }

    public void ac(String str) {
        this.Tgh = str;
    }

    public int ROR() {
        return this.ROR;
    }

    public void cJ(int i) {
        this.ROR = i;
    }

    public int Sf() {
        return this.Sf;
    }

    public void ac(int i) {
        this.Sf = i;
    }

    public int hm() {
        return this.hm;
    }

    public void CJ(int i) {
        this.hm = i;
    }
}
