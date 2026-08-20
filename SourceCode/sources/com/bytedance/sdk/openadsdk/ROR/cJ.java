package com.bytedance.sdk.openadsdk.ROR;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.component.fl.HzH;
import com.bytedance.sdk.component.fl.zc;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.js;
import org.json.JSONObject;
/* compiled from: ImageLoaderLogListenerWrapper.java */
/* loaded from: classes2.dex */
public class cJ<T> implements HzH<T> {
    private final tP CJ;
    private final long Qhi = SystemClock.elapsedRealtime();
    private final HzH<T> ac;
    private final String cJ;

    public cJ(tP tPVar, String str, HzH<T> hzH) {
        this.ac = hzH;
        this.CJ = tPVar;
        this.cJ = str;
    }

    @Override // com.bytedance.sdk.component.fl.HzH
    public void Qhi(zc<T> zcVar) {
        HzH<T> hzH = this.ac;
        if (hzH != null) {
            hzH.Qhi(zcVar);
        }
        if (this.CJ != null) {
            final long elapsedRealtime = SystemClock.elapsedRealtime() - this.Qhi;
            final int ROR = zcVar.ROR() / 1024;
            final int i = zcVar.Tgh() ? 1 : 0;
            com.bytedance.sdk.openadsdk.Gm.ac.Qhi("load_image_success", false, new com.bytedance.sdk.openadsdk.Gm.cJ() { // from class: com.bytedance.sdk.openadsdk.ROR.cJ.1
                @Override // com.bytedance.sdk.openadsdk.Gm.cJ
                public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("duration", elapsedRealtime);
                    jSONObject.put("url", cJ.this.cJ);
                    jSONObject.put("preload_size", ROR);
                    jSONObject.put("local_cache", i);
                    jSONObject.put("image_mode", cJ.this.CJ.gga());
                    return com.bytedance.sdk.openadsdk.Gm.Qhi.fl.cJ().Qhi("load_image_success").Qhi(cJ.this.CJ.eN()).cJ(jSONObject.toString());
                }
            });
        }
    }

    @Override // com.bytedance.sdk.component.fl.HzH
    public void Qhi(final int i, final String str, Throwable th) {
        HzH<T> hzH = this.ac;
        if (hzH != null) {
            hzH.Qhi(i, str, th);
        }
        tP tPVar = this.CJ;
        if (tPVar == null || TextUtils.isEmpty(js.Qhi(tPVar))) {
            return;
        }
        final long elapsedRealtime = SystemClock.elapsedRealtime() - this.Qhi;
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi("load_image_error", false, new com.bytedance.sdk.openadsdk.Gm.cJ() { // from class: com.bytedance.sdk.openadsdk.ROR.cJ.2
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("duration", elapsedRealtime);
                jSONObject.put("url", cJ.this.cJ);
                jSONObject.put("error_code", i);
                jSONObject.put("error_message", str);
                jSONObject.put("image_mode", cJ.this.CJ.gga());
                return com.bytedance.sdk.openadsdk.Gm.Qhi.fl.cJ().Qhi("load_image_error").Qhi(cJ.this.CJ.eN()).cJ(jSONObject.toString());
            }
        });
    }
}
