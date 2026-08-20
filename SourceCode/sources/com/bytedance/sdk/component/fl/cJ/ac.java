package com.bytedance.sdk.component.fl.cJ;

import com.bytedance.sdk.component.fl.pA;
/* compiled from: HttpRequest.java */
/* loaded from: classes2.dex */
public class ac implements com.bytedance.sdk.component.fl.Tgh {
    private pA CJ;
    private String Qhi;
    private boolean ac;
    private boolean cJ;

    public ac(String str, boolean z, boolean z2, pA pAVar) {
        this.Qhi = str;
        this.cJ = z;
        this.ac = z2;
        this.CJ = pAVar;
    }

    @Override // com.bytedance.sdk.component.fl.Tgh
    public String Qhi() {
        return this.Qhi;
    }

    @Override // com.bytedance.sdk.component.fl.Tgh
    public boolean cJ() {
        return this.cJ;
    }

    @Override // com.bytedance.sdk.component.fl.Tgh
    public boolean ac() {
        return this.ac;
    }
}
