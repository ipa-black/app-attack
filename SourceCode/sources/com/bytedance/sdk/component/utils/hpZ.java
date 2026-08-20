package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.text.TextUtils;
/* compiled from: NetworkUtils.java */
/* loaded from: classes2.dex */
public class hpZ {
    public static boolean Qhi(Context context) {
        return ac(context) != 0;
    }

    public static int cJ(Context context) {
        int ac = ac(context);
        if (ac != 1) {
            if (ac != 4) {
                if (ac != 5) {
                    if (ac != 6) {
                        return ac;
                    }
                    return 6;
                }
                return 4;
            }
            return 1;
        }
        return 0;
    }

    public static int ac(Context context) {
        return bxS.Qhi(context, 60000L);
    }

    public static boolean CJ(Context context) {
        return ac(context) == 4;
    }

    public static boolean fl(Context context) {
        return ac(context) == 5;
    }

    public static boolean Tgh(Context context) {
        return ac(context) == 6;
    }

    public static String ROR(Context context) {
        int ac = ac(context);
        if (ac != 2) {
            if (ac != 3) {
                if (ac != 4) {
                    if (ac != 5) {
                        if (ac == 6) {
                            return "5g";
                        }
                        return "mobile";
                    }
                    return "4g";
                }
                return "wifi";
            }
            return "3g";
        }
        return "2g";
    }

    public static boolean Qhi(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("http://") || str.startsWith("https://");
    }

    public static boolean Sf(Context context) {
        if (context == null) {
            return false;
        }
        int ac = ac(context);
        return ac == 2 || ac == 3 || ac == 4 || ac == 5 || ac == 6;
    }
}
