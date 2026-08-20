package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
/* compiled from: AutoTestUtils.java */
/* loaded from: classes2.dex */
public class fl {
    public static String Qhi(String str) {
        if (com.bytedance.sdk.component.utils.ABk.CJ() && !TextUtils.isEmpty(str)) {
            com.bytedance.sdk.openadsdk.core.model.Sf sf = new com.bytedance.sdk.openadsdk.core.model.Sf(com.bytedance.sdk.openadsdk.core.hm.cJ().ABk());
            StringBuilder sb = new StringBuilder(str);
            for (String str2 : sf.cJ()) {
                if (sb.toString().contains(str2)) {
                    if (sb.toString().contains("?")) {
                        sb.append("&").append(sf.Qhi());
                    } else {
                        sb.append("?").append(sf.Qhi());
                    }
                }
            }
            return sb.toString();
        }
        return str;
    }
}
