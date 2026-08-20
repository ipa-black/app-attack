package com.bytedance.sdk.component.adexpress.dynamic.ac;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: DynamicLayoutUnit.java */
/* loaded from: classes2.dex */
public class hm {
    private String ABk;
    private float CJ;
    private hm Gm;
    private String Qhi;
    private float ROR;
    private float Sf;
    private float Tgh;
    private List<hm> WAv;
    private float ac;
    private float cJ;
    private float fl;
    private Tgh hm;
    private boolean iMK;
    private List<List<hm>> zc;
    private Map<String, String> pA = new HashMap();
    private Map<Integer, String> hpZ = new HashMap();

    public String Qhi() {
        return this.ABk;
    }

    public void Qhi(String str) {
        this.ABk = str;
    }

    public Map<Integer, String> cJ() {
        return this.hpZ;
    }

    public void Qhi(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() == 0) {
                    return;
                }
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    this.hpZ.put(Integer.valueOf(optJSONObject.optInt("id")), optJSONObject.optString("value"));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public String ac() {
        return this.Qhi;
    }

    public void cJ(String str) {
        this.Qhi = str;
    }

    public float CJ() {
        return this.CJ;
    }

    public void Qhi(float f2) {
        this.CJ = f2;
    }

    public float fl() {
        return this.fl;
    }

    public void cJ(float f2) {
        this.fl = f2;
    }

    public float Tgh() {
        return this.cJ;
    }

    public void ac(float f2) {
        this.cJ = f2;
    }

    public float ROR() {
        return this.ac;
    }

    public void CJ(float f2) {
        this.ac = f2;
    }

    public float Sf() {
        return this.Tgh;
    }

    public void fl(float f2) {
        this.Tgh = f2;
    }

    public float hm() {
        return this.ROR;
    }

    public void Tgh(float f2) {
        this.ROR = f2;
    }

    public void ROR(float f2) {
        this.Sf = f2;
    }

    public Tgh WAv() {
        return this.hm;
    }

    public void Qhi(Tgh tgh) {
        this.hm = tgh;
    }

    public List<hm> Gm() {
        return this.WAv;
    }

    public void Qhi(List<hm> list) {
        this.WAv = list;
    }

    public void Qhi(hm hmVar) {
        this.Gm = hmVar;
    }

    public hm zc() {
        return this.Gm;
    }

    public int ABk() {
        ROR fl = this.hm.fl();
        return fl.Qe() + fl.YB();
    }

    public int iMK() {
        ROR fl = this.hm.fl();
        return fl.MND() + fl.dIT();
    }

    public float pA() {
        ROR fl = this.hm.fl();
        return ABk() + fl.pA() + fl.hpZ() + (fl.zc() * 2.0f);
    }

    public float hpZ() {
        ROR fl = this.hm.fl();
        return iMK() + fl.HzH() + fl.iMK() + (fl.zc() * 2.0f);
    }

    public void cJ(List<List<hm>> list) {
        this.zc = list;
    }

    public List<List<hm>> HzH() {
        return this.zc;
    }

    public boolean kYc() {
        List<hm> list = this.WAv;
        return list == null || list.size() <= 0;
    }

    public boolean tP() {
        return this.iMK;
    }

    public void Qhi(boolean z) {
        this.iMK = z;
    }

    public Map<String, String> MQ() {
        return this.pA;
    }

    public void Qhi(String str, String str2) {
        this.pA.put(str, str2);
    }

    public void qMt() {
        List<List<hm>> list = this.zc;
        if (list == null || list.size() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (List<hm> list2 : this.zc) {
            if (list2 != null && list2.size() > 0) {
                arrayList.add(list2);
            }
        }
        this.zc = arrayList;
    }

    public boolean EBS() {
        return TextUtils.equals(this.hm.fl().aP(), "flex");
    }

    public String bxS() {
        return this.hm.fl().bxS();
    }

    public void ac(String str) {
        this.hm.fl().Tgh(str);
    }

    public String toString() {
        return "DynamicLayoutUnit{id='" + this.Qhi + "', x=" + this.cJ + ", y=" + this.ac + ", width=" + this.Tgh + ", height=" + this.ROR + ", remainWidth=" + this.Sf + ", rootBrick=" + this.hm + ", childrenBrickUnits=" + this.WAv + '}';
    }

    public boolean Dww() {
        return this.hm.fl().et() < 0 || this.hm.fl().SL() < 0 || this.hm.fl().PER() < 0 || this.hm.fl().Gy() < 0;
    }

    public String Qhi(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.hm.cJ());
        sb.append(":");
        sb.append(this.Qhi);
        if (this.hm.fl() != null) {
            sb.append(":");
            sb.append(this.hm.fl().VV());
        }
        sb.append(":");
        sb.append(i);
        return sb.toString();
    }
}
