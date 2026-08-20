package com.bytedance.sdk.openadsdk.multipro;

import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.multipro.aidl.BinderPoolService;
/* compiled from: MultiGlobalInfo.java */
/* loaded from: classes2.dex */
public class cJ {
    public static Boolean Qhi;

    public static void Qhi() {
        Qhi = Boolean.TRUE;
        com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("sp_multi_info", "is_support_multi_process", Boolean.TRUE);
    }

    public static void cJ() {
        Qhi = Boolean.FALSE;
        BinderPoolService.Qhi = true;
    }

    public static boolean ac() {
        Boolean bool = Qhi;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (iMK.fl()) {
            if (Qhi == null) {
                Qhi = Boolean.valueOf(com.bytedance.sdk.openadsdk.multipro.CJ.cJ.Qhi("sp_multi_info", "is_support_multi_process", false));
            }
            return Qhi.booleanValue();
        }
        return false;
    }
}
