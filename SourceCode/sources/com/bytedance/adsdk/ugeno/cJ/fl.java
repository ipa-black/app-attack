package com.bytedance.adsdk.ugeno.cJ;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
/* compiled from: ResourceHelp.java */
/* loaded from: classes2.dex */
public final class fl {
    private static String Qhi;
    private static Context ac;
    private static Resources cJ;

    public static void Qhi(String str) {
        Qhi = str;
    }

    private static String Qhi(Context context) {
        if (Qhi == null) {
            Qhi = context.getPackageName();
        }
        return Qhi;
    }

    private static int Qhi(Context context, String str, String str2) {
        if (cJ == null) {
            cJ = context.getResources();
        }
        return cJ.getIdentifier(str, str2, Qhi(context));
    }

    public static Drawable Qhi(Context context, String str) {
        return context.getResources().getDrawable(cJ(context, str));
    }

    public static int cJ(Context context, String str) {
        return Qhi(context, str, "drawable");
    }
}
