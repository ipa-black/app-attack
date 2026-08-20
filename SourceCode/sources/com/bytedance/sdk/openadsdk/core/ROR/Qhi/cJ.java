package com.bytedance.sdk.openadsdk.core.ROR.Qhi;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.ROR.cJ.ac;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.util.List;
import org.json.JSONObject;
/* compiled from: VastXmlParser.java */
/* loaded from: classes2.dex */
public abstract class cJ {
    protected double CJ;
    public int Qhi;
    public Qhi Tgh;
    protected int ac;
    protected final Context cJ;
    public int fl;

    /* compiled from: VastXmlParser.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        public int Qhi;
        public boolean ac;
        public int cJ;
    }

    public abstract com.bytedance.sdk.openadsdk.core.ROR.Qhi Qhi(String str, List<ac> list);

    public cJ(Context context, int i, int i2) {
        this.ac = 0;
        this.CJ = 0.0d;
        if (i2 > 0 && i > 0) {
            this.CJ = i / i2;
        }
        float fl = zn.fl(context);
        if (fl != 0.0f && i > 0) {
            this.ac = (int) (i / fl);
        }
        this.cJ = context.getApplicationContext();
    }

    protected void Qhi(Exception exc, int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("exception", exc.getMessage());
            jSONObject.put("error_code", i);
            com.bytedance.sdk.openadsdk.Gm.ac.Qhi().Qhi("load_vast", jSONObject);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean Qhi(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            return Integer.parseInt(str) < 2;
        } catch (NumberFormatException unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String cJ(String str, List<ac> list) {
        String str2;
        com.bytedance.sdk.component.ROR.cJ Qhi2;
        int i = this.Qhi;
        if (i >= 5) {
            return null;
        }
        this.Qhi = i + 1;
        if (str == null) {
            return null;
        }
        try {
            com.bytedance.sdk.component.ROR.cJ.cJ ac = com.bytedance.sdk.openadsdk.iMK.ac.Qhi().cJ().ac();
            ac.cJ(str);
            Qhi2 = ac.Qhi();
            str2 = Qhi2.CJ();
        } catch (Exception e2) {
            e = e2;
            str2 = null;
        }
        try {
            Qhi2.Qhi();
        } catch (Exception e3) {
            e = e3;
            Qhi(e, 0);
            if (!list.isEmpty()) {
                ac.cJ(list, com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi.WRAPPER_TIMEOUT, -1L, null);
            }
            return str2;
        }
        return str2;
    }
}
