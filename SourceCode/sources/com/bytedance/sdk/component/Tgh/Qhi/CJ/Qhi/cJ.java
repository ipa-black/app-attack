package com.bytedance.sdk.component.Tgh.Qhi.CJ.Qhi;

import android.text.TextUtils;
import com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.firebase.messaging.Constants;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AdLogEvent.java */
/* loaded from: classes2.dex */
public class cJ implements Tgh {
    private byte CJ;
    private String Gm;
    protected JSONObject Qhi;
    private long ROR;
    private String Sf;
    private long Tgh;
    private byte WAv;
    private byte ac;
    private ac cJ;
    private long fl;
    private String hm;
    private int zc;

    public cJ(String str, JSONObject jSONObject) {
        this.hm = str;
        this.Qhi = jSONObject;
    }

    public cJ(String str, ac acVar) {
        this.hm = str;
        this.cJ = acVar;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public ac Qhi() {
        return this.cJ;
    }

    private cJ() {
    }

    public String Gm() {
        return this.Gm;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public synchronized JSONObject ROR() {
        ac acVar;
        if (this.Qhi == null && (acVar = this.cJ) != null) {
            this.Qhi = acVar.Qhi(Gm());
        }
        return this.Qhi;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public void Qhi(JSONObject jSONObject) {
        this.Qhi = jSONObject;
    }

    public static Tgh ac(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt(SessionDescription.ATTR_TYPE);
            int optInt2 = jSONObject.optInt(Constants.FirelogAnalytics.PARAM_PRIORITY);
            cJ cJVar = new cJ();
            cJVar.Qhi((byte) optInt);
            cJVar.cJ((byte) optInt2);
            cJVar.Qhi(jSONObject.optJSONObject("event"));
            cJVar.Qhi(jSONObject.optString("localId"));
            cJVar.cJ(jSONObject.optString("genTime"));
            cJVar.Qhi(jSONObject.optInt("channel"));
            return cJVar;
        } catch (JSONException unused) {
            return null;
        }
    }

    public void ac(byte b2) {
        this.WAv = b2;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public byte cJ() {
        return this.WAv;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public String ac() {
        return this.hm;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public byte CJ() {
        return this.ac;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public void Qhi(byte b2) {
        this.ac = b2;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public void Qhi(String str) {
        this.hm = str;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public void cJ(String str) {
        this.Sf = str;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public void Qhi(long j) {
        this.fl = j;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public long Sf() {
        return this.fl;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public void cJ(long j) {
        this.Tgh = j;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public long hm() {
        return this.Tgh;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public void ac(long j) {
        this.ROR = j;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public int WAv() {
        return this.zc;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public void Qhi(int i) {
        this.zc = i;
    }

    public String zc() {
        return this.Sf;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public void cJ(byte b2) {
        this.CJ = b2;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public byte fl() {
        return this.CJ;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh
    public String Tgh() {
        if (TextUtils.isEmpty(this.hm)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("localId", this.hm);
            jSONObject.put("event", ROR());
            jSONObject.put("genTime", zc());
            jSONObject.put(Constants.FirelogAnalytics.PARAM_PRIORITY, (int) this.CJ);
            jSONObject.put(SessionDescription.ATTR_TYPE, (int) this.ac);
            jSONObject.put("channel", this.zc);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }
}
