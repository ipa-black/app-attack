package com.apm.insight.c;

import com.apm.insight.i;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static AtomicBoolean f795a = new AtomicBoolean(false);

    public static boolean a() {
        synchronized (f795a) {
            if (f795a.get()) {
                return false;
            }
            f795a.set(true);
            return b();
        }
    }

    public static boolean b() {
        if (com.apm.insight.runtime.a.h()) {
            try {
                File file = new File(i.h().getFilesDir(), "apminsight/crashCommand");
                file.mkdirs();
                new File(file, "0_" + System.currentTimeMillis()).createNewFile();
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }
        return false;
    }
}
