package com.bykv.vk.openvk.component.video.Qhi;

import android.content.Context;
import com.bykv.vk.openvk.component.video.api.Qhi.cJ;
import org.json.JSONObject;
/* compiled from: MediaConfig.java */
/* loaded from: classes2.dex */
public class Qhi {
    public static int CJ = 10;
    public static int Qhi = 10;
    public static int ac = 10;
    public static int cJ = 10;
    private static cJ fl;

    public static void Qhi(Context context) {
        com.bykv.vk.openvk.component.video.api.Tgh.Qhi.Qhi(context);
    }

    public static void Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            Qhi = jSONObject.optInt("splash", 10);
            cJ = jSONObject.optInt("reward", 10);
            ac = jSONObject.optInt("brand", 10);
            int optInt = jSONObject.optInt("other", 10);
            CJ = optInt;
            if (Qhi < 0) {
                Qhi = 10;
            }
            if (cJ < 0) {
                cJ = 10;
            }
            if (ac < 0) {
                ac = 10;
            }
            if (optInt < 0) {
                CJ = 10;
            }
            new Object[]{"splash=", Integer.valueOf(Qhi), ",reward=", Integer.valueOf(cJ), ",brand=", Integer.valueOf(ac), ",other=", Integer.valueOf(CJ)};
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static void Qhi(cJ cJVar) {
        fl = cJVar;
    }

    public static void Qhi() {
        cJ cJVar = fl;
        if (cJVar != null) {
            cJVar.CJ();
        }
    }

    public static int cJ() {
        return Qhi;
    }

    public static int ac() {
        return cJ;
    }

    public static int CJ() {
        return ac;
    }

    public static int fl() {
        return CJ;
    }
}
