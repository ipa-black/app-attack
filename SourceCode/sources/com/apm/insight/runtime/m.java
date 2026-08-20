package com.apm.insight.runtime;

import com.apm.insight.MonitorCrash;
/* loaded from: classes.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private static MonitorCrash f1129a = null;

    /* renamed from: b  reason: collision with root package name */
    private static int f1130b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static int f1131c;

    public static MonitorCrash a() {
        if (f1129a == null) {
            MonitorCrash initSDK = MonitorCrash.initSDK(com.apm.insight.i.g(), "239017", 1030842L, "1.3.8.nourl-alpha.22", "com.apm.insight");
            f1129a = initSDK;
            initSDK.config().setChannel("release");
        }
        return f1129a;
    }

    public static void a(Throwable th, String str) {
        if (com.apm.insight.i.g() != null && b()) {
            a().reportCustomErr(str, "INNER", th);
        }
    }

    private static boolean b() {
        if (f1130b == -1) {
            f1130b = 5;
        }
        int i = f1131c;
        if (i < f1130b) {
            f1131c = i + 1;
            return true;
        }
        return false;
    }
}
