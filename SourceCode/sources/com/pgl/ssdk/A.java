package com.pgl.ssdk;

import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
/* compiled from: DisplayUnits.java */
/* loaded from: classes3.dex */
public class A {

    /* renamed from: a  reason: collision with root package name */
    public static int f12148a;

    /* renamed from: b  reason: collision with root package name */
    public static int f12149b;

    /* renamed from: c  reason: collision with root package name */
    public static int f12150c;

    private static void a(Context context) {
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            f12148a = point.x;
            f12149b = point.y;
        } catch (Throwable unused) {
        }
    }

    public static String b(Context context) {
        try {
            a(context);
            if (context != null) {
                try {
                    new DisplayMetrics();
                    DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                    float f2 = displayMetrics.density;
                    f12150c = displayMetrics.densityDpi;
                } catch (Throwable unused) {
                }
            }
            new DisplayMetrics();
            float f3 = context.getResources().getDisplayMetrics().xdpi;
        } catch (Throwable unused2) {
        }
        return f12150c + "[<!>]" + f12148a + "," + f12149b + "[<!>]";
    }
}
