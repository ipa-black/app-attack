package com.pgl.ssdk;

import android.content.Context;
import java.lang.reflect.Method;
/* compiled from: DeviceUnits.java */
/* loaded from: classes3.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private static double f12273a = -1.0d;

    public static String a(Context context) {
        double d2 = f12273a;
        double d3 = 0.0d;
        if (d2 >= 0.0d) {
            return Integer.toString((int) d2);
        }
        try {
            Class<?> cls = Class.forName("com.android.internal.os.PowerProfile");
            Object newInstance = cls.getConstructor(Context.class).newInstance(context);
            Method declaredMethod = cls.getDeclaredMethod("getAveragePower", String.class);
            declaredMethod.setAccessible(true);
            d3 = ((Double) declaredMethod.invoke(newInstance, "battery.capacity")).doubleValue();
        } catch (Throwable unused) {
        }
        f12273a = d3;
        return Integer.toString((int) d3);
    }
}
