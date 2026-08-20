package com.bykv.vk.openvk.component.video.api;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.cJ.Qhi.zc;
import java.io.File;
import java.util.concurrent.TimeUnit;
/* compiled from: VideoConfig.java */
/* loaded from: classes2.dex */
public class ac {
    private static boolean CJ = false;
    public static boolean Qhi = false;
    private static int Tgh = 1;
    private static String ac;
    private static Context cJ;
    private static zc fl;

    public static Context Qhi() {
        return cJ;
    }

    public static String cJ() {
        if (TextUtils.isEmpty(ac)) {
            try {
                File file = new File(Qhi().getFilesDir(), "ttad_dir");
                if (!file.exists()) {
                    file.mkdirs();
                }
                ac = file.getAbsolutePath();
            } catch (Throwable unused) {
            }
        }
        return ac;
    }

    public static void Qhi(Context context, String str) {
        cJ = context;
        ac = str;
    }

    public static boolean ac() {
        return CJ;
    }

    public static void Qhi(boolean z) {
        CJ = z;
    }

    public static zc CJ() {
        if (fl == null) {
            fl = new zc.Qhi("v_config").Qhi(10000L, TimeUnit.MILLISECONDS).cJ(10000L, TimeUnit.MILLISECONDS).ac(10000L, TimeUnit.MILLISECONDS).Qhi();
        }
        return fl;
    }

    public static void Qhi(zc zcVar) {
        fl = zcVar;
    }

    public static boolean fl() {
        return Qhi;
    }

    public static void Qhi(int i) {
        Tgh = i;
    }

    public static int Tgh() {
        return Tgh;
    }
}
