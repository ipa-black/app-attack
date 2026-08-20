package com.bykv.vk.openvk.component.video.Qhi.cJ.fl;

import android.text.TextUtils;
import com.bytedance.sdk.component.cJ.Qhi.hpZ;
import com.bytedance.sdk.component.cJ.Qhi.iMK;
import com.bytedance.sdk.component.cJ.Qhi.zc;
import java.io.IOException;
import java.util.Map;
/* compiled from: NetworkSoureVolleyImpl.java */
/* loaded from: classes2.dex */
public class fl implements cJ {
    private zc Qhi;

    public fl() {
        this.Qhi = null;
        this.Qhi = com.bykv.vk.openvk.component.video.api.ac.CJ();
    }

    @Override // com.bykv.vk.openvk.component.video.Qhi.cJ.fl.cJ
    public Qhi Qhi(Tgh tgh) throws IOException {
        iMK.Qhi qhi = new iMK.Qhi();
        try {
            if (tgh.fl != null) {
                for (Map.Entry<String, String> entry : tgh.fl.entrySet()) {
                    String key = entry.getKey();
                    if (!TextUtils.isEmpty(key)) {
                        String value = entry.getValue();
                        if (value == null) {
                            value = "";
                        }
                        qhi.cJ(key, value);
                    }
                }
            }
            hpZ Qhi = this.Qhi.Qhi(qhi.cJ(tgh.cJ).Qhi().Qhi("videoPreloadLowVersion").Qhi(6).cJ()).Qhi();
            new Object[]{"response code = ", Integer.valueOf(Qhi.ac())};
            return new ROR(Qhi, tgh);
        } catch (Throwable unused) {
            return null;
        }
    }
}
