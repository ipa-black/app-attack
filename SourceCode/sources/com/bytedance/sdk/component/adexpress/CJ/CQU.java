package com.bytedance.sdk.component.adexpress.CJ;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi;
import java.lang.reflect.Method;
import java.util.Locale;
/* compiled from: ScreenUtils.java */
/* loaded from: classes2.dex */
public class CQU {
    private static boolean Qhi;

    public static int Qhi(float f2, float f3, float f4, float f5) {
        return (((int) ((f2 * 255.0f) + 0.5f)) << 24) | (((int) ((f3 * 255.0f) + 0.5f)) << 16) | (((int) ((f4 * 255.0f) + 0.5f)) << 8) | ((int) ((f5 * 255.0f) + 0.5f));
    }

    public static float Qhi(Context context, float f2) {
        if (context == null) {
            context = Qhi.Qhi().ac().cJ();
        }
        return (f2 * CJ(context)) + 0.5f;
    }

    public static int cJ(Context context, float f2) {
        if (context == null) {
            context = Qhi.Qhi().ac().cJ();
        }
        float CJ = CJ(context);
        if (CJ <= 0.0f) {
            CJ = 1.0f;
        }
        return (int) ((f2 / CJ) + 0.5f);
    }

    public static float ac(Context context, float f2) {
        if (context == null) {
            context = Qhi.Qhi().ac().cJ();
        }
        return f2 * CJ(context);
    }

    private static float CJ(Context context) {
        try {
            if (Qhi) {
                Class<?> loadClass = context.getClassLoader().loadClass("android.util.DisplayMetrics");
                Method declaredMethod = loadClass.getDeclaredMethod("getDeviceDensity", new Class[0]);
                declaredMethod.setAccessible(true);
                return ((Integer) declaredMethod.invoke(loadClass, new Object[0])).intValue() / 160.0f;
            }
        } catch (Exception unused) {
        }
        return context.getResources().getDisplayMetrics().density;
    }

    public static int Qhi(Context context) {
        if (context == null) {
            context = Qhi.Qhi().ac().cJ();
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int cJ(Context context) {
        if (context == null) {
            context = Qhi.Qhi().ac().cJ();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static String ac(Context context) {
        String str;
        try {
            Locale locale = com.bytedance.sdk.component.utils.MQ.cJ(context).getConfiguration().getLocales().get(0);
            str = locale.getLanguage();
            try {
                if (locale.getCountry().equals("TW")) {
                    str = "zhHant";
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            str = "";
        }
        return Qhi(str);
    }

    private static String Qhi(String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case 3121:
                if (str.equals("ar")) {
                    c2 = 0;
                    break;
                }
                break;
            case 3383:
                if (str.equals("ja")) {
                    c2 = 1;
                    break;
                }
                break;
            case 3428:
                if (str.equals("ko")) {
                    c2 = 2;
                    break;
                }
                break;
            case 3494:
                if (str.equals("ms")) {
                    c2 = 3;
                    break;
                }
                break;
            case 3886:
                if (str.equals("zh")) {
                    c2 = 4;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return "aa";
            case 1:
                return "japan";
            case 2:
                return "korea";
            case 3:
                return "my";
            case 4:
                return "cn";
            default:
                return str;
        }
    }
}
