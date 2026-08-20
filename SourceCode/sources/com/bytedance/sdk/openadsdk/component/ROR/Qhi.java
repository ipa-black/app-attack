package com.bytedance.sdk.openadsdk.component.ROR;

import android.content.Context;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.component.ROR;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.hm;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.multipro.cJ;
import com.bytedance.sdk.openadsdk.utils.Gm;
import java.io.File;
import org.json.JSONObject;
/* compiled from: TTAppOpenUtils.java */
/* loaded from: classes2.dex */
public class Qhi {
    public static File Qhi(String str) {
        return new File(CacheDirFactory.getICacheDir(0).cJ() + File.separator + str);
    }

    public static String Qhi() {
        return Gm.Qhi();
    }

    public static File cJ(String str) {
        return Qhi(HzH.Qhi(), ROR.Qhi(HzH.Qhi()).cJ(), str);
    }

    public static File Qhi(Context context, String str, String str2) {
        return com.bytedance.sdk.component.utils.ROR.Qhi(context, cJ.ac(), str, str2);
    }

    public static void Qhi(File file) {
        if (file == null) {
            return;
        }
        try {
            com.bytedance.sdk.component.utils.ROR.cJ(file);
        } catch (Throwable unused) {
        }
    }

    public static void Qhi(Context context) {
        try {
            ROR.Qhi(context).Qhi();
        } catch (Throwable unused) {
        }
    }

    public static String cJ() {
        return com.bytedance.sdk.component.utils.ROR.Qhi(HzH.Qhi(), cJ.ac(), ROR.Qhi(HzH.Qhi()).cJ()).getAbsolutePath();
    }

    public static void Qhi(JSONObject jSONObject, int i) {
        try {
            String Tgh = hm.cJ().Tgh();
            int ROR = hm.cJ().ROR();
            JSONObject jSONObject2 = jSONObject.getJSONObject("creative");
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("app_name", Tgh);
            jSONObject3.put("app_icon_id", "@".concat(String.valueOf(ROR)));
            jSONObject2.put("open_app_info", jSONObject3);
            if (jSONObject2.optJSONObject("video") == null) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("video_duration", HzH.CJ().bxS(String.valueOf(i)));
                jSONObject2.put("video", jSONObject4);
            }
        } catch (Exception e2) {
            ABk.Qhi("TTAppOpenUtils", e2.getMessage());
        }
    }

    public static int Qhi(tP tPVar, int i) {
        return i - tPVar.SNp();
    }
}
