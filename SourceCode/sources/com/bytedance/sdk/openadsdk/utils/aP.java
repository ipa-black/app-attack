package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import java.util.Map;
/* compiled from: TTClientBiddingUtil.java */
/* loaded from: classes2.dex */
public class aP {
    public static void Qhi(com.bytedance.sdk.openadsdk.core.model.tP tPVar, Double d2) {
        if (tPVar == null || tPVar.Gy() == null) {
            return;
        }
        Map<String, Object> Gy = tPVar.Gy();
        try {
            Object obj = tPVar.Gy().get("sdk_bidding_type");
            if (obj != null && Integer.parseInt(obj.toString()) == 2) {
                String str = (String) Gy.get("nurl");
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (d2 != null) {
                    str = str.replace("${AUCTION_BID_TO_WIN}", String.valueOf(d2));
                }
                com.bytedance.sdk.openadsdk.core.HzH.ac().Qhi(str);
            }
        } catch (Throwable unused) {
            com.bytedance.sdk.component.utils.ABk.cJ("report Win error");
        }
    }

    public static void Qhi(com.bytedance.sdk.openadsdk.core.model.tP tPVar, Double d2, String str, String str2) {
        if (tPVar == null || tPVar.Gy() == null) {
            return;
        }
        Map<String, Object> Gy = tPVar.Gy();
        try {
            Object obj = tPVar.Gy().get("sdk_bidding_type");
            if (obj != null && Integer.parseInt(obj.toString()) == 2) {
                String str3 = (String) Gy.get("lurl");
                if (TextUtils.isEmpty(str3)) {
                    return;
                }
                if (d2 != null) {
                    str3 = str3.replace("${AUCTION_PRICE}", String.valueOf(d2));
                }
                if (str != null) {
                    str3 = str3.replace("${AUCTION_LOSS}", str);
                }
                if (str2 != null) {
                    str3 = str3.replace("${AUCTION_WINNER}", str2);
                }
                com.bytedance.sdk.openadsdk.core.HzH.ac().Qhi(str3);
            }
        } catch (Throwable unused) {
            com.bytedance.sdk.component.utils.ABk.cJ("report Loss error");
        }
    }
}
