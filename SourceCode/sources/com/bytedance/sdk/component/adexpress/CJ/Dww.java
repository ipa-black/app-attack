package com.bytedance.sdk.component.adexpress.CJ;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.fl;
/* compiled from: RitScreenUtils.java */
/* loaded from: classes2.dex */
public class Dww {
    public static boolean Qhi(String str) {
        return TextUtils.equals(str, "fullscreen_interstitial_ad") || TextUtils.equals(str, "rewarded_video");
    }

    public static boolean cJ(String str) {
        return fl.cJ() && Qhi(str);
    }
}
