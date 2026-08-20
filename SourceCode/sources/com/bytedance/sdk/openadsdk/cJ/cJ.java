package com.bytedance.sdk.openadsdk.cJ;

import com.appodeal.ads.modules.common.internal.Constants;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
/* compiled from: AdEventConstants.java */
/* loaded from: classes2.dex */
public class cJ {
    public static final Set<String> Qhi = new HashSet(Arrays.asList(Constants.CLICK, Constants.SHOW, "insight_log"));

    /* compiled from: AdEventConstants.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        public static String Qhi = "openDetailPage";
        public static String ac = "direct";
        public static String cJ = "openAdLandPageLinks";
    }

    /* compiled from: AdEventConstants.java */
    /* renamed from: com.bytedance.sdk.openadsdk.cJ.cJ$cJ  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0214cJ {
        public static int Qhi = 1;
        public static int ac = 100;
        public static int cJ = 2;
    }

    public static boolean Qhi(String str) {
        return "embeded_ad".equals(str) || "banner_ad".equals(str) || "interaction".equals(str) || "slide_banner_ad".equals(str);
    }
}
