package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import java.util.Locale;
/* compiled from: IdUtils.java */
/* loaded from: classes2.dex */
public class zc {
    private static String CJ;
    private static String Qhi;
    private static String ac;
    private static String cJ;
    private static boolean fl;

    private static Context CJ(Context context) {
        return context == null ? HzH.Qhi() : context;
    }

    public static String Qhi(Context context) {
        if (!TextUtils.isEmpty(Qhi)) {
            return Qhi;
        }
        Tgh(context);
        return Qhi;
    }

    public static String cJ(Context context) {
        if (ac == null && !fl) {
            synchronized (zc.class) {
                if (!fl) {
                    fl(context);
                }
            }
        }
        return ac;
    }

    public static String ac(Context context) {
        if (TextUtils.isEmpty(CJ) && !fl) {
            synchronized (zc.class) {
                if (!fl) {
                    fl(context);
                }
            }
        }
        return CJ;
    }

    public static void Qhi(Context context, String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(Qhi)) {
            ac.Qhi(context).Qhi("did", str);
            Qhi = str;
        }
        if (TextUtils.isEmpty(Qhi)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.fl.ac.cJ(Qhi);
        Gm.Qhi(Qhi);
    }

    private static void fl(Context context) {
        Context CJ2;
        if (fl || (CJ2 = CJ(context)) == null) {
            return;
        }
        cJ = cJ();
        ac = String.valueOf(Build.TIME);
        CJ = ac.Qhi(CJ2).cJ(Constants.UUID, (String) null);
        fl = true;
    }

    private static void Tgh(Context context) {
        Context CJ2 = CJ(context);
        if (CJ2 == null) {
            return;
        }
        Qhi = ac.Qhi(CJ2).cJ("did", (String) null);
    }

    private static String cJ() {
        StringBuilder sb = new StringBuilder();
        try {
            if (com.bytedance.sdk.openadsdk.utils.CQU.fl()) {
                sb.append("MIUI-");
            } else if (com.bytedance.sdk.openadsdk.utils.CQU.cJ()) {
                sb.append("FLYME-");
            } else {
                String iMK = com.bytedance.sdk.openadsdk.utils.CQU.iMK();
                if (com.bytedance.sdk.openadsdk.utils.CQU.Qhi(iMK)) {
                    sb.append("EMUI-");
                }
                if (!TextUtils.isEmpty(iMK)) {
                    sb.append(iMK).append("-");
                }
            }
            sb.append(Build.VERSION.INCREMENTAL);
        } catch (Exception unused) {
        }
        return sb.toString();
    }

    public static String Qhi() {
        try {
            Locale locale = LocaleList.getDefault().get(0);
            String language = locale != null ? locale.getLanguage() : "";
            if (locale == null || !"zh".equals(language)) {
                return language;
            }
            String locale2 = locale.toString();
            if (locale.toString().length() >= 5) {
                locale2 = locale2.substring(0, 5);
            }
            if (Locale.SIMPLIFIED_CHINESE.toString().equals(locale2)) {
                return "zh";
            }
            return "zh-Hant";
        } catch (Throwable unused) {
            return "";
        }
    }
}
