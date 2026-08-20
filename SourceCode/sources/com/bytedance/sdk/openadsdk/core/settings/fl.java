package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.utils.js;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
/* compiled from: AppSetIdAndScope.java */
/* loaded from: classes2.dex */
public class fl {
    private static int CJ = 0;
    private static volatile String Qhi = "";
    private static String ac = null;
    private static volatile String cJ = "";

    public static void Qhi() {
        try {
            AppSet.getClient(com.bytedance.sdk.openadsdk.core.HzH.Qhi()).getAppSetIdInfo().addOnSuccessListener(new OnSuccessListener<AppSetIdInfo>() { // from class: com.bytedance.sdk.openadsdk.core.settings.AppSetIdAndScope$1
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public void onSuccess(AppSetIdInfo appSetIdInfo) {
                    String unused = fl.Qhi = Integer.toString(appSetIdInfo.getScope());
                    String unused2 = fl.cJ = appSetIdInfo.getId();
                    int unused3 = fl.CJ = 1;
                }
            });
        } catch (Throwable unused) {
            CJ = 2;
        }
    }

    public static String cJ() {
        if (CJ != 0) {
            return Qhi;
        }
        Qhi();
        return Qhi;
    }

    public static String ac() {
        if (CJ != 0) {
            return cJ;
        }
        Qhi();
        return cJ;
    }

    public static String CJ() {
        if (TextUtils.isEmpty(ac)) {
            ac = com.bytedance.sdk.openadsdk.core.HzH.Qhi().getPackageManager().getInstallerPackageName(js.fl());
        }
        if (ac == null) {
            ac = "";
        }
        return ac;
    }
}
