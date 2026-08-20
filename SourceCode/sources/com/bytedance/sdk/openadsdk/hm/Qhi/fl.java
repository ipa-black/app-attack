package com.bytedance.sdk.openadsdk.hm.Qhi;

import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.Qhi.kYc;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.core.NFd;
import com.bytedance.sdk.openadsdk.core.model.tP;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: InteractiveFinishMethod.java */
/* loaded from: classes2.dex */
public class fl extends com.bytedance.sdk.component.Qhi.Tgh<JSONObject, JSONObject> {
    private final WeakReference<NFd> Qhi;

    public static void Qhi(kYc kyc, NFd nFd) {
        kyc.Qhi("interactiveFinish", new fl(nFd));
    }

    @Override // com.bytedance.sdk.component.Qhi.Tgh
    public JSONObject Qhi(JSONObject jSONObject, com.bytedance.sdk.component.Qhi.ROR ror) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<NFd> weakReference = this.Qhi;
        if (weakReference != null && weakReference.get() != null) {
            NFd nFd = this.Qhi.get();
            tP ac = nFd.ac();
            try {
                boolean z = true;
                int i = 0;
                if (jSONObject.optInt(Constants.FINISH, 1) != 1) {
                    z = false;
                }
                int optInt = jSONObject.optInt("reduce_duration", -1);
                int pF = ac != null ? ac.pF() : 0;
                if (optInt >= 0 && pF >= 0) {
                    optInt = Math.min(optInt, pF);
                } else if (optInt < 0) {
                    optInt = pF >= 0 ? pF : 0;
                }
                if (z) {
                    nFd.ac(optInt);
                } else {
                    i = -1;
                }
                jSONObject2.put("code", i);
                jSONObject2.put("reduce_duration", optInt);
            } catch (JSONException e2) {
                ABk.Qhi("InteractiveFinishMethod", e2.getMessage());
            }
        }
        return jSONObject2;
    }

    public fl(NFd nFd) {
        this.Qhi = new WeakReference<>(nFd);
    }
}
