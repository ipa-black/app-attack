package com.bytedance.adsdk.ugeno.core;

import org.json.JSONObject;
/* compiled from: UGenEvent.java */
/* loaded from: classes2.dex */
public class zc {
    private zc CJ;
    private com.bytedance.adsdk.ugeno.component.cJ Qhi;
    private JSONObject ac;
    private int cJ;
    private zc fl;

    public com.bytedance.adsdk.ugeno.component.cJ Qhi() {
        return this.Qhi;
    }

    public void Qhi(com.bytedance.adsdk.ugeno.component.cJ cJVar) {
        this.Qhi = cJVar;
    }

    public int cJ() {
        return this.cJ;
    }

    public void Qhi(int i) {
        this.cJ = i;
    }

    public JSONObject ac() {
        return this.ac;
    }

    public void Qhi(JSONObject jSONObject) {
        this.ac = jSONObject;
    }

    public zc CJ() {
        return this.CJ;
    }

    public void Qhi(zc zcVar) {
        this.CJ = zcVar;
    }

    public void cJ(zc zcVar) {
        this.fl = zcVar;
    }

    public String toString() {
        return "UGenEvent{mWidget=" + this.Qhi + ", mEventType=" + this.cJ + ", mEvent=" + this.ac + '}';
    }
}
