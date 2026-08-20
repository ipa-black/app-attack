package com.yandex.metrica.impl.ob;

import java.io.File;
/* loaded from: classes5.dex */
public final class X1 {

    /* renamed from: a  reason: collision with root package name */
    private static final B0 f14216a = new B0();

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f14217b = {"/sbin/", "/system/bin/", "/system/xbin/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/"};

    public static int a() {
        return (b() || c()) ? 1 : 0;
    }

    public static boolean b() {
        File file;
        try {
            if (A2.a(21)) {
                file = new File("/system/app/Superuser/Superuser.apk");
            } else {
                file = new File("/system/app/Superuser.apk");
            }
            return file.exists();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean c() {
        String[] strArr;
        int length = f14217b.length;
        for (int i = 0; i < length; i++) {
            if (!A2.a(31) ? new File(strArr[i] + "su").exists() : false) {
                return true;
            }
        }
        return false;
    }
}
