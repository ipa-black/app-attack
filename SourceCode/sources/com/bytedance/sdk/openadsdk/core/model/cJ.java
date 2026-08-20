package com.bytedance.sdk.openadsdk.core.model;

import com.bytedance.sdk.openadsdk.AdSlot;
import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AdLogInfoModel.java */
/* loaded from: classes2.dex */
public class cJ {
    public ArrayList<Integer> CJ;
    public String Qhi;
    public int ac = 1;
    public int cJ;
    public AdSlot fl;

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

    public AdSlot CJ() {
        return this.fl;
    }

    public void Qhi(AdSlot adSlot) {
        this.fl = adSlot;
    }

    public ArrayList<Integer> fl() {
        return this.CJ;
    }

    public void Qhi(ArrayList<Integer> arrayList) {
        this.CJ = arrayList;
    }

    public static void Qhi(cJ cJVar) {
        int cJ;
        if (cJVar == null || cJVar.CJ() == null || (cJ = cJVar.cJ()) >= 0 || cJ == -8) {
            return;
        }
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi();
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi("rd_client_custom_error", false, new com.bytedance.sdk.openadsdk.Gm.cJ() { // from class: com.bytedance.sdk.openadsdk.core.model.cJ.1
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("from", cJ.this.ac());
                jSONObject.put("err_code", cJ.this.cJ());
                jSONObject.put("server_res_str", cJ.this.Qhi());
                if (cJ.this.fl() != null && cJ.this.fl().size() > 0) {
                    jSONObject.put("mate_unavailable_code_list", new JSONArray((Collection) cJ.this.fl()).toString());
                }
                new Object[]{"rd_client_custom_error = ", jSONObject};
                return com.bytedance.sdk.openadsdk.Gm.Qhi.fl.cJ().Qhi("rd_client_custom_error").Qhi(cJ.this.CJ().getDurationSlotType()).cJ(jSONObject.toString());
            }
        });
    }
}
